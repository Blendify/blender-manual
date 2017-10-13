.. _bpy.types.ShaderNodeMixShader:

********
Mix Node
********

.. figure:: /images/render_cycles_nodes_shaders_mix-shader.png
   :align: right

   Mix Node.

The *Mix* node is used to mix two shaders together. Mixing can be used for material layering,
where the *Factor* input may, for example, be connected to a *Blend Weight* node.


Inputs
======

Shader
   Shaders to mix, such that incoming rays hit either with the specified probability in the *Factor* socket.
Factor
   Blend weight to use for mixing two shaders;
   at zero it uses the first shader entirely and at one the second shader.


Properties
==========

This node has no properties.


Outputs
=======

Shader
   Standard shader output.


Examples
========

.. figure:: /images/cycles_nodes_shader_mix_example.jpg

   A mix of a glossy and a diffuse shader makes a nice ceramic material.
