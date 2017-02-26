..    TODO/Review: {{review|partial=X|im=update}}.

******************
Skinning to Shapes
******************

In the :doc:`previous page </rigging/armatures/skinning/objects>`,
we saw how to link (parent) whole objects to armature bones -- a way to control the transform properties
of this object via a rig. However, armatures are much more powerful: they can deform the *shape*
of an object (i.e. affect its Object Data data-block, which is its vertices or control points...).

In this case, the child object is parented (skinned) to the whole armature,
so that each of its bones controls a part of the "skin" object's geometry.
This type of skinning is available for meshes, lattices, curves, surfaces, and texts
(with more options for the first two types).

Bones can affect the object's shape in two ways:

- The :ref:`armature-bones-envelope` process is available for all type of skinnable objects.
  It uses the "proximity" and "influence" of the bones to determine which part of the object they can deform.
- The `Vertex Groups`_ method is (obviously) reserved to meshes and lattices.
  One bone only affect the vertices in the
  :doc:`group </modeling/meshes/properties/vertex_groups/index>` having the same name,
  using vertices' :ref:`weights <painting-weight-index>` as influence value.
  A much more precise method, but also generally longer to set up.


Parenting to Whole Armatures
============================

.. figure:: /images/rigging_skinning_set-parent-menu.png
   :align: right

   Set Parent menu.


But before diving into this, let us talk about the different ways to skin (parent)
an object to a whole armature as with :doc:`object skinning </rigging/armatures/skinning/objects>`,
there is an "old parenting" method and a new, more flexible and powerful one,
based on modifiers, which allows creation of very complex setups, with objects deformed by several armatures.

For meshes and lattices *only*,
you can use the :kbd:`Ctrl-P` parent shortcut in the 3D Views
(after having selected first the "skin" object, then the armature).
The *Make Parent To* menu pops up, select the *Armature* entry.
If the skinning object is a lattice, you are done; no more options are available.
But with a child mesh, another *Create Vertex Groups?* menu appears,
with the following options all regarding the "vertex groups" skinning method:

With Empty Groups
   will create, if they do not already exist, empty groups, one for each bone in the skinned armature,
   with these bones' names.
   Choose this option if you have already created (and weighted) all the vertex groups the mesh requires.
With Envelope Weights
   will create, as with *Name Groups* option, the needed vertex groups. However,
   it will also weight them according to the bones' envelope settings (i.e.
   it will assign to each groups the vertices that are inside its bone's influence area,
   weighted depending on their distance to this bone).

   .. warning::

      This means that if you had defined vertex groups using same names as skinned bones, their content will be
      completely overridden. You will get the same behavior as if you used the envelopes skinning method,
      but with vertex groups?

With Automatic Weights
   Creates, as with *Envelope Weights* option, the needed vertex groups,
   with vertices assigned and weighted using the newer "bone heat" algorithm.

This "parenting" method will create an :doc:`Armature Modifier </modeling/modifiers/deform/armature>`
in the skinning object's modifiers stack.
And so, of course, adding an :doc:`Armature Modifier </modeling/modifiers/deform/armature>`
to an object is the second, new skinning method (which also works for curves/surfaces/texts...).
Follow the above link to read more about this modifier's specific options.


Vertex Groups
=============

Obviously, the same vertex can belong to several groups, and hence be affected by several bones,
with a fine tuning of each bone's influence using these vertex weights.
Quite useful when you want to have a smooth joint. For example, when you skin an elbow,
the upperarm vertex group contains the vertices of this part at full weight (*1.0*),
and when reaching the elbow area, these weights decrease progressively to *0.0'*
when reaching the forearm zone and vice versa for the forearm group weights...
Of course, this is a very raw example skinning a realistic joint is a big job,
as you have to carefully find good weights for each vertex,
to have the most realistic behavior, when bending -- and this is not an easy thing!

.. seealso::

   :ref:`weight-painting-bones`.
