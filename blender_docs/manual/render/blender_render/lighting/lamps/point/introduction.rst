
..    TODO/Review: {{review|im=examples}} .


************
Introduction
************

.. figure:: /images/lighting-lamps-point.jpg
   :width: 200px

   Point lamp


The *Point* lamp is an omni-directional point of light, that is,
a point radiating the same amount of light in all directions. It's visualized by a plain,
circled dot. Being a point light source, the direction of the light hitting an object's
surface is determined by the line joining the lamp and the point on the surface of the object
itself.

Light intensity/energy decays based on (among other variables)
distance from the *Point* lamp to the object. In other words,
surfaces that are further away are rendered darker.


Lamp Options
============

Distance, Energy and Color
   These settings are common to most types of lamps, and are described in
   :doc:`Light Properties </render/blender_render/lighting/lights/light_properties>`.

Negative, This Layer Only, Specular, and Diffuse
   These settings control what the lamp affects, as described in
   :doc:`What Light Affects </render/blender_render/lighting/lights/what_light_affects>`.

Falloff and Sphere
   These settings control how the light of the *Lamp* decays with distance.
   See :doc:`Light Attenuation </render/blender_render/lighting/lights/light_attenuation>` for details.


Shadows
=======

.. figure:: /images/lighting-lamps-point_panel-noshad.jpg
   :width: 307px

   Without ray shadows


.. figure:: /images/lighting-lamps-point_panel-rayshad.jpg
   :width: 307px

   Point lamp with ray shadows and Adaptive QMC sample generator enabled


The *Point* light source can only cast ray-traced shadows.
It shares with other lamp types the common shadow options described in
:doc:`Shadow Properties </render/blender_render/lighting/shadows/properties>`.

The ray-traced shadows settings of this lamp are shared with other lamps,
and are described :doc:`Raytraced Properties </render/blender_render/lighting/shadows/raytraced_properties>`.


