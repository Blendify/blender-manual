
**************
Lamps Textures
**************

.. figure:: /images/Lighting-Lights-Texture-Panels.jpg
   :width: 307px

   Lamp Texture panels


When a new lamp is added, it produces light in a uniform, flat color.
While this might be sufficient in simple renderings,
more sophisticated effects can be accomplished through the use of
:doc:`textures </render/blender_render/textures/index>`.
Subtle textures can add visual nuance to a lamp, while hard textures can be used to simulate more pronounced effects,
such as a disco ball, dappled sunlight breaking through treetops, or even a projector.
These textures are assigned to one of ten channels, and behave exactly like material textures,
except that they affect a lamp's color and intensity, rather than a material's surface characteristics.


Options
=======

The lamp textures settings are grouped into two panels.
Here we will only talk about the few things that differ from object material textures;
see the :doc:`Materials </render/blender_render/materials/index>` and
:doc:`Textures </render/blender_render/textures/index>` chapters for details about the standard options.

The texture-specific and the *Mapping* panels remain the same. However, you'll note
there are much fewer *Mapping* options - you can only choose between
*Global*,
*View* or another *Object* 's texture *coordinates*
(since a lamp has no texture coordinates by itself), and you can scale or offset the texture.

The *Mapping* panel is also a subset of its regular material's counterpart.
You can only map a lamp texture to its regular,
basic *Color* and/or to its *Shadow* color. As you can only affect colors,
and a lamp has no texture coordinates on its own, the *Diffuse*,
*Specular*, *Shading*, and *Geometry* options have disappeared.


