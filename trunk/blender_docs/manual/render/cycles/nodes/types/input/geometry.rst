
********
Geometry
********

.. figure:: /images/cycles_nodes_geometry.png
   :align: right

   Geometry Node.

The *Geometry* node gives geometric information about the current shading point.
All vector coordinates are in *World Space*. For volume shaders,
only the position and incoming vector are available.


Outputs
=======

Position
   Position of the shading point.
Normal
   Shading normal at the surface (includes smooth normals and bump mapping).
Tangent
   Tangent at the surface.
True Normal
   Geometry or flat normal of the surface.
Incoming
   Vector pointing towards the point the shading point is being viewed from.
Parametric
   Parametric coordinates of the shading point on the surface.
Backfacing
   1.0 if the face is being viewed from the back side, 0.0 for the front side.
Pointiness
   An approximation of the curvature of the mesh per-vertex.
   Lighter values indicate convex angles, darker values indicate concave angles.
