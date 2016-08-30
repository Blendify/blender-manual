
**********************
Armature visualization
**********************

We have four basic bone visualization: Octahedral, Stick, B-Bone, Envelope and Wire:

.. list-table::

   * - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-1.png
          :width: 320px

          Octahedral bone display.

     - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-2.png
          :width: 320px

          Stick bone display.

   * - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-3.png
          :width: 320px

          B-Bone bone display.

     - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-4.png
          :width: 320px

          Envelope bone display.


Display Panel
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object, Edit and Pose Mode
   | Panel:    :menuselection:`Object Data --> Display`


But let us first see some general visualization properties of armatures,
found in the *Display* panel of the *Object data* tab.

.. figure:: /images/riggingeditingobjectdatapropertycxtdisplaypanel.png

   The Display panel.


Bone Types
----------

Octahedral bone
   This is the default visualization, well suited for most of editing tasks. It materializes:

   - The bone root ("big" end) and tip ("small" end).
   - The bone "size" (its thickness is proportional to its length).
   - The bone roll (as it has a square section).

   .. figure:: /images/rigging_armatures_visualization_type-octahedral.png
      :width: 300px

      Note the 40° rolled Bone.001 bone.

Stick bone
   This is the simplest and most non-intrusive visualization.
   It just materializes bones by sticks of constant (and small) thickness,
   so it gives you no information about root and tip, nor bone size or roll angle.

   .. figure:: /images/rigging_armatures_visualization_type-stick.png
      :width: 300px

      Note that Bone.001 roll angle is not visible (except by its XZ axes).

B-Bone bone
   This visualization shows the curves of "smooth" multi-segmented bones;
   see the :ref:`bone page <armature-bone-rigid>` for details.

   .. figure:: /images/rigging_armatures_bones_introduction_b-bones-1.png
      :width: 300px

      An armature of B-Bones, in Edit Mode.

   .. figure:: /images/rigging_armatures_bones_introduction_b-bones-3.png
      :width: 300px

      The same armature in Object Mode.

Envelope bone
   This visualization materializes the bone deformation influence.
   More on this in the :ref:`bone page <armature-bone-influence>`.

   .. figure:: /images/rigging_armatures_bones_introduction_envelope-pose-mode.png
      :width: 300px

Wire bone
   This simplest visualization shows the curves of "smooth" multi-segmented bones.

   .. figure:: /images/rigging_armatures_visualization_type-wire-pose-mode.png
      :width: 300px

      An armature of Wire, in Pose Mode.

   .. figure:: /images/rigging_armatures_visualization_type-wire-edit-mode.png
      :width: 300px

      The same armature in Edit Mode.


Draw Options
------------

Names
   When enabled, the name of each bone is drawn.
Colors
   This is only relevant for *Pose Mode*, and is described in detail :doc:`there </rigging/posing/visualization>`.
Axes
   When enabled, the (local) axes of each bone are drawn (only relevant for *Edit Mode* and *Pose Mode*).
X-Ray
   When enabled, the bones of the armature will always be drawn on top of the solid objects
   (meshes, surfaces, ...) - i.e. they will always be visible and selectable
   (this is the same option as the one found in the *Display* panel of the *Object data* tab.
   Very useful when not in *Wireframe* mode.
Shapes
   When enabled, the default standard bone shape is replaced,
   in *Object Mode* and *Pose Mode*,
   by the shape of a chosen object (see `Shaped Bones`_ for details).
Delay Refresh
   When enabled, the bone does not deform its children when manipulating the bone in pose mode.


Shaped Bones
------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Pose Mode
   | Panel:    :menuselection:`Bone --> Display`


Blender allows you to give to each bone of an armature a specific shape
(in *Object Mode* and *Pose Mode*), using another object as "template".
First of all, you have to enable the *Shapes* button (*Armature* panel).

.. figure:: /images/riggingeditingbonecxtdisplaypanel.png

   The Display panel.


Attributes
----------

Wireframe
   When enabled, bone is displayed in wireframe mode regardless of the viewport drawing mode.
   Useful for non-obstructive custom bone chains.

Hide
   Bone is not visible when not in *Edit Mode*.

Custom Shape
   Object that defines the custom shape of the selected bone.

Custom At
   Bone that defines the display transform of this shape bone

To assign a custom shape to a bone, you have to:

- Switch to *Pose Mode* :kbd:`Ctrl-Tab`.
- Select the relevant bone by clicking on it with :kbd:`RMB`.
- Go to the *Display* panel *Custom Shape* field and select the 3D object previously created in the scene;
  in this example we are using a cube and a cone. Tou can optionally set the *At* field to another bone.

.. figure:: /images/rigging_armatures_visualization_custom-shape-field.png

   The Display panel.

.. list-table::

   * - .. figure:: /images/riggingboneshapeex3dviewobjectmode.jpg
          :width: 320px

          The armature with shapes assigned to two bones, in Object Mode.
          Note the centers of the Cone and Cube objects.

     - .. figure:: /images/riggingboneshapeex3dviewposemode.jpg
          :width: 320px

          The same armature in Pose Mode...

.. note::

   - These shapes will never be rendered - like any bone, they are only visible in 3D Views.
   - Even if any type of object seems to be accepted by the *OB* field (meshes, curves, even metas...),
     only meshes really work - all other types just make the bone invisible; nothing is drawn...
   - The center of the shape object will be at the *root of the bone*
     (see the :doc:`bone page </rigging/armatures/bones/index>` for root/tip).
   - The object properties of the shape are ignored
     (i.e. if you make a parallelepiped out of a cube by modifying its dimensions in *Object Mode*,
     you will still have a cube shaped bone...).
   - The "along bone" axis is the Y one,
     and the shape object is always scaled so that one Blender Unit stretches along the whole bone length.
   - If you need to remove the custom shape of the bone,
     just right click in the *Custom Shape* field and select *Reset to default value* in the pop-up menu.


So to summarize all this, you should use meshes as shape objects,
with their center at their lower -Y end, and an overall Y length of 1.0 BU.


.. _armature-layers:

Armature Layers
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object, Edit and Pose Mode
   | Panel:    :menuselection:`Object data --> Skeleton`

.. figure:: /images/riggingeditingobjectdatapropertycxtskeletonpanel.png

   The Skeleton panel.


Each armature has 32 "Armature layers" which allow you to organize your armature by
"regrouping" sets of bones into layers; this works similar to scene layers
(those containing your objects). You can then "move" a bone to a given layer,
hide or show one or several layers, etc.


Showing/hiding bone layers
--------------------------

Only bones in active layers will be visible/editable - but they will always be effective
(i.e move objects or deform geometry), whether in an active layer or not. To
(de)activate a layer, you have several options, depending in which mode you are in:

- In all modes, use the row of small buttons at the top of the *Display Options* group, *Armature* panel.
  If you want to enable/disable several layers at once, as usual, hold :kbd:`Shift` while clicking...
- In *Edit Mode* and *Pose Mode*, you can also do this from the *3D View*,
  either by using the menu :menuselection:`Armature --> Switch Armature Layers` or
  :menuselection:`Pose --> Switch Armature Layers`, or the :kbd:`Shift-M` shortcut,
  to display a small pop-up menu containing the same buttons as described above
  (here again, you can use :kbd:`Shift-LMB` clicks to (de)select several layers at once).


Protected Layers
----------------

You can lock a given bone layer for all :ref:`proxies <object-proxy>`
of your armature, i.e. all bones in this layer will not be editable.
To do so, in the *Skeleton* panel, :kbd:`Ctrl-LMB` click on the relevant button, the layer lock will be enabled.

Protected layers in proxy are restored to proxy settings on file reload and undo.


Bone Layers
===========

.. admonition:: Reference
   :class: refbox

   | Mode:     Object, Edit and Pose Mode
   | Panel:    :menuselection:`Bone --> Relations`

.. figure:: /images/riggingeditingbonecxtrelationspanel.png

   The Relations panel.


Moving bones between layers
---------------------------

Obviously, you have to be in *Edit Mode* or *Pose Mode* to move bones between
layers - note that as with objects, bones can lay in several layers at once,
just use the usual :kbd:`Shift-LMB` clicks... First of all,
you have to select the chosen bone(s)!

- In the Properties editor, use the "layer buttons" of each selected bone "sub-panel" (*Armature Bones* panel)
  to control in which layer(s) it lays.
- In the *3D View* editor, use the menu :menuselection:`Armature --> Move Bone To Layer` or
  :menuselection:`Pose --> Move Bone To Layer` or press :kbd:`M` to show the usual pop-up layers menu.
  Note that this way, you assign the same layers to all selected bones.


.. _armature-bone-hide:

Hiding Bones
============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit and Pose Mode
   | Panel:    :menuselection:`Bone --> Display`

.. figure:: /images/riggingeditingbonecxtdisplaypanel.png

   The Display panel.


You do not have to use bone layers to show/hide some bones. As with objects,
vertices or control points, you can use :kbd:`H`:

- :kbd:`H` will hide the selected bone(s).
- :kbd:`Shift-H` will hide all bones *but the selected one(s)*.
- :kbd:`Alt-H` will show all hidden bones.

You can also use the *Hide* check button of the
:menuselection:`Bone tab --> Display panel`.

Note that hidden bones are specific to a mode - i.e.
you can hide some bones in *Edit Mode*,
they will still be visible in *Pose Mode*, and vice-versa.
Hidden bone in *Pose Mode* are also invisible in *Object Mode*.
And in *Edit Mode*, the bone to hide must be fully selected,
not just his root or tip.
