..    TODO/Review: {{review}}.

*************
Fluid Control
*************

Using the Lattice-boltzman method, the fluid is controlled using particles which define local
force fields and are generated automatically from either a physical simulation or a sequence
of target shapes. At the same time,
as much as possible of the natural fluid motion is preserved.


.. youtube:: WruTNnF6Ztg


Options
=======

.. figure:: /images/physics_fluid_types_control.jpg

   Fluid control options.


Quality
   Higher quality result in more control particles for the fluid control object.

Reverse Frames
   The control particle movement gets reversed.

Time
   You specify the time interval (start and end time) during which the fluid control object is active.

Attraction force
   The attraction force specifies the force which gets emitted by the fluid control object.
   Positive force results in attraction of the fluid, negative force in avoidance.

Velocity force
   If the fluid control object moves, the resulting velocity can also introduce a force to the fluid.


Examples
========

In these examples,
we use the Fluid Control option to control part of the fluid so that it has a certain shape
(the sphere drop or the teapot drop) before it falls in the rest of the fluid:

.. figure:: /images/physics_fluid_types_control_example1.jpg

   Falling drop.

.. figure:: /images/physics_fluid_types_control_example2.jpg

   "Magic Fluid Control."
