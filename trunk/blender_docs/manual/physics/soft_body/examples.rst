
********
Examples
********

Here are some simple examples showing the power of softbody physics.


A Bouncing Cube
===============

The Process
-----------

First, change your start and end frames to 1 and 150.

.. figure:: /images/physics_soft-body_examples_timeline.png
   :width: 600px

   The timeline.


Then, add a plane, and scale it five times. Next, go to the physics tab, and add a collision.
The default settings are fine for this example.

Now add a cube, or use the default cube, then enter *Edit Mode* to subdivide it three times.
Add a Bevel Modifier to it to smoothen the edges and then to add a little more,
press :kbd:`R` twice, and move your cursor a bit.

When finished, your scene should look like this:

.. figure:: /images/physics_soft-body_examples_scene-ready.png
   :width: 400px

   The scene, ready for softbody physics.


Everything is ready to add the softbody physics.
Go to :menuselection:`Properties --> Physics` and choose *Softbody*.
Uncheck the soft body goal, and check softbody self collision.
Also, under soft body edges,increase the bending to 10.

Playing tha animation with :kbd:`Alt-A` will now give a slow animation of a bouncing cube.
To speed things up, we need to bake the softbody physics.

Under *Soft Body Cache* change the start and end values to your start and end frames. In this case 1 and 150.
Now, to test if everything is working, you can take a cache step of 5 or 10,
but for the final animation it is better to reduce it to 1, to cache everything.

When finished, your physics panel should look like this:

.. figure:: /images/physics_soft-body_examples_physics-settings.jpg
   :width: 500px

   The physics settings.


You can now bake the simulation, give the cube materials and textures and render the animation.


The Result
----------

The rendered bouncing cube:

.. only:: builder_html and (not singlehtml)

   .. youtube:: 3PzgB9jw9iA

.. only:: not builder_html and (singlehtml)

   A video can be found at https://www.youtube.com/watch?v=3PzgB9jw9iA
