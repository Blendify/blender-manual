
***********
Cloth Panel
***********

Presets
   Contains a number of preset cloth examples, and allows you to add your own.

Quality
   Set the number of simulation steps per frame. Higher values result in better quality, but is slower.


Material
========

Mass
   The mass of the cloth material.
Structural
   Overall stiffness of the cloth.
Bending
   Wrinkle coefficient. Higher creates more large folds.


Damping
=======

Spring
   Damping of cloth velocity. Higher = more smooth, less jiggling.
Air
   Air normally has some thickness which slows falling things down.


Pinning
=======

.. figure:: /images/Clothscreeny2.jpg
   :width: 200px

   Cloth in action.


The first thing you need when pinning cloth is a :doc:`Vertex Group </modeling/meshes/vertex_groups/index>`.
There are several ways of doing this including using the Weight Paint tool to paint the areas you want to pin
(see the :ref:`painting_weight-index` section of the manual).
The weight of each vertex in the group controls how strongly it is pinned.

Once you have a vertex group set, things are pretty straightforward; all you have to do is
press the *Pinning of cloth* button in the *Cloth* panel and select which
vertex group you want to use, and the stiffness you want it at.

Stiffness
   Target position stiffness. You can leave the stiffness as it is; the default value of 1 is fine.


Pinning Clothing To An Armature
===============================

Clothing can be simulated and pinned to an armature.
For example, a character could have a baggy tunic pinned to the character's waist with a belt.

The typical workflow for pinning:

- Set the armature to its bind pose.
- Model clothing that encloses but does not penetrate the character's mesh.
- Parent the clothing objects to the armature. The armature will now have several child meshes bound to it.
- Create a new vertex group on each cloth object for its pinned vertices
- Add vertexes to be pinned to this vertex group and give these vertices non-zero weights
  (you probably want weight = 1).
  For example the belt area of the tunic would be in the vertex group and have weight one.
- Designate the clothing objects as "cloth" in the Physics tab of the Properties window.
  Make sure the *Cloth* modifier is below the *Armature* modifier in the modifier stack.
- press the *Pinning of Cloth* button in the *Cloth* panel and select the vertex group.
- Designate the character's mesh as "collision" object in the Physics tab of the Properties window.
- The clothing is now ready. Non-pinned vertices will be under control of the Cloth modifier.
  Pinned vertices will be under control of the Armature modifier.

.. note::

   When animating or posing the character you must begin from the bind pose.
   Move the character to its initial pose over several frames so the physics engine can simulate the clothing moving.
   Very fast movements and teleport jumps can break the physics simulation.


.. Note that if you move the cloth object ''after'' you have already run some simulations,
   you must unprotect and clear the cache; otherwise, Blender will use the position of the
   current/cached mesh's vertices when trying to represent where they are.
   Editing the shape of the mesh, after simulation, is also discussed below.
   You may disable the cloth and edit the mesh as a normal mesh editing process.
   This is jumping ahead and not clear and not true at this point.
   --[[User:Roger|Roger]] 18:42, 27 April 2008 (UTC)

   Finally, use the Timeline window Play button,
   or press {{Shortcut|alt|A}} in the 3D View to run the simulation.
   Your cloth will fall and interact with Deflection objects as it would in the real world.

.. This is jumping ahead and not clear and not true at this point.
   --[[User:Roger|Roger]] 18:42, 27 April 2008 (UTC)


Cloth Sewing Springs
====================

Another method of restraining cloth similar to pinning is sewing springs.
Sewing springs are virtual springs that pull vertices in one part of
a cloth mesh toward vertices in another part of the cloth mesh.
This is different from pinning which binds vertices of the cloth mesh in place or to another object.
A clasp on a cloak could be created with a sewing spring.
The spring could  pull two corners of a cloak about a character's neck.
This could result in a more realistic simulation than pinning the cloak to
the character's neck since the cloak would be free to slide about the character's neck and shoulders.

Sewing springs are created by adding extra edges to a cloth mesh.
These extra edges do not need to be included in faces.
They should connect vertices in the mesh that should be pulled together.
For example the corners of a cloak. The vertexes of these extra edges are added to a vertex group.

Enable the *Cloth Sewing Springs* panel and select the vertex group.
Give the springs a non-zero force value and your cloth is ready to simulate.
