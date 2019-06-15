
*******
Normals
*******

Introduction
============

In geometry, a normal is a direction or line that is perpendicular to something,
typically a triangle or surface but can also be relative to a line, a tangent line for a point on a curve,
or a tangent plane for a point on a surface.

.. figure:: /images/modeling_meshes_editing_normals_viewport.png
   :width: 350px

   A visualization of the face normals of a torus.

In the figure above, each blue line represents the normal for a face on the torus.
The lines are each perpendicular to the face on which they lie.
The visualization can be activated, in Edit Mode,
in the :ref:`Mesh Display Viewport Overlays panel <mesh-display-normals>`.


.. _modeling-meshes-editing-normals-shading:

Shading
=======

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode
   :Menu:      :menuselection:`Object --> Shade Smooth / Shade Flat`

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Shading`
   :Menu:      :menuselection:`Face --> Shade Smooth / Shade Flat`


.. _bpy.ops.object.shade_flat:

Flat
----

.. list-table:: Example mesh flat (left) and smooth-shaded (right).
   `Sample blend-file <https://wiki.blender.org/wiki/File:25-manual-meshsmooth-example.blend>`__.

   * - .. figure:: /images/modeling_meshes_editing_normals_example-flat.png
          :width: 200px

     - .. figure:: /images/modeling_meshes_editing_normals_example-smooth.png
          :width: 200px

As seen in the previous sections, polygons are central to Blender.
Most objects are represented by polygons and truly curved objects
are often approximated by polygon meshes. When rendering images,
you may notice that these polygons appear as a series of small, flat faces.
Sometimes this is a desirable effect, but usually we want our objects to look nice and smooth.


.. _bpy.ops.object.shade_smooth:

Smooth
------

The easiest way is to set an entire object as smooth or faceted by selecting a mesh object,
and in *Object Mode*, select *Shade Smooth* in the *Object* menu.
This forces the assignment of the "smoothing" attribute to each face in the mesh,
including when you add or delete geometry.

Notice that the outline of the object is still strongly faceted.
Activating the smoothing features does not actually modify the object's geometry;
it changes the way the shading is calculated across the surfaces (normals will be interpolated),
giving the illusion of a smooth surface.

Select the *Shade Flat* item in the *Object* menu
to revert the shading back (normals will be constant)
to that shown in the first image above.


Smoothing Parts of a Mesh
^^^^^^^^^^^^^^^^^^^^^^^^^

Alternatively, you can choose which faces to smooth by entering *Edit Mode*,
then selecting some faces and picking *Shade Smooth* from the *Face Menu*.

When the mesh is in *Edit Mode*,
only the selected faces will receive the "smoothing" attribute. You can set faces as flat
(removing the "smoothing" attribute)
in the same way by selecting edges and picking the *Shade Flat* from the *Face Menu*.

.. seealso::

   The :ref:`Auto Smooth <auto-smooth>` option is a quick and easy way to combine smooth and
   faceted faces in the same object.


.. _modeling_meshes_editing_normals_properties:

Properties
==========

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Properties editor --> Object Data --> Normals`

.. TODO .. figure:: /images/modeling_meshes_properties_object-data_normals-panel.png

.. TODO  Normals panel.

.. _auto-smooth:

Auto Smooth
   Edges where an angle between the faces is smaller than specified in the *Angle* button will be smoothed,
   when shading of these parts of the mesh is set to smooth. This is an easier way to combine smooth and sharp edges.

   Angle
      Angle number button.


Example
-------

.. figure:: /images/modeling_meshes_properties_object-data_example-auto-smooth.png
   :width: 250px

   Example mesh with *Auto Smooth* enabled.

.. seealso:: Edge Split Modifier

   With the :doc:`Edge Split Modifier </modeling/modifiers/generate/edge_split>` a result
   similar to *Auto Smooth* can be achieved with the ability to choose which edges should be split,
   based on angle.


.. _modeling-meshes-editing-normals-editing:

Editing
=======

Flip Direction
--------------

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals --> Flip`

This will reverse the normals direction of all selected faces.
Note that this allows you to precisely control the direction
(**not** the orientation, which is always perpendicular to the face) of your normals,
as only selected ones are flipped.


Recalculate Normals
-------------------

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals --> Recalculate Outside` and
               :menuselection:`Mesh --> Normals --> Recalculate Inside`
   :Hotkey:    :kbd:`Ctrl-N` and :kbd:`Shift-Ctrl-N`

These tools will recalculate the normals of selected faces so that they point outside
(respectively inside) the volume that the face belongs to.
The volume does not need to be closed; inside and outside are determined by the angles with adjacent faces.
This means that the face of interest must be adjacent to at least one non-coplanar other face.
For example, with a *Grid* primitive, recalculating normals does not have a meaningful result.


.. _modeling_meshes_normals_custom:

Custom Split Normals
====================

*Custom Split Normals* is a way to tweak/fake shading by pointing them towards
other directions than default, auto-computed ones. It is mostly used in game development,
where it allows to counterbalance some issues generated by low-poly objects
(the most common examples are low-poly trees, bushes, grass, etc. and the 'rounded' corners).

Blender supports custom normals on a 'smooth fan' base, defined as a set of neighbor face corners
sharing the same vertex and 'linked' by smooth edges. This means you can have normals per face corners,
per a set of neighbor face corners, or per vertex.


Enabling Custom Split Normals Support
-------------------------------------

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:     :menuselection:`Mesh --> Normals: Split`

Enables Custom Split Normals.

..

Also, any of the custom normal editing tools (see below) will, as a convenience,
enable custom normals if they are not already enabled.

.. note::

   This has the side effect of enabling *Auto Smooth*, as that is necessary to use custom normals.
   Once you have custom normals, the angle threshold of the *Auto Smooth* behavior is disabled --
   all non-sharp-tagged edges will be considered as smooth, disregarding the angle between their faces.


Editing Custom Split Normals
----------------------------

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:     :menuselection:`Mesh --> Normals`
   :Hotkey:  :kbd:`Alt-N` for entire menu

There are a number of tools for editing custom split normals.
The custom normal mesh edit tools can affect all normals (the default), or only selected ones.
To select a custom normal associated with a particular vertex and face:

- Make the element selection mode both Vertex and Face (use :kbd:`Shift-LMB` to enable the second one).
- Select one or more vertices, then select a face.
  This can be repeated to select more vertices and a different face and so on.
  It is easiest to see the effect of these tools if you turn on
  the Edit Mode Overlays option *Display vertex-per-face normals as lines*.


Set From Faces
^^^^^^^^^^^^^^

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals: Set from Faces`

Set the custom normals at corners to be the same as the face normal that the corner is part of.


Rotate
^^^^^^

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals: Rotate`
   :Hotkey:    :kbd:`R N`

This is an interactive tool. As you move the mouse around, the selected normals are rotated.
You can also invoke the Rotate Normals tool by typing the Rotate transform key, :kbd:`R`
followed by :kbd:`N`.


Point to Target
^^^^^^^^^^^^^^^

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals: Point to Target`
   :Hotkey:    :kbd:`Alt-L`

All selected normals are set to point from their vertex to the target
after confirmed by :kbd:`Enter` or :kbd:`LMB`.

A target is set by the keys:

- The mouse cursor :kbd:`M`
- The pivot :kbd:`L`
- The object origin :kbd:`O`
- The cursor (set at this click) :kbd:`Ctrl-LMB`
- A mesh item selection (set by this click) :kbd:`Ctrl-RMB`.

Mode
   The tool operation can be modified; if one of the following keys has been previously pressed:

   Align :kbd:`A`
      Then all normals will point in the same direction: from the center of selected points to the target.
   Spherize :kbd:`S`
      Then each normal will be an interpolation between its original value and the direction to the target.
   Invert :kbd:`I`
      Then the normal directions are reversed from what was specified above.

Reset :kbd:`R`
   Will reset the custom normals back to what they were when the operation started.


Merge
^^^^^

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals: Merge`

Merge all of the normals at selected vertices, making one average normal for all of the faces.


Split
^^^^^

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals: Split`

Split the normals at all selected vertices so that there are separate normals for each face,
pointing in the same direction as those faces.


Average
^^^^^^^

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals: Average`

Average all of the normals in each fan of faces between sharp edges at a vertex.


Copy Vectors
^^^^^^^^^^^^

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals: Copy Vectors`

If a single normal is selected, copy it to an internal vector buffer.


Paste Vectors
^^^^^^^^^^^^^

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals: Paste Vectors`

Replace the selected normals with the one in the internal vector buffer.


Smoothen Vectors
^^^^^^^^^^^^^^^^

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals: Smoothen Vectors`

Adjust the normals to bring them closer to their adjacent vertex normals.


Reset Vectors
^^^^^^^^^^^^^

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      :menuselection:`Mesh --> Normals: Reset Vectors`

Put normals back the to default calculation of the normals.


.. seealso::

   The :doc:`/modeling/modifiers/modify/normal_edit` can be used to edit custom normals.

.. TODO put in ref to weighted normals modifier and bevel tool and modifier.

You can also copy normals from another mesh using Data Transfer
(:doc:`operator </modeling/meshes/editing/data_transfer>`
or :doc:`modifier </modeling/modifiers/modify/data_transfer>`).


Importing Custom Split Normals
------------------------------

Some tools, in particular :abbr:`CAD (Computer-Aided Design)` ones, tends to generate irregular geometry
when tessellating their objects into meshes (very thin and long triangles, etc.).
Auto-computed normals on such geometry often gives bad artifacts,
so it is important to be able to import and use the normals as generated by the CAD tool itself.

.. note::

   Currently, only the FBX importer is capable of importing custom normals.
