.. _bpy.types.SunLight:

***
Sun
***

A *Sun* lamp provides light of constant intensity emitted in a single direction from very far away.
A *Sun* lamp can be very handy for a uniform clear daylight open-space illumination. In the 3D View,
the *Sun* light is represented by an encircled black dot with rays emitting from it,
plus a dashed line indicating the direction of the light.

.. note::

   This direction can be changed by rotating the *Sun* lamp, like any other object,
   but because the light is emitted in a constant direction,
   the location of a *Sun* lamp does not affect the rendered result.

.. seealso::

   - :doc:`EEVEE Lighting </render/eevee/lighting>`
   - :doc:`Cycles Lighting </render/cycles/lighting>`
   - :doc:`Workbench Lighting </render/workbench/lighting


Lamp Options
============

Color, Strength
   These settings are common to most types of lamps, and are described in
   :doc:`Light Properties </render/lighting/lamp_panel>`.
Angle
   The size of the sun lamp according to its
   `angular diameter <https://en.wikipedia.org/wiki/Angular_diameter#Use_in_astronomy>`__
    as seen from earth.
