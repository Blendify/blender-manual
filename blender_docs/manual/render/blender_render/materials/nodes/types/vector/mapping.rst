
************
Mapping Node
************

.. figure:: /images/render_blender-render_materials_nodes_vector_mapping.png

   Mapping node.

Essentially mapping node allows the user to modify a mapping of system of 3D-coordinates.
Mapping can be rotated and clamped if desired.

Typically used for modifying texture coordinates.


Inputs
======

Vector
   Standard vector input.


Properties
==========

The controls of the node have been ordered in X, Y, Z order.
Clamping can be enabled by Min and Max.

Vector type
   Type of vector that the mapping transforms.

   Texture
      Transform a texture by inverse mapping the texture coordinates.
   Point
      Transform a point.
   Vector
      Transform a direction vector.
   Normal
      Transform a normal vector with unit length.

Location
   Transform position vector.
Rotation
   Transform rotation vector.
Scale
   Transform scale vector.

Min
   Minimum clipping value.
Max
   Maximum clipping value.


Outputs
=======

Vector
   Standard vector output.
