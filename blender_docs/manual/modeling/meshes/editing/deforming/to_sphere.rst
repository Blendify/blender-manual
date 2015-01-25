
To Sphere
*********

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Transform --> To Sphere`
   | Hotkey:   :kbd:`Shift-Alt-S`


Description
===========

The *To Sphere* transformation will give the selection spherical qualities. The
*Suzanne with increasing sphericity* image below shows the results of applying the
*To Sphere* transformation to the Suzanne mesh.


.. figure:: /images/3D_interaction-Transformations-Advanced-To_Sphere_suzanne-spherical.jpg
   :width: 640px

   Suzanne with inceasing sphericity.
   The sequence above shows a Suzanne mesh with a 0, 0.25 (25%), 0.5 (50%) and 1 (100%) To Sphere transform applied.


Usage
-----

.. figure:: /images/3D_interaction-Transformations-Advanced-To_Sphere_toolshelf-f6.jpg
   :width: 150px

   To Sphere Factor.


Select the elements you want to operate on and activate the *To Sphere* transform
function. The *To Sphere* option can be invoked from the :menuselection:`Mesh --> Transform --> To
Sphere` menu option or by pressing :kbd:`Shift-Alt-S`. The amount of sphericity given
to the selection can be determined interactively by moving the mouse or by typing a number
between 0 and 1. Pressing :kbd:`Return` will confirm the transformation. The confirmed
transformation can be further edited by pressing :kbd:`F6` or by going into the
*Toolshelf* (:kbd:`T`) and altering the *Factor* slider provided
that no other actions take place between the *To Sphere* transform confirmation and
accessing the slider.


----

Note that the result of the *To Sphere* transform is also dependant on the number of
selected mesh elements (vertices, faces etc). As can be seen in the below image, the result
will be smoother and more spherical when there are more mesh elements available to work with.


.. figure:: /images/3D_interaction-Transformations-Advanced-To_Sphere_cubes-spherical.jpg
   :width: 640px

   To Sphere applied to cubes with different subdivision levels.
   In this image sequence, To Sphere was applied to the entire cube
   at levels of 0, 0.25 (25%), 0.5 (50%) and 1 (100%) respectively.


The *To Sphere* transform will generate different results depending on the number
and arrangement of elements that were selected (as shown by the below image).


.. figure:: /images/3D_interaction-Transformations-Advanced-To_Sphere_other-spherical.jpg
   :width: 640px

   To Sphere applied to different selections.


