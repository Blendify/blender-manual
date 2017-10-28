.. _bpy.types.ArmatureModifier:

*****************
Armature Modifier
*****************

The Armature Modifier is used for building skeletal systems for animating the
poses of characters and anything else which needs to be posed.

By adding an armature system to an object,
that object can be deformed accurately so that geometry does not have to be animated by hand.

.. seealso::

   For more details on armatures usage, see the :doc:`armature section </rigging/armatures/index>`.


Options
=======

.. figure:: /images/modeling_modifiers_deform_armature_panel.png

   Armature Modifier.

Object
   The name of the armature object used by this modifier.
Preserve Volume
   Use quaternions for preserving volume of object during deformation. It can be better in many situations.

   Without *Preserve Volume*, rotations at joints tend to scale down the neighboring geometry,
   up to nearly zero at 180 degrees from rest position.
   With *Preserve Volume*, the geometry is no longer scaled down, but there is a "gap",
   a discontinuity when reaching 180 degrees from rest position.

.. list-table:: Example of Quaternion option effects.
   Note that the IcoSphere is deformed using the envelopes weights.

   * - .. figure:: /images/modeling_modifiers_deform_armature_preserve-volume-1.png
          :width: 200px

          Initial state.

     - .. figure:: /images/modeling_modifiers_deform_armature_preserve-volume-2.png
          :width: 200px

          100° rotation, Preserve Volume disabled.

     - .. figure:: /images/modeling_modifiers_deform_armature_preserve-volume-3.png
          :width: 200px

          180° rotation, Preserve Volume disabled.

   * - .. figure:: /images/modeling_modifiers_deform_armature_preserve-volume-4.png
          :width: 200px

          100° rotation, Preserve Volume enabled.

     - .. figure:: /images/modeling_modifiers_deform_armature_preserve-volume-5.png
          :width: 200px

          179.9° rotation, Preserve Volume enabled.

     - .. figure:: /images/modeling_modifiers_deform_armature_preserve-volume-6.png
          :width: 200px

          180.1° rotation, Preserve Volume enabled.

Vertex Group
   The name of a vertex group of the object, the weights of which will be used to determine the influence of this
   Armature Modifier's result when mixing it with the results from other *Armature* ones.

   Only meaningful when having at least two of these modifiers on the same object,
   with *Multi Modifier* activated.

   Invert
      Inverts the influence set by the vertex group defined in previous setting
      (i.e. reverses the weight values of this group).


Bind To
-------

Methods to bind the armature to the mesh.

Vertex Groups
   Meshes and lattices only -- When enabled, bones of a given name will deform vertices which belong to
   :doc:`vertex groups </modeling/meshes/properties/vertex_groups/index>` of the same name.
   e.g. a bone named "forearm" , will only affect the vertices in the "forearm" vertex group.

   The influence of one bone on a given vertex is controlled by the weight of this vertex in the relevant group.
   A much more precise method than *Bone Envelopes*, but also generally longer to set up.
Bone Envelopes
   When enabled, bones will deform vertices or control points near them,
   defined by each bones envelope radius and distance.
   Enable/Disable bone :ref:`envelopes <armature-bones-envelope>` defining the deformation
   (i.e. bones deform vertices in their neighborhood).

.. list-table:: Example of vertex groups skinning method.

   * - .. figure:: /images/modeling_modifiers_deform_armature_vertex-groups-skinning-1.png
          :width: 320px

          The weights of the arm vertex group.

     - .. figure:: /images/modeling_modifiers_deform_armature_vertex-groups-skinning-2.png
          :width: 320px

          The weights of the forearm vertex group.

   * - .. figure:: /images/modeling_modifiers_deform_armature_vertex-groups-skinning-3.png
          :width: 320px

          The result when posing the armature.

     - .. figure:: /images/modeling_modifiers_deform_armature_vertex-groups-skinning-4.png
          :width: 320px

          The same pose, but using envelopes method rather that vertex groups.


.. _modifier-armature-multi-modifier:

Multi Modifier
--------------

Use the same data as a previous modifier (usually also an Armature Modifier) as input.
This allows you to use several armatures to deform the same object, all based on the "non-deformed" data
(i.e. this avoids having the second Armature Modifier deform the result of the first one...).

The results of the Armature Modifiers are then mixed together, using the weights of the
*Vertex Group* as "mixing guides".

.. tip::

   Armature Modifiers can quickly be added to objects using the parenting shortcut
   :kbd:`Ctrl-P` when the active object is an armature.
