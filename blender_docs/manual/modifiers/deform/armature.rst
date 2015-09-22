.. index::
   pair: Modifier; Armature

*****************
Armature Modifier
*****************

The *Armature* modifier is used for building skeletal systems for animating the
poses of characters and anything else which needs to be posed.

By adding an armature system to an object,
that object can be deformed accurately so that geometry doesn't have to be animated by hand.

.. note::
   For more details on armatures usage, see :doc:`this chapter </rigging/introduction>`.

Options
=======

.. figure:: /images/Modifiers-Armature.jpg

   Armature modifier

Object
   The name of the armature object used by this modifier.

Preserve Volume
   Use quaternions for preserving volume of object during deformation. It can be better in many situations.

Vertex Group
   The name of a vertex group of the object, the weights of which will be used to determine the influence of this
   *Armature* modifier's result when mixing it with the results from other *Armature* ones.

   Only meaningful when having at least two of these modifiers on the same object,
   with *Multi Modifier* activated.

   Invert
      Inverts the influence set by the vertex group defined in previous setting
      (i.e. reverses the weight values of this group).

Multi Modifier
   Use the same data as a previous modifier (usually also an *Armature* modifier) as input.
   This allows you to use several armatures to deform the same object, all based on the "non-deformed" data
   (i.e. this avoids having the second *Armature* modifier deform the result of the first one...).

   The results of the *Armature* modifiers are then mixed together, using the weights of the
   *Vertex Group* as "mixing guides".

Bind To
   Method to bind the armature to the mesh.

   Vertex Groups
      When enabled, bones of a given name will deform vertices which belong to vertex groups of the same name.

   Bone Envelopes
      When enabled, bones will deform vertices near them (defined by each bones envelope radius)
      Enable/Disable bone envelopes defining the deformation (i.e. bones deform vertices in their neighborhood).


.. tip::

   Armature modifiers can quickly be added to objects using the parenting shortcut
   (:kbd:`Ctrl-P`) when the active object is an armature.
