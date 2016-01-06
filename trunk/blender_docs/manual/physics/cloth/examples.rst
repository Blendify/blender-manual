
********
Examples
********

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
=======================================

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
==================

Now, if you followed this from the previous section, your cloth is probably looking a little blocky.
In order to make it look nice and smooth like the picture you need to apply a *Smooth* and/or *Subsurf*
modifier in the *Modifiers* panel under the *Editing* context. Then, in the same context,
find the *Links and Materials* panel (the same one you used for vertex groups) and press *Set Smooth*.

Now, if you press :kbd:`Alt-A`, things are starting to look pretty nice, don't you think?


Cloth on armature
=================

Cloth deformed by armature and also respecting an additional collision object:
`Regression blend file <http://wiki.blender.org/index.php/Media:Cloth-regression-armature.blend>`__.


Cloth with animated vertex groups
=================================

Cloth with animated pinned vertices:
`Regression blend file <http://wiki.blender.org/index.php/Media:Cloth_anim_vertex.blend>`__.
UNSUPPORTED: Starting with a goal of 0 and increasing it,
but still having the vertex not pinned will not work (e.g. from goal = 0 to goal = 0.5).


Cloth with Dynamic Paint
========================

Cloth with Dynamic Paint using animated vertex groups:
`Regression blend file <http://wiki.blender.org/index.php/Media:Cloth_dynamic_paint.blend>`__.
UNSUPPORTED: Starting with a goal of 0 and increasing it, but still having the vertex not pinned will not work
(e.g. from goal = 0 to goal = 0.5) because the necessary "goal springs" cannot be generated on the fly.


Using Cloth for Softbodies
==========================

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
===============

.. figure:: /images/Cloth-flag2.jpg
   :width: 200px

   Flag with wind applied.


Regression blend file for Cloth with wind and self collisions (also the blend for the image above):
`Cloth flag with wind and selfcollisions <http://wiki.blender.org/index.php/Media:Cloth-flag2.blend>`__.
