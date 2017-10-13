.. _bpy.ops.transform.tosphere:

*********
To Sphere
*********

.. admonition:: Reference
   :class: refbox

   | Mode:     Object/Edit Modes
   | Menu:     :menuselection:`Mesh --> Transform --> To Sphere`
   | Hotkey:   :kbd:`Shift-Alt-S`


The *To Sphere* transformation will give the selection spherical qualities. The
Fig. :ref:`fig-mesh-deform-to-sphere-monkey` below shows the results of applying the
*To Sphere* transformation to the monkey mesh.

.. _fig-mesh-deform-to-sphere-monkey:

.. figure:: /images/editors_3dview_transformations-advanced-to_sphere_suzanne-spherical.jpg

   Monkey with increasing sphericity.

   The sequence above shows a monkey mesh with a
   0, 0.25 (25%), 0.5 (50%) and 1 (100%) To Sphere transform applied.


Usage
=====

.. figure:: /images/modeling_meshes_editing_deforming_to-sphere_operator-panel.png

   To Sphere Factor.


Select the elements you want to operate on and activate the *To Sphere* transform function.
The *To Sphere* option can be invoked from the :menuselection:`Mesh --> Transform --> To Sphere`
menu option or by pressing :kbd:`Shift-Alt-S`. The amount of sphericity given
to the selection can be determined interactively by moving the mouse or by typing a number
between 0 and 1. Pressing :kbd:`Enter` will confirm the transformation.
The confirmed transformation can be further edited by pressing :kbd:`F6`
or by going into the *Tool Shelf* and altering the *Factor* slider provided
that no other actions take place between the *To Sphere* transform confirmation and
accessing the slider.


Note that the result of the *To Sphere* transform is also dependant on the number of
selected mesh elements (vertices, faces, etc.). As can be seen in the below image, the result
will be smoother and more spherical when there are more mesh elements available to work with.

.. figure:: /images/editors_3dview_transformations-advanced-to_sphere_cubes-spherical.jpg

   To Sphere applied to cubes with different subdivision levels.

   In this image sequence, To Sphere was applied to the entire cube
   at levels of 0, 0.25 (25%), 0.5 (50%) and 1 (100%) respectively.


The *To Sphere* transform will generate different results depending on the number
and arrangement of elements that were selected (as shown by the below image).

.. figure:: /images/editors_3dview_transformations-advanced-to_sphere_other-spherical.jpg

   To Sphere applied to different selections.
