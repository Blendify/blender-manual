..    TODO/Review: {{review|im= examples}}.

************
Introduction
************

A *Sun* lamp provides light of constant intensity emitted in a single direction from very far away.
A *Sun* lamp can be very handy for a uniform clear daylight open-space illumination.
In the 3D View,
the *Sun* light is represented by an encircled black dot with rays emitting from it,
plus a dashed line indicating the direction of the light.

This direction can be changed by rotating the *Sun* lamp, like any other object,
but because the light is emitted in a constant direction,
the location of a *Sun* lamp does not affect the rendered result (unless you use the
:doc:`"sky & atmosphere" option </render/blender_render/lighting/lamps/sun/sky_atmosphere>`).

.. figure:: /images/render_blender-render_lighting_lamps_sun_introduction_panel.jpg
   :width: 304px

   Sun lamp panel.


Lamp Options
============

Energy and Color
   These settings are common to most types of lamps, and are described in
   :doc:`Light Properties </render/blender_render/lighting/lights/lamp_panel>`.
Negative, This Layer Only, Specular, and Diffuse
   These settings control what the lamp affects, as described in
   :ref:`What Light Affects <bi-lamp-influence>`.

The *Sun* lamp has no light falloff settings: it always uses a constant attenuation
(i.e. no attenuation!).


Sky & Atmosphere
================

.. figure:: /images/render_blender-render_lighting_lamps_sun_sky-atmosphere_panel.png

   Sky & Atmosphere panel.

Various settings for the appearance of the sun in the sky,
and the atmosphere through which it shines, are available. For details, see
:doc:`Sky and Atmosphere </render/blender_render/lighting/lamps/sun/sky_atmosphere>`.


Shadow
======

.. figure:: /images/render_blender-render_lighting_lamps_sun_introduction_shadow-panel.jpg
   :width: 304px

   Shadow panel.

The *Sun* light source can only cast ray-traced shadows.
It shares with other lamp types the same common shadowing options,
described in :doc:`/render/blender_render/lighting/shadows/shadow_panel`.

The ray-traced shadows settings of this lamp are shared with other lamps,
and are described in :doc:`Raytraced Properties </render/blender_render/lighting/shadows/raytraced_properties>`.
