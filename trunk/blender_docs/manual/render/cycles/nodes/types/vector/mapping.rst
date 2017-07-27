.. _bpy.types.ShaderNodeMapping:

************
Mapping Node
************

The *Mapping Node* is used to transform an image or procedural texture.
For example, you can use it to move, rotate, or scale textures.
If you have ever down any UV editing in the past than you will likly
know that these can also be accomplished by modifing an object's UVs in the
:doc:`UV/Image editor </editors/uv_image/uv_editing/index>`. However,
it is sometimes useful to have easy access to these functions through
nodes rather then having to modify the UVs. One oexample of this might be
when you have several textures which each needs to be transformed indidually
e.g. decals on an object.

.. figure:: /images/render_blender-render_materials_nodes_vector_mapping.png

   Mapping node.


Inputs
======

Vector
   Vector to be transformed, usually this is inputed from a
   :doc:`Texture Coordinate node </render/cycles/nodes/types/input/texture_coordinate>`.


Properties
==========

Vector type
   Allows the user to choose which vector type to use.

   Texture
      This is the most common option that you will use and will be sufficiant for most cases.
   Point
      This works similar to *Texture* but the way the math works
      the *Scale* values are divided rather then multiplied.
   Vector
      Behaves the same as *Point* mode but changes in *Location*
      are ignored -- that is, the texture does not move.
   Normal
      Transforms a normal vector with unit length.

Location
   Vector translation.
Rotation
   Rotation of the vector along XYZ axes.
Scale
   Scale of the vector, in *Point* and *Vector* modes, a value of 2.0 will halve the texture size,
   while in *Texture* mode the size is double.

Min/Max
   Normalizes the *Location*, *Rotation*,
   and *Scale* values to fit within the specified XYZ values.


Outputs
=======

Vector
   Transformed vector, usualy gets connected to some sort of
   :doc:`Texture node </render/cycles/nodes/types/textures/index>`.


Examples
========

Todo.
