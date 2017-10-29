.. _bpy.types.ShaderNodeCameraData:

****************
Camera Data Node
****************

.. figure:: /images/render_cycles_nodes_types_input_camera-data_node.png
   :align: right

   Camera Data Node.

The *Camera Data* node is used for getting information about what
the camera is viewing in order to achieve different effects.

.. Add more explanation of what it is and how it works (TODO).
   http://blender.stackexchange.com/questions/27764


Inputs
======

This node has no inputs.


Properties
==========

This node has no properties.


Outputs
=======

View Vector
   A Camera space vector from the camera to the shading point.
View Z Depth
   The distance each pixel is away from the camera.
View Distance
   Distance from the camera to the shading point.
