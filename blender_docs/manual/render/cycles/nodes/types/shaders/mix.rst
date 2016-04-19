
***
Mix
***

Mix or add shaders together. Mixing can be used for material layering,
where the *Fac* input may, for example, be connected to a Blend Weight node.

Shader inputs
   Shaders to mix, such that incoming rays hit either with the specified probability in the *Fac* socket.
Fac input
   Blend weight to use for mixing two shaders;
   at zero it uses the first shader entirely and at one the second shader.
Shader output
   Mixed shader.


.. figure:: /images/cycles_nodes_shader_mix.jpg

   A mix of a glossy and a diffuse shader makes a nice ceramic material.
