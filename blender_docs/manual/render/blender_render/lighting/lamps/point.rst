.. _bpy.types.PointLamp:

*****
Point
*****

.. figure:: /images/render_blender-render_lighting_lamps_point_viewport.png
   :width: 260px

   Point lamp.

The *Point* lamp is an omni-directional point of light,
that is, a point radiating the same amount of light in all directions.
It's visualized by a plain, circled dot.
Being a point light source, the direction of the light hitting an object's surface
is determined by the line joining the lamp and the point on the surface of the object itself.
It can be used as simple model of e.g. a light bulb.

Light intensity/energy decays based on (among other variables)
distance from the *Point* lamp to the object. In other words,
surfaces that are further away are rendered darker.


Lamp Options
============

Distance, Energy and Color
   These settings are common to most types of lamps, and are described in
   :doc:`Light Properties </render/blender_render/lighting/lights/lamp_panel>`.

Negative, This Layer Only, Specular, and Diffuse
   These settings control what the lamp affects, as described in
   :ref:`What Light Affects <bi-lamp-influence>`.

Falloff and Sphere
   These settings control how the light of the *Lamp* decays with distance.
   See :doc:`Light Attenuation </render/blender_render/lighting/lights/attenuation>` for details.


Shadows
=======

.. figure:: /images/render_blender-render_lighting_lamps_point_panel-no-shadow.png
   :width: 285px

   Without ray shadows.

.. figure:: /images/render_blender-render_lighting_lamps_point_panel-ray-shadow.png
   :width: 285px

   Point lamp with ray shadows and Adaptive QMC sample generator enabled.

The *Point* light source can only cast ray-traced shadows.
It shares with other lamp types the common shadow options described in
:doc:`/render/blender_render/lighting/shadows/shadow_panel`.

The ray-traced shadows settings of this lamp are shared with other lamps,
and are described in :doc:`Ray-traced Properties </render/blender_render/lighting/shadows/raytraced_properties>`.
