
****
Boid
****

.. figure:: /images/force_field_type_boid.jpg
   :width: 400px

   Boid force field.

Boid probably comes from theoretical works. *Boids* is an artificial life program,
developed by Craig Reynolds in 1986, which simulates the flocking behavior of birds.
His paper on this topic was published in 1987 in the proceedings of the ACM SIGGRAPH conference.
The name refers to a "bird-like object",
but its pronunciation evokes that of "bird" in a stereotypical New York accent.
As with most artificial life simulations, Boids is an example of emergent behavior; that is,
the complexity of Boids arises from the interaction of individual agents (the boids,
in this case) adhering to a set of simple rules.

.. figure:: /images/force_field_panel_boid.jpg
   :width: 400px

   UI for a Boid force field.

The rules applied in the simplest Boids world are as follows:
separation: steer to avoid crowding local flockmates
alignment: steer towards the average heading of local flockmates
cohesion: steer to move toward the average position (center of mass) of local flockmates
More complex rules can be added, such as obstacle avoidance and goal seeking.
