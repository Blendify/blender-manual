
************
Introduction
************

Physics allows you to simulate real world physical phenomena.
Blender offers a variety for different physics,
for example you can use Blender to simulate to following kinds of simulation.


Gravity
=======

Gravity is a global setting that is applied the same to all physics systems in a scene,
which can be found in the scene tab. This value is generally fine left at its default value,
at ``-9.810`` in the Z axis, which is the force of gravity in the real world.
Lowering this value would simulate a lower or higher force of gravity.
Gravity denoted g, measurement [m×s :sup:`-2`]).

Gravity is practically same around whole **Earth**.
For rendering scenes from **Moon** use value 6 times smaller, e.g. ``1.622`` m×s :sup:`-2`.
The most popular and probably not colonized **Mars** has ``g = 3.69``.

Note that you can scale down the gravity value per physics system in the *Field Weights tab.*
