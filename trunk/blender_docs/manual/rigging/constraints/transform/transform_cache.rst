
**************************
Transform Cache Constraint
**************************

The *Transform Cache Constraint* is ued to be able to stream animations
made at the transformation matrix level (for example rigid bodies, or camera movements).

Options
=======

Cache File
   Data-block selector to select the Alembic file.

   File Path
      Path to Alembic file.

Is sequence
   Whether or not the cache is separated in a series of files.

Override Frame
   Whether to use a cuctom frame for looking up data in the cache file,
   instead of using the current scene frame.

   Frame
      The time to use for looking up the data in the cache file,
      or to determine which to use in a file sequence.

Manual Tranform Scale
   Value by which to enlarge or shrink the object with respect to the world's origin.

Object Path
   The path to the Alembic object inside the archive

*Verts/Faces/UV/Color*
   Type of data to read for a mesh object respectively: vertices,
   polygons, UV layers and Vertex Color layers.
