.. _bpy.types.ShaderNodeObjectInfo:

****************
Object Info Node
****************

.. figure:: /images/render_cycles_nodes_input_object-info.png
   :align: right

   Object Info Node.

The *Object Info* node gives information about the object instance.
This can be useful to give some variation to a single material assigned to multiple instances,
either manually controlled through the object index, based on the object location,
or randomized for each instance. For example a Noise texture can give random colors or a Color
ramp can give a range of colors to be randomly picked from.


Inputs
======

This node has no inputs.


Properties
==========

This node has no properties.


Outputs
=======

Location
   Location of the object in world space.
Object Index
   Object pass index, same as in the Object Index pass.transformed.
Material Index
   Material pass index, same as in the Material Index pass.
Random
   Random number unique to a single object instance.

.. note::

   Note that this node only works for material shading nodes;
   it does nothing for lamp and world shading nodes.
