
**********
Collisions
**********

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
==================

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
---------------

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
=============

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
====================

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
==========================

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


.. note:: *Subsurf* Modifier

   A bake/cache is done for every subsurf level so please use **the equal** subsurf level for render and preview.
