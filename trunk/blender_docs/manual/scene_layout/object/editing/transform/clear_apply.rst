
*************
Clear & Apply
*************

.. _bpy.ops.object.*clear:

Clear
=====

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode
   :Menu:      :menuselection:`Object --> Clear --> Clear Location / Clear Scale / Clear Rotation / Clear Origin`
   :Hotkey:    :kbd:`Alt-G`, :kbd:`Alt-S`, :kbd:`Alt-R`

Clearing transforms simply resets the transform values.
The objects location and rotation values return to 0, and the scale returns to 1.

Clear Location :kbd:`Alt-G`
   Clear (reset) the location of the selection.
   This will move the selection back to the coordinates (0, 0, 0).
Clear Scale :kbd:`Alt-S`
   Clear (reset) the scale of the selection.
   This will resize the selection back to the size it was when created.
Clear Rotation :kbd:`Alt-R`
   Clear (reset) the rotation of the selection.
   This will set the rotation of the selection to 0 degrees in each plane.
Clear Origin
   Clears (resets) the offset of the child objects origin.
   This will cause child objects to move to the origin of the parent.


Options
-------

Clear Delta
   Clear the :ref:`delta transform <transform-delta>` in addition to clearing the primary transforms.
   (Appears in the :ref:`ui-undo-redo-adjust-last-operation` panel.)


Apply
=====

These operations lets you apply several transformations to the selected objects.
The object transformation coordinates are transferred to the object data.
If the objects have hierarchical descendants, it also applies those transformations to their children.


.. _bpy.ops.object.transform_apply:

Apply Object Transformations
----------------------------

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode
   :Menu:      :menuselection:`Object --> Apply --> Location / Rotation / Scale / Rotation & Scale`
   :Hotkey:    :kbd:`Ctrl-A`

Applying transform values essentially resets the values of object's location, rotation or scale,
while visually keeping the object data in-place.
The object origin point is moved to the global origin, the rotation is cleared and scale values are set to 1.

For simple cases you won't notice any difference the 3D View or rendered output,
however modifiers and constraints may depend on object transformation.

.. warning:: Armature Objects

   While applying transformations to armatures is supported,
   this does **not** apply to their pose location, animation curves or constraints.
   This tool should be used before rigging and animation.

When running *Apply Transform*, the :ref:`ui-undo-redo-adjust-last-operation` panel lets you choose
the combination of transformations to apply.


Options
^^^^^^^

Location
   Apply (set) the location of the selection.
   This will make Blender consider the current location to be equivalent to 0 in each plane
   i.e. the selection will not move, the current location will be considered to be the "default location".
   The Object origin will be set to actual (0, 0, 0) (where the colored axis lines intersect in each view).
Rotation
   Apply (set) the rotation of the selection.
   This will make Blender consider the current rotation to be equivalent to 0 degrees in each plane
   i.e. the selection will not rotated, the current rotation will be considered to be the "default rotation".
Scale
   Apply (set) the scale of the selection.
   This will make Blender consider the current scale to be equivalent to 0 in each plane
   i.e. the selection will not scaled, the current scale will be considered to be the "default scale".
Rotation and Scale
   Apply (set) the rotation and scale of the selection. Do the above two applications simultaneously.
Apply Properties
   Modify properties such as curve vertex radius, font size and bone envelope
   according to the applied transformation.


.. _bpy.ops.object.transforms_to_deltas:
.. _bpy.ops.object.anim_transforms_to_deltas:

Transforms to Deltas
--------------------

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode
   :Menu:      :menuselection:`Object --> Apply -->`

Converts primary object transformations to :ref:`delta transforms <transform-delta>`,
any existing delta transforms will be included as well.

- Location to Deltas
- Rotation to Deltas
- Scale to Deltas

All Transforms to Deltas
   Converts all primary transformations to delta transforms.
Animated Transform to Deltas
   Converts the primary transformation animations
   (animations done to the translation, scale, and, rotation values) to delta transforms.


Options
^^^^^^^

Reset Values
   Clear primary transform values after transferring to deltas.


.. _bpy.ops.object.visual_transform_apply:

Visual Transform
----------------

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode
   :Menu:      :menuselection:`Object --> Apply --> Visual Transform`
   :Hotkey:    :kbd:`Ctrl-A`

Apply (set) the result of a constraint and apply this back to the Object's location, rotation and scale.


Visual Geometry as Mesh
-----------------------

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode
   :Menu:      :menuselection:`Object --> Apply --> Visual Geometry to Mesh`
   :Hotkey:    :kbd:`Ctrl-A`

Apply the visual state of all selected objects (modifiers, shape keys, hooks, etc.) to object data.
This is a way to freeze all object data into static meshes, as well as converts non-mesh types to mesh.

For details, see the :ref:`object-convert-to` mesh.


.. _bpy.ops.object.duplicates_make_real:

Make Instances Real
-------------------

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode
   :Menu:      :menuselection:`Object --> Apply --> Make Instances Real`
   :Hotkey:    :kbd:`Shift-Ctrl-A`

*Make Instances Real* creates a new object for each
:doc:`instance </scene_layout/object/properties/instancing/index>` generated by the selected ones,
and removes any direct instancing from those.

In the end, each instance becomes a real object.

.. warning::

   This applies to both direct (from verts or faces...) and indirect (from particle system...) instancing.
   In case you have tens of thousands of instances (from particles for example),
   this can significantly slow down Blender, which does not always deal well with that many objects in a scene.


Options
^^^^^^^

By default, new objects will be added to the same collection as the one containing their instancer,
without keeping any hierarchy relationships. This behavior can be altered with the following options.

Parent
   If *Keep Hierarchy* is not set, parents all the generated objects to the former instancer.

   Otherwise, parents all the generated objects *which are not already parented* to their respective instancer,
   or its matching new copy (this is important in case of recursive instancing, see the note below).

Keep Hierarchy
   Preserves internal hierarchies (i.e. parent relationships) in the newly generated objects.

.. tip::

   Usually, to get a new hierarchy as close as possible from the instancing one,
   you'll want to enable both of these options.

.. note::

   Preserving relationships in recursive instancing cases (instancers instancing other instancer objects, etc.)
   is only supported to some extent currently.

   Simple cases (like an empty instancing a collection containing instances of some other collections)
   will usually work, but more complex cases will fail to fully reproduce the whole instancing hierarchy.
