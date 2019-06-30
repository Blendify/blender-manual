.. _bpy.types.ClothCollisionSettings:

**********
Collisions
**********

In most cases, a piece of cloth does not just hang there in 3D space,
it collides with other objects in the environment. To ensure proper simulation,
there are several items that have to be set up and working together:

- The *Cloth* object must be told to participate in collisions.
- Optionally (but recommended) tell the cloth to collide with itself.
- Other objects must be visible to the *Cloth* object *via* shared layers.
- The other objects must be mesh objects.
- The other objects may move or be themselves deformed by other objects (like an armature or shape key).
- The other mesh objects must be told to deflect the cloth object.
- The blend-file must be saved in a directory so that simulation results can be saved.
- You then *Bake* the simulation. The simulator computes the shape of the cloth for a frame range.
- You can then edit the simulation results, or make adjustments to the cloth mesh, at specific frames.
- You can make adjustments to the environment or deforming objects,
  and then re-run the cloth simulation from the current frame forward.


Collision Settings
==================

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Physics --> Cloth --> Collision`

.. TODO2.8:
   .. figure:: /images/physics_cloth_settings_collisions_panel.png

      Cloth Collisions panel.

Now you must tell the *Cloth* object that you want it to participate in collisions.
For the cloth object, locate the *Cloth Collision* panel, shown to the right:

Quality
   A general setting for how fine and good a simulation you wish.
   Higher numbers take more time but ensure less tears and penetrations through the cloth.


Distance
   As another object gets this close to it,
   the simulation will start to push the cloth out of the way.
Friction
   A coefficient for how slippery the cloth is when it collides with the mesh object.
   For example, silk has a lower coefficient of friction than cotton.


Self Collision
--------------

Real cloth cannot permeate itself, so you normally want the cloth to self-collide.

Enable Self Collisions
   Click this to tell the cloth object that it should not penetrate itself. This adds to simulation compute time,
   but provides more realistic results. A flag, viewed from a distance does not need this enabled,
   but a close-up of a cape or blouse on a character should have this enabled.
Distance
   If you encounter problems, you could also change the *Min Distance* value for the self-collisions.
   The best value is 0.75; for fast things you better take 1.0. The value 0.5 is quite risky
   (most likely many penetrations) but also gives some speed-up.

Regression blend-file:
`Cloth self-collisions <https://wiki.blender.org/wiki/File:Cloth-regression-selfcollisions.blend>`__.


Mesh Objects Collide
====================

If your colliding object is not a mesh object, such as a NURBS surface, or text object,
you must convert it to a mesh object using :ref:`object-convert-to`.


Cloth - Object Collisions
-------------------------

.. figure:: /images/physics_collision_panel.png

   Collision settings.

The cloth object needs to be deflected by some other object. To deflect a cloth,
the object must be enabled as an object that collides with the cloth object.
To enable Cloth -- Object collisions, you have to enable deflections on the collision object
(not on the cloth object).

In the Properties editor, *Object* tab and *Physics* tab, locate the *Collision* panel
shown to the right. It is also important to note that this collision panel is used to tell
all simulations that this object is to participate in colliding/deflecting other objects
on a shared layer (particles, soft bodies, and cloth).


Mesh Object Modifier Stack
==========================

.. TODO2.8:
   .. figure:: /images/physics_cloth_settings_collisions_stack.png

      Collision stack.

The object's shape deforms the cloth,
so the cloth simulation must know the "true" shape of that mesh object at that frame.
This true shape is the basis shape as modified by shape keys or armatures. Therefore,
the Collision Modifier must be **after** any of those.
The image to the right shows the *Modifiers* panel for the Character mesh object
(not the cloth object).


Troubleshooting
===============

If you encounter some problems with collision detection, there are two ways to fix them:

- The fastest solution is to increase the *Min Distance* setting under the *Cloth Collision* panel.
  This will be the fastest way to fix the clipping; however, it will be less accurate and will not look as good.
  Using this method tends to make it look like the cloth is resting on air, and gives it a very rounded look.
- A second method is to increase the *Quality* (in the first *Cloth* panel).
  This results in smaller steps for the simulator and
  therefore to a higher probability that fast-moving collisions get caught.
  You can also increase the *Collision Quality* to perform more iterations to get collisions solved.
- If none of the methods help, you can easily edit the cached/baked result in *Edit Mode* afterwards.
- The Cloth is torn by the deforming mesh -- he "Hulks Out": Increase its structural stiffness
  (*Structure Stiffness* setting, *Cloth* panel), very high, like 1000.

.. note:: Subdivision Surface Modifier

   A bake/cache is done for every subdivision level so please use
   **the equal** subdivision level for render and preview.
