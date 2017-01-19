
***********************
Navigation Mesh Physics
***********************

Path-finding in Blender is based on the concept of `navigation meshes <http://en.wikipedia.org/wiki/Navigation_mesh>`.
Now you can create navigation mesh for your level geometry directly in Blender and use it in Blender Game Engine (BGE)
to get your actors to find path to the target and move along it. Besides path following,
there are also a few other steering behaviors which can be assigned to the actor: *seek* and *flee*.
Path-finding with navigation mesh is effective for big static obstacles.
To enable actors to avoid small dynamic objects during their movement local obstacle avoidance can be used.
If the obstacle simulation is enabled the actor will try to choose direction which is free of collision
with obstacles on each frame during execution one of the steering behaviors.


.. move to a scene page?

Scene Settings
==============

Rasterization
   Cell size
      rasterized cell size.
   Cell height
      rasterized cell height.
Agent
   Height
      Minimum height where the agent can still walk.
   Radius
      Radius of the agent.
   Max climb
      Maximum height between grid cells the agent can climb.
   Max slope
      Maximum walkable slope angle in degrees.
Region
   Min Region Size
      Minimum regions size. Smaller regions will be deleted.
   Merged Region Size
      Minimum regions size. Smaller regions will be merged.
Partitioning
   Watershed
      Classic Recast partioning method generating the nicest tessellation.
   Monotone
      The fastest navmesh generation method, but may cause long thin polygons.
   Layers
      A reasonably fast method that produces better triangles than monotone partitioning.
Polygonization
   Max Edge Length
      Maximum contour edge length.
   Max Edge Error
      Maximum distance error from contour to cells.
   Verts Per Poly
      Max number of vertices per polygon.
Detail Mesh
   Sample Distance
      Detail mesh sample spacing.
   Max Sample Error
      Detail mesh simplification max sample error.


Options
=======

NavMesh Copy Face Index
   Copies the navigation polygon index from the active face to selected faces.
NavMesh New Face Index
   Adds a new navigation polygon index to selected faces.

NavMesh Reset Index Values
   Assigns a new index to every faces.
NavMesh Clear Data
   Removes the navigation data from the mesh.
