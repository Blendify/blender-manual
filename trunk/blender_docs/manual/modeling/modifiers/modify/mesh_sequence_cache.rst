.. index:: pair: Modifier; Mesh Sequence Cache

****************************
Mesh Sequence Cache Modifier
****************************

The *Mesh Sequence Cache Modifier* is used to **TODO**.
Despite its name, this modifier supports meshes and curves.
It also handles file sequences, as well as meshes and curves with varying number of vertices/control points.


Options
=======

Cache File
   Data-block menu to select the Alembic file.

   File Path
      Path to Alembic file.

Is sequence
   Whether or not the cache is separated in a series of files.

Override Frame
   Whether to use a custom frame for looking up data in the cache file,
   instead of using the current scene frame.

   Frame
      The time to use for looking up the data in the cache file,
      or to determine which to use in a file sequence.

Manual Transform Scale
   Value by which to enlarge or shrink the object with respect to the world's origin.
   (only applicable through a
   :doc:`Transform Cache Constraint </rigging/constraints/transform/transform_cache>`)

Object Path
   The path to the Alembic object inside the archive.

*Verts/Faces/UV/Color*
   Type of data to read for a mesh object respectively: vertices,
   polygons, UV layers and Vertex Color layers.
