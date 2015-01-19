
***************
Transformations
***************

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Mode
   | Menu:     :menuselection:`Object/Mesh --> Transform`


.. figure:: /images/3D_interaction-Transformations-transform-menu.jpg

   Transform menu in Object Mode. The yellow highlighted sections are only available in Object Mode.


Transformations refer to a number of operations that can be performed on a selected Object or
Mesh that alters its position or characteristics. Basic transformations include grabbing
(moving), rotating or scaling a selection. More advanced transformations included mirroring,
giving the selection sphere like qualities, shear, push/pulling and warping. The following
links provide a more detailed explanation of the more available transformation operations.


Basic transformations
=====================

- :doc:`Grab/Move </getting_started/basics/transformations/grab>`: move a selection.
- :doc:`Rotate </getting_started/basics/transformations/rotate>`: rotate a selection.
- :doc:`Scale </getting_started/basics/transformations/scale>`: change the size of a selection.


Advanced Transformations
========================

:doc:`Mirror </3d_interaction/transformations/advanced/mirror>`
   mirror the selection.
:doc:`To Sphere </3d_interaction/transformations/advanced/to_sphere>`
   make the selection have a more spherical shape.
:doc:`Shear </3d_interaction/transformations/advanced/shear>`
   shear the selection. Shearing causes parallel selections to move past one another.
:doc:`Warp </3d_interaction/transformations/advanced/warp>`
   warp the selection.
:doc:`Shrink/Fatten </modeling/meshes/editing/deforming/shrink-fatten>`
   Move vertices along their normals (Mesh Editmode only).
:doc:`Push/Pull </3d_interaction/transformations/advanced/push_pull>`
   push or pull the selection
   (imagine someone pushing or pulling at the ends of the selection to stretch or compress it).
:doc:`Move Texture Space </3d_interaction/transformations/advanced/move_texture_space>`
   Texture space determines the placement of textures.
   Moving it can be useful when :doc:`mapping textures. </render/blender_render/textures/mapping>`
:doc:`Scale Texture Space </3d_interaction/transformations/advanced/scale_texture_space>`
   As above. Useful when :doc:`mapping textures. </render/blender_render/textures/mapping>`
:doc:`Align to Transform Orientation </3d_interaction/transform_control/transform_orientations>`
   Aligns the Object to the current Transform Orientation.
:doc:`Geometry to Origin </modeling/objects/introduction#object_centers>`
   Move the Object's geometry to the origin point.
:doc:`Origin to Geometry </modeling/objects/introduction#object_centers>`
   Move the Object's origin to its geometry.
:doc:`Origin to 3D cursor </modeling/objects/introduction#object_centers>`
   Move the Object's origin to the 3D cursor.
:doc:`Randomize Transform </3d_interaction/transformations/advanced/randomize_transform>`
   Apply random movement, rotation and scale to selected Objects.
:doc:`Align Objects </3d_interaction/transformations/advanced/align_objects>`
   Align Objects along a particular axis.
:doc:`Animated Transforms to Deltas </3d_interaction/transformations/advanced/animated_transforms_to_deltas>`
   Converts animated Transform values to Delta Transform values.
   Allows duplicated Objects with keyframes to have offsets (location, rotation, scale etc).


Transform Control
=================

In addition to the specific controls on each of the above pages, there are a number of general
controls that can be used to modify the effects of the listed transformations.
This includes using keyboard input for precise control,
resetting transformations and axis locking.

:doc:`Read more about Transform Controls » </3d_interaction/transform_control>`

