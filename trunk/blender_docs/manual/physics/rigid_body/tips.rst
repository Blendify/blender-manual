
****
Tips
****

As with all physics-enabled objects, pay close attention to the *Animated* check box in the *Rigid Body* panel of the
*Physics* context in the *Properties* window. A common mistake is to use keyframe animation on a *Passive* physics
object without checking the *Animated* box. The object will move, but the physics engine will behave as if the
*Passive* is still in its starting place, leading to disappointment.


Animation
=========

The most common trick is to :term:`keyframe` animate the location or rotation of an *Active* physics object as well as
the *Animated* checkbox. When the curve on the *Animated* property switches to disabled, the physics engine takes over
using the object's last known location, rotation and velocities.

Animating the strengths of various other parameters
(a :doc:`Motor's </physics/rigid_body/constraints/types/motor>` Target Velocity,
a :doc:`Hinge's </physics/rigid_body/constraints/types/hidge>` limits, etc)
can be used to accomplish a wide variety of interesting results.

Enabling a constraint during the physics simulation often has dramatic results as the physics engine tries to bring
into alignment two objects which are often dramatically out of alignment. It is very common for the affected objects
to build up enough kinetic energy to bounce themselves out of camera (and into orbit, although the physics engine is
not yet capable of simulating a planet's gravity well, so scratch that).

Rigid Body dynamics can be baking to normal keyframes with *Bake To Keyframes* button in the *Physics* tab of
the *Tool Shelf*.


Simulation Stability
====================

The simplest way of improving simulation stability is to increase the steps per second. However, care has to be taken
since making too many steps can cause problems and make the simulation even less stable (if you need more than 1000
steps, you should look at other ways to improve stability).

Increasing the number of solver iterations helps making constraints stronger and also improves object stacking
stability.

It's best to avoid small objects, as they're currently unstable.
Ideally, objects should be at least 20 cm in diameter.
If it's still necessary, setting the collision margin to 0,
while generally not recommended, can help making small object behave more naturally.

When objects are small and/or move very fast, they can pass through each other. Besides what's mentioned above it's
also good to avoid using mesh shapes in this case. Mesh shapes consist of individual triangles and therefore don't
really have any thickness, so objects can pass through more easily. You can give them some thickness by increasing the
collision margin.


Combining Rigid Bodies with Other Simulations
=============================================

Since the rigid body simulation is part of the animation system, it can influence other simulations just like the
animation system can.

In order for this to work, the rigid body object needs to have a collision modifier.
Simply click on *Collision* in the *Physics* context.


Scaling Rigid Bodies
====================

Rigid body objects can be scaled, also during the simulation. This work well in most cases, but can sometimes cause
problems.

If dynamic scaling is not needed, rigid body objects should have the scale applied by using the *Apply Scale* command
(:kbd:`Ctrl-A`).
