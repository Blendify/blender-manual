Creating Cloth Simulations
==========================

This section discusses how to use those options to get the effect you want.
First, enable *Cloth*. Set up for the kind of cloth you are simulating.
You can choose one of the presets to have a starting point.

As you can see, the heavier the fabric,
the more stiff it is and the less it stretches and is affected by air.


Cloth Panel
===========

Presets
   Contains a number of preset cloth examples, and allows you to add your own.

Quality
   Set the number of simulation steps per frame. Higher values result in better quality, but is slower.


Material
--------

Mass
   The mass of the cloth material.
Structural
   Overall stiffness of the cloth.
Bending
   Wrinkle coefficient. Higher creates more large folds.


Damping
-------

Spring
   Damping of cloth velocity. Higher = more smooth, less jiggling.
Air
   Air normally has some thickness which slows falling things down.


Pinning
-------

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
-------------------------------

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
--------------------

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


Collisions
==========

In most cases, a piece of cloth does not just hang there in 3D space,
it collides with other objects in the environment. To ensure proper simulation,
there are several items that have to be set up and working together:

- The *Cloth* object must be told to participate in *Collision* s.
- Optionally (but recommended) tell the cloth to collide with itself.
- Other objects must be visible to the *Cloth* object *via* shared layers.
- The other objects must be mesh objects.
- The other objects may move or be themselves deformed by other objects (like an armature or shape key).
- The other mesh objects must be told to deflect the cloth object.
- The blend file must be saved in a directory so that simulation results can be saved.
- You then *Bake* the simulation. The simulator computes the shape of the cloth for a frame range.
- You can then edit the simulation results, or make adjustments to the cloth mesh, at specific frames.
- You can make adjustments to the environment or deforming objects,
  and then re-run the cloth simulation from the current frame forward.


Collision Settings
------------------

.. figure:: /images/Cloth_collisionpanel.png
   :width: 200px

   Cloth Collisions panel.


Now you must tell the *Cloth* object that you want it to participate in collisions.
For the cloth object, locate the *Cloth Collision* panel, shown to the right:

Enable Collisions
   :kbd:`LMB` click this to tell the cloth object that it needs to move out of the way.
Quality
   A general setting for how fine and good a simulation you wish.
   Higher numbers take more time but ensure less tears and penetrations through the cloth.
Distance
   As another object gets this close to it (in Blender Units),
   the simulation will start to push the cloth out of the way.
Repel
   Repulsion force to apply when cloth is close to colliding.
Repel Distance
   Maximum distance to apply repulsion force. Must be greater than minimum distance.
Friction
   A coefficient for how slippery the cloth is when it collides with the mesh object.
   For example, silk has a lower coefficient of friction than cotton.


Self-collisions
^^^^^^^^^^^^^^^

Real cloth cannot permeate itself, so you normally want the cloth to self-collide.

Enable Self Collisions
   Click this to tell the cloth object that it should not penetrate itself. This adds to simulation compute time,
   but provides more realistic results. A flag, viewed from a distance does not need this enabled,
   but a close-up of a cape or blouse on a character should have this enabled.
Quality
   For higher self-collision quality just increase the
   *Quality* and more self collision layers can be solved.
   Just keep in mind that you need to have at least the same
   *Collision Quality* value as the *Quality* value.
Distance
   If you encounter problems, you could also change the *Min Distance* value for the self-collisions.
   The best value is 0.75; for fast things you better take 1.0. The value 0.5 is quite risky
   (most likely many penetrations) but also gives some speedup.

Regression blend file:
`Cloth selfcollisions <http://wiki.blender.org/index.php/Media:Cloth-regression-selfcollisions.blend>`__.


Shared Layers
-------------

Suppose you have two objects: a pair of Pants on layers 2 and 3,
and your Character mesh on layers 1 and 2.
You have enabled the Pants as cloth as described above.
You must now make the Character "visible" to the Cloth object,
so that as your character bends its leg, it will push the cloth.
This principle is the same for all simulations;
simulations only interact with objects on a shared layer. In this example,
both objects share layer 2.

To view/change an object's layers,
:kbd:`RMB` click to select the object in *Object* mode in the 3D view.
:kbd:`M` to bring up the "Move Layers" pop-up,
which shows you all the layers that the object is on. To put the object on a single layer,
:kbd:`LMB` click the layer button. To put the object on multiple layers,
:kbd:`Shift-LMB` the layer buttons. To remove an object from a selected layer,
simply :kbd:`Shift-LMB` the layer button again to toggle it.


Mesh Objects Collide
--------------------

If your colliding object is not a mesh object, such as a NURBS surface, or text object,
you must convert it to a mesh object. To do so, select the object in object mode,
and in the 3D View header, select *Object* --> *Convert Object Type*
(:kbd:`Alt-C`), and select *Mesh* from the pop-up menu.


Cloth - Object collisions
-------------------------

.. figure:: /images/Panel-Collision.jpg
   :width: 200px

   Collision settings.


The cloth object needs to be deflected by some other object. To deflect a cloth,
the object must be enabled as an object that collides with the cloth object.
To enable Cloth - Object collisions, you have to enable deflections on the collision object
(not on the cloth object).

In the *Buttons* window, *Object* context,
*Physics* sub-context, locate the *Collision* panel shown to the right. It
is also important to note that this collision panel is used to tell all simulations that this
object is to participate in colliding/deflecting other objects on a shared layer (particles,
soft bodies, and cloth).


.. warning::

   There are three different *Collision* panels, all found in the *Physics* sub-context.
   The first (by default), a tab beside the *Fields* panel, is the one needed here. The second panel,
   a tab in the *Soft Body* group, concern softbodies (and so has nothing to do with cloth).
   And we have already seen the last one, by default a tab beside the *Cloth* panel.


Mesh Object Modifier Stack
--------------------------

.. figure:: /images/Simulation-Cloth-ColliderStack.jpg
   :width: 200px

   Collision stack.


The object's shape deforms the cloth,
so the cloth simulation must know the "true" shape of that mesh object at that frame.
This true shape is the basis shape as modified by shape keys or armatures. Therefore,
the *Collision* modifier must be **after** any of those.
The image to the right shows the *Modifiers* panel for the Character mesh object
(not the cloth object).


Cloth Cache
===========

Cache settings for cloth are the same as with other dynamic systems.
See :doc:`Particle Cache </physics/particles/cache_and_bake>` for details.


Bake Collision
--------------

.. figure:: /images/Simulation-Cloth-CollisionBake.jpg
   :width: 200px

   After Baking.


After you have set up the deflection mesh for the frame range you intend to run the simulation
(including animating that mesh *via* armatures),
you can now tell the cloth simulation to compute (and avoid) collisions.
Select the cloth object and in the *Object* context,
*Physics* sub-context, set the *Start* and *End* settings for
the simulation frames you wish to compute, and click the *Bake* button.

You cannot change *Start* or *End* without clearing the bake simulation.
When the simulation has finished, you will notice you have the option to free the bake,
edit the bake and re-bake:

There's a few things you'll probably notice right away. First,
it will bake significantly slower than before,
and it will probably clip through the box pretty badly as in the picture on the right.


Editing the cached simulation
-----------------------------

The cache contains the shape of the mesh at each frame. You can edit the cached simulation,
after you've baked the simulation and pressed the *Bake Editing* button.
Just go to the frame you want to fix and :kbd:`Tab` into *Edit mode*.
There you can move your vertices using all of Blender's mesh shaping tools. When you exit,
the shape of the mesh will be recorded for that frame of the animation.
If you want Blender to resume the simulation using the new shape going forward,
:kbd:`LMB` click *Rebake from next Frame* and play the animation.
Blender will then pick up with that shape and resume the simulation.

Edit the mesh to correct minor tears and places where the colliding object has punctured the
cloth.

If you add, delete, extrude, or remove vertices in the mesh, Blender will take the new mesh as
the starting shape of the mesh back to the *first frame* of the animation,
replacing the original shape you started with,
up to the frame you were on when you edited the mesh. Therefore,
if you change the content of a mesh, when you :kbd:`Tab` out of *Edit mode*,
you should unprotect and clear the cache so that Blender will make a consistent simulation.


Troubleshooting
===============

If you encounter some problems with collision detection, there are two ways to fix them:


- The fastest solution is to increase the *Min Distance* setting under the *Cloth Collision* panel.
  This will be the fastest way to fix the clipping; however, it will be less accurate and won't look as good.
  Using this method tends to make it look like the cloth is resting on air, and gives it a very rounded look.
- A second method is to increase the *Quality* (in the first *Cloth* panel).
  This results in smaller steps for the simulator and
  therefore to a higher probability that fast-moving collisions get caught.
  You can also increase the *Collision Quality* to perform more iterations to get collisions solved.
- If none of the methods help, you can easily edit the cached/baked result in *Edit mode* afterwards.
- My Cloth is torn by the deforming mesh - he "Hulks Out": Increase its structural stiffness
  (*StructStiff* setting, *Cloth* panel), very high, like 1000.


.. note:: *Subsurf* modifier

   A bake/cache is done for every subsurf level so please use **the equal** subsurf level for render and preview.


Examples
========

To start with cloth, the first thing you need, of course, is some fabric. So,
let's delete the default cube and add a plane. I scaled mine up along the Y axis,
but you don't have to do this. In order to get some good floppy and flexible fabric,
you'll need to subdivide it several times. I did it 8 times for this example.
So :kbd:`Tab` into *Edit mode*,
and press :kbd:`W` --> *Subdivide multi*, and set it to 8.

Now, we'll make this cloth by going to the *Object* context --> *Physics* sub-context.
Scroll down until you see the *Cloth* panel, and press the *Cloth* button.
Now, a lot of settings will appear, most of which we'll ignore for now.

That's all you need to do to set your cloth up for animating,
but if you press :kbd:`Alt-A`, your lovely fabric will just drop very un-spectacularly.
That's what we'll cover in the next two sections about pinning and colliding.


Using Simulation to Shape/Sculpt a Mesh
---------------------------------------

You can *Apply* the *Cloth* modifier at any point to freeze the mesh in
position at that frame. You can then re-enable the cloth,
setting the start and end frames from which to run the simulation forward.

Another example of aging is a flag.
Define the flag as a simple grid shape and pin the edge against the flagpole.
Simulate for 50 frames or so, and the flag will drop to its "rest" position.
Apply the *Cloth* modifier.
If you want the flag to flap or otherwise move in the scene,
re-enable it for the frame range when it is in camera view.


Smoothing of Cloth
------------------

Now, if you followed this from the previous section, your cloth is probably looking a little blocky.
In order to make it look nice and smooth like the picture you need to apply a *Smooth* and/or *Subsurf*
modifier in the *Modifiers* panel under the *Editing* context. Then, in the same context,
find the *Links and Materials* panel (the same one you used for vertex groups) and press *Set Smooth*.

Now, if you press :kbd:`Alt-A`, things are starting to look pretty nice, don't you think?


Cloth on armature
-----------------

Cloth deformed by armature and also respecting an additional collision object:
`Regression blend file <http://wiki.blender.org/index.php/Media:Cloth-regression-armature.blend>`__.


Cloth with animated vertex groups
---------------------------------

Cloth with animated pinned vertices:
`Regression blend file <http://wiki.blender.org/index.php/Media:Cloth_anim_vertex.blend>`__.
UNSUPPORTED: Starting with a goal of 0 and increasing it,
but still having the vertex not pinned will not work (e.g. from goal = 0 to goal = 0.5).


Cloth with Dynamic Paint
------------------------

Cloth with Dynamic Paint using animated vertex groups:
`Regression blend file <http://wiki.blender.org/index.php/Media:Cloth_dynamic_paint.blend>`__.
UNSUPPORTED: Starting with a goal of 0 and increasing it, but still having the vertex not pinned will not work
(e.g. from goal = 0 to goal = 0.5) because the necessary "goal springs" cannot be generated on the fly.


Using Cloth for Softbodies
--------------------------

.. figure:: /images/Cloth-Sb1.jpg
   :width: 200px

   Using cloth for softbodies.


Cloth can also be used to simulate softbodies.
It's for sure not its main purpose but it works nonetheless.
The example image uses standard *Rubber* material, no fancy settings,
just :kbd:`Alt-A`.

Blend file for the example image:
`Using Cloth for softbodies <http://wiki.blender.org/index.php/Media:Cloth-sb1.blend>`__.


Cloth with Wind
---------------

.. figure:: /images/Cloth-flag2.jpg
   :width: 200px

   Flag with wind applied.


Regression blend file for Cloth with wind and self collisions (also the blend for the image above):
`Cloth flag with wind and selfcollisions <http://wiki.blender.org/index.php/Media:Cloth-flag2.blend>`__.
