.. _bpy.types.HemiLamp:

*********
Hemi Lamp
*********

.. figure:: /images/render_blender-render_lighting_lamps_hemi_scheme.svg

   Hemi light conceptual scheme.

The *Hemi* lamp provides light from the direction of a 180° hemisphere,
designed to simulate the light coming from very wide and far away light source, 
like a heavily clouded or otherwise uniform sky. In other words, it is a light which is
shed, uniformly, by a glowing dome surrounding the scene.

Similar to the *Sun* lamp, the *Hemi* 's location is unimportant,
while its orientation is key.

The *Hemi* lamp is represented with four arcs,
visualizing the orientation of the hemispherical dome,
and a dashed line representing the direction in which the maximum energy is radiated,
the inside of the hemisphere.


Options
=======

.. figure:: /images/render_blender-render_lighting_lamps_hemi_panel.png
   :width: 307px

   Hemi lamp's panel.

Energy and Color
   These settings are common to most types of lamps, and are described in
   :doc:`Light Properties </render/blender_render/lighting/lights/lamp_panel>`.
Layer, Negative, Specular, and Diffuse
   These settings control what the lamp affects, as described in
   :ref:`What Light Affects <bi-lamp-influence>`.

The *Hemi* lamp has no light falloff settings: it always uses a constant attenuation
(i.e. no attenuation).

Since this lamp is the only lamp which cannot cast any shadow, the *Shadow* panel is absent.
