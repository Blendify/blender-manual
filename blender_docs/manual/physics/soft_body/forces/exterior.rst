
********
Exterior
********

Exterior forces are applied to the vertices (and nearly exclusively to the vertices)
of soft body objects. This is done using Newton's Laws of Physics:

- If there is no force on a vertex, it stays either unmoved or moves with constant speed in a straight line.
- The acceleration of a vertex depends on its mass and the force.
  The heavier the mass of a vertex the slower the acceleration. The larger the force the greater the acceleration.
- For every action there is an equal and opposite reaction.

Well, this is done only in the range of computing accurateness,
there is always a little damping to avoid overshoot of the calculation.


Example
=======

We will begin with a very simple example: the default cube.

- To judge the effect of the external forces you should at first turn off the *Goal*,
  so that the vertices are not retracted to their original position.
- Press :kbd:`Alt-A`.

What happens? The cube moves in negative Z direction.
Each of its eight vertices is affected by a global, constant force -- the gravitation.
Gravitation without friction is independent from the weight of an object,
so each object you would use as a soft body here would fall with the same acceleration.
The object does not deform,
because every vertex moves with the same speed in the same direction.


Settings
========

Soft Body Panel
---------------

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Physics --> Soft Body`


Object
^^^^^^

Friction
   The friction of the surrounding medium.
   The larger the friction, the more viscous is the medium.
   Friction always appears when a vertex moves relative to its surround medium.
Mass
   Mass value for vertices.
   Larger mass slows down acceleration, except for gravity where the motion is constant regardless of mass.
   Larger mass means larger inertia, so also braking a soft body is more difficult.
Mass: Vertex Group
   You can paint weight values for a mesh's mass, and select that vertex group here.


Simulation
^^^^^^^^^^

Speed
   You can control the internal timing of the soft body system with this value.
   It sets the correlation between frame rate and tempo of the simulation.
   A free falling body should cover a distance of about five meters after one second.
   You can adjust the scale of your scene and your simulation with this correlation. If you
   render with 25 frames per second and 1 meter shall be 1 BU, you have to set *Speed* to 1.3.


Force Fields
------------

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Physics --> Soft Body Field Weights`

To create other forces you have to use another object,
often *Empty* objects are used for that.
You can use some of the forces on soft body vertices as on *Particles*.
Soft bodies react only to:

- Spherical
- Wind
- Vortex

Soft bodies do react on *Harmonic* fields, but not in a useful way.
So if you use a *Harmonic* field for particles move the soft body to another layer.

See the section :doc:`Force Fields </physics/force_fields/index>` for details.
The force fields are quite strong,
a *Spherical* field with a strength of -1.0 has the same effect that gravity has --
approximately -- a force of 10 Newtons.


Aerodynamics
------------

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Physics --> Soft Body Edges`

This special exterior force is not applied to the vertices but to the connecting edges.
Technically, a force perpendicular to the edge is applied.
The force scales with the projection of the relative speed on the edge (dot product).
Note that the force is the same if wind is blowing or if you drag the edge through the air
with the same speed. That means that an edge moving in its own direction feels no force,
and an edge moving perpendicular to its own direction feels maximum force.

Type
   Simple
      Edges receive a drag force from surrounding media.
   Lift Force
      Edges receive a lift force when passing through surrounding media.
Factor
   How much aerodynamic force to use. Try a value of 30 at first.


Goal
----

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Physics --> Soft Body Goal`

A goal is a shape that a soft body object tries to conform to.

You have to confine the movement of vertices in certain parts of the mesh, e.g.
to attach a soft body object at other objects. This is done with the *vertex group*
(target). The target position is the original position of the vertex, like it would result
from the "normal" animation of an object including *shape keys*,
*hooks* and *armatures*.
The vertex tries to reach its target position with a certain, adjustable intensity.

.. _fig-softbody-force-exterior-shock:

.. figure:: /images/physics_soft-body_forces_exterior_shockabs.png
   :width: 320px

   Shock absorber description.

Imagine the vertex is connected with its target through a spring Fig. :ref:`fig-softbody-force-exterior-shock`.


Goal Strength
^^^^^^^^^^^^^

Default
   This parameter defines how strong the influence of this spring is. A strength of 1 means,
   that the vertex will not move as soft body at all, instead keep its original position. 0 *Goal*
   (or no *Goal*) means, that the vertex moves only according to soft body simulation.
   If no vertex group is used/assigned, this number button is the default goal weight for all vertices.
   If a vertex group is present and assigned,
   this button instead shows a list field, that allows you to choose the name of the goal vertex group.
   If you use a vertex group the weight of a vertex defines its goal.

   Often :ref:`painting-weight-index` is used to adjust the weight comfortably.
   For non-mesh objects the *Weight* parameter of their vertices/control points is used instead
   (:kbd:`W` in *Edit Mode*) or use the *Transform* panel.
   The weight of *Hair* particles can also be painted in :doc:`Particle Edit Mode </physics/particles/mode>`.

Minimum / Maximum
   When you paint the values in vertex groups (using *Weight Paint Mode*),
   you can use the *G Min* and *G Max* to fine-tune (clamp) the weight values.
   The lowest vertex weight (blue) will become *G Min*, the highest value
   (red) becomes *G Max* (please note that the blue-red color scale may be altered by User Preferences).

.. tip:: For now all is applied to single vertices

   For now we have discussed vertex movement independent of each other, similar to particles.
   Every object without *Goal* would collapse completely if a non-uniform force is applied.
   Now we will move to the next step,
   the forces that keep the structure of the object and make the soft body to a real body.


Goal Settings
^^^^^^^^^^^^^

Stiffness
   The spring stiffness for Goal. A low value creates very weak springs
   (more flexible "attachment" to the goal), a high value creates a strong spring
   (a stiffer "attachment" to the goal).
Damping
   The friction of the spring. With a high value the movement will soon come to an end (little jiggle).
