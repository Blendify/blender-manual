
********
Interior
********

.. _fig-softbody-force-interior-connection:

.. figure:: /images/physics_bsod-softbody-theory1.jpg
   :width: 200px

   Vertices and forces along their connection edges.


To create a connection between the vertices of a Soft Body object there have to be forces that
hold the vertices together. These forces are effective along the edges in a mesh,
the connections between the vertices. The forces act like a spring. Fig. :ref:`fig-softbody-force-interior-connection`
illustrates how a 3×3 grid of vertices (a mesh plane in Blender)
are connected in a Soft Body simulation.

But two vertices could freely rotate if you do not create additional edges between them.
Have you ever tried building a storage shelf out of four planks alone? Well, do not do it,
it will not be stable. The logical method to keep a body from collapsing would be to create
additional edges between the vertices. This works pretty well,
but would change your mesh topology drastically.

.. _fig-softbody-force-interior-stiff:

.. figure:: /images/physics_bsod-softbody-theory2.jpg
   :width: 200px

   Additional forces with Stiff Quads enabled.


Luckily, Blender allows to define additional *virtual* connections.
On one hand we can define virtual connections between the diagonal edges of a quad face
(*Stiff Quads* Fig. :ref:`fig-softbody-force-interior-stiff`), on the other hand we can define virtual connections
between a vertex and any vertices connected to its neighbors
*Bending Stiffness*. In other words, the amount of bend that is allowed between a
vertex and any other vertex that is separated by two edge connections.


Edges Settings
==============

The characteristics of edges are set with the *Soft Body Edge* properties.

Use Edges
   Allow the edges in a Mesh Object to act like springs.

Pull
   The spring stiffness for edges (how much the edges are allowed to stretch). A low value means very weak springs
   (a very elastic material), a high value is a strong spring (a stiffer material) that resists being pulled apart.
   0.5 is latex, 0.9 is like a sweater, 0.999 is a highly-starched napkin or leather.
   The Soft Body simulation tends to get unstable if you use a value of 0.999,
   so you should lower this value a bit if that happens.
Push
   How much the Softbody resist being scrunched together,
   like a compression spring. Low values for fabric, high values for inflated objects and stiff material.
Damp
   The friction for edge springs. High values (max of 50) dampen the *Push* / *Pull* effect and calm down the cloth.
Plastic
   Permanent deformation of the object after a collision.
   The vertices take a new position without applying the modifier.
Bending
   This option creates virtual connections between a vertex and the vertices connected to its neighbors.
   This includes diagonal edges. Damping also applies to these connections.
Length
   The edges can shrink or been blown up. This value is given in percent,
   0 disables this function. 100% means no change, the body keeps 100% of his size.

Stiff Quads
   For quad faces, the diagonal edges are used as springs.
   This stops quad faces to collapse completely on collisions (what they would do otherwise).
Shear
   Stiffness of the virtual springs created for quad faces.


Preventing Collapse
-------------------

To show the effect of the different edge settings we will use two cubes
(blue: only quads, red: only tris) and let them fall without any goal onto a plane
(how to set up collision is shown on the page :doc:`Collisions </physics/soft_body/collisions>`).

.. _fig-softbody-force-interior-without:

.. list-table:: Without Stiff Quads.

   * - .. figure:: /images/physics_quadvstri-sb-0001.jpg
          :width: 200px

          Frame 1.

     - .. figure:: /images/physics_quadvstri-sb-0036.jpg
          :width: 200px

          Frame 36.

     - .. figure:: /images/physics_quadvstri-sb-0401.jpg
          :width: 200px

          Frame 401.


In Fig. :ref:`fig-softbody-force-interior-without`, the default settings are used (without *Stiff Quads*).
The "quad only" cube will collapse completely, the cube composed of tris keeps its shape,
though it will deform temporarily because of the forces created during collision.


.. _fig-softbody-force-interior-with:

.. list-table:: With Stiff Quads.

   * - .. figure:: /images/physics_quadvstri-sb-0001.jpg
          :width: 200px

          Frame 1.

     - .. figure:: /images/physics_quadvstri-sb-sq-0036.jpg
          :width: 200px

          Frame 36.

     - .. figure:: /images/physics_quadvstri-sb-sq-0401.png
          :width: 200px

          Frame 401.


In Fig. :ref:`fig-softbody-force-interior-with`, *Stiff Quads* is activated (for both cubes).
Both cubes keep their shape, there is no difference for the red cube,
because it has no quads anyway.

.. _fig-softbody-force-interior-bending:

.. list-table:: Bending Stiffness.
   `Blend file <https://wiki.blender.org/index.php/Media:Blender3D Quads-BE-Stiffness.blend>`__

   * - .. figure:: /images/physics_quadvstri-sb-0001.jpg
          :width: 200px

          Frame 1.

     - .. figure:: /images/physics_quadvstri-sb-bs-0036.jpg
          :width: 200px

          Frame 36.

     - .. figure:: /images/physics_quadvstri-sb-bs-0401.png
          :width: 200px

          Frame 401.


The second method to stop an object from collapsing is to change its *Bending Stiffness*.
This includes the diagonal edges (Damping also applies to these connections).

In Fig. :ref:`fig-softbody-force-interior-bending`, *Be* is activated with a strength setting of 1.
Now both cubes are more rigid.


.. list-table::

   * - .. figure:: /images/physics_quadvstri-bending-001.jpg
          :width: 200px

          Two planes going to collide.

     - .. _fig-softbody-force-interior-no-bending:

       .. figure:: /images/physics_quadvstri-bending-101.jpg
          :width: 200px

          No bending stiffness, Frame 101.

     - .. figure:: /images/physics_quadvstri-bending-high-101.jpg
          :width: 200px

          High bending stiffness (10), Frame 101.


Bending stiffness can also be used if you want to make a subdivided plane more plank like.
Without *Be* the faces can freely rotate against each other like hinges
Fig. :ref:`fig-softbody-force-interior-no-bending`.
There would be no change in the simulation if you activated *Stiff Quads*,
because the faces are not deformed at all in this example.

Bending stiffness is the strength needed for the plane to be deformed.
