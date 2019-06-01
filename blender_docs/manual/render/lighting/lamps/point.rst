.. _bpy.types.PointLight:

*****
Point
*****

.. figure:: /images/render_blender-render_lighting_lamps_point_viewport.png
   :align: right
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

.. seealso::

   - :doc:`EEVEE Lighting </render/eevee/lamps>`
   - :doc:`Cycles Lighting </render/cycles/lamps>`
   - :doc:`Workbench Lighting </render/workbench/lighting>`


Lamp Options
============

Color, Power, Radius
   These settings are common to most types of lamps, and are described in
   :doc:`Light Properties </render/lighting/lamp_panel>`.
