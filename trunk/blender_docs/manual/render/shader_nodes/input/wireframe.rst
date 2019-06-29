.. _bpy.types.ShaderNodeWireframe:

**************
Wireframe Node
**************

.. figure:: /images/render_shader-nodes_input_wireframe_node.png
   :align: right

   Wireframe Node.

The *Wireframe node* is used to retrieve the edges of an object as it appears to Cycles.
As meshes are triangulated before being processed by Cycles,
topology will always appear triangulated when viewed with the *Wireframe node*.


Inputs
======

This node has no inputs.


Properties
==========

Pixel Size
   When enabled, the size of edge lines is set in screen space.
Size
   Thickness of the edge lines.


Outputs
=======

Factor
   Black-and-white mask showing white lines representing edges according to the object's :term:`topology`.


Examples
========

Todo <2.8 add.
