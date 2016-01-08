..    TODO/Review: {{review}} .

*************
Fluid Control
*************

Description
===========

Using the Lattice-boltzman method, the fluid is controlled using particles which define local
force fields and are generated automatically from either a physical simulation or a sequence
of target shapes. At the same time,
as much as possible of the natural fluid motion is preserved.


.. youtube:: WruTNnF6Ztg


Examples
========

In this examples,
we use the Fluid Control option to control part of the fluid so that it has a certain shape
(the sphere drop or the teapot drop) before it falls in the rest of the fluid:


.. figure:: /images/fluidsim-example2.jpg

   Falling drop


.. figure:: /images/Fluidcontrol-banner.jpg

   "Magic Fluid Control"


Options
=======

.. figure:: /images/Fluid_controloptions.jpg

   Fluid control options.


Quality
   Higher quality result in more control particles for the fluid control object.

Reverse Frames
   The control particle movement gets reversed.

Time
   You specify the start and end time during which time the fluid control object is active.

Attraction force
   The attraction force specifies the force which gets emitted by the fluid control object.
   Positive force results in attraction of the fluid, negative force in avoidance.

Velocity force
   If the fluid control object moves, the resulting velocity can also introduce a force to the fluid.
