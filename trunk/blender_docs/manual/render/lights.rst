
******
Lights
******

Lighting is a very important topic in rendering.
The most accurately modeled and textured scene will yield poor results without a proper lighting scheme,
while a simple model can become very realistic if skillfully lit.

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode
   :Editor:    :menuselection:`Properties --> Light`

.. seealso::

   - :doc:`Eevee Lighting </render/eevee/lighting>`
   - :doc:`Cycles Lighting </render/cycles/light_settings>`


Light
=====

Type
   Defines the physical light shape, see: :ref:`light-type`.

Color
   The color of the light source's illumination.
Power/Strength
   Each light type has its own way to control the intensity of the light.

   .. note::

      While this value can be negative, it will break the rules for conservation of energy
      and will no longer be physically based (PBR).
Radius/Size/Angle
   Each light type has some way to control the physical size of the virtual light;
   increasing this will result in softer shadows and shading.



Shadow
======

Clip Start
   TODO2.8.
Softness
   TODO2.8.
Bias
   TODO2.8.
Exponent
   TODO2.8.
Bleet Bias
   TODO2.8.
Contact Shadows
   TODO2.8.


.. _light-type:

Light Types
===========

.. _light-type-point:
.. _bpy.types.PointLight:

Point Light
^^^^^^^^^^^

.. figure:: /images/render_blender-render_lighting_lamps_point_viewport.png
   :align: right
   :width: 260px

   Point light.

The *Point* light is an omni-directional point of light,
that is, a point radiating the same amount of light in all directions.
It's visualized by a plain, circled dot.
Being a point light source, the direction of the light hitting an object's surface
is determined by the line joining the light and the point on the surface of the object itself.
It can be used as simple model of e.g. a light bulb.

Light intensity/energy decays based on (among other variables)
distance from the *Point* light to the object. In other words,
surfaces that are further away will be rendered darker.


.. _light-type-sun:
.. _bpy.types.SunLight:

Sun Light
^^^^^^^^^

A sun light provides light of constant intensity emitted in a single direction from infinitely far away.
A sun light can be very handy for a uniform clear daylight open-space illumination. In the 3D View,
the *Sun* light is represented by an encircled black dot with rays emitting from it,
plus a dashed line indicating the direction of the light.

.. note::

   This direction can be changed by rotating the *Sun* light, like any other object,
   but because the light is emitted from a location considered infinitely far away,
   the location of a *Sun* light does not affect the rendered result.

Color, Strength
   These settings are common to most types of lights, and are described in
   :doc:`Light Properties </render/lights>`.
Angle
   The size of the sun light according to its
   `angular diameter <https://en.wikipedia.org/wiki/Angular_diameter#Use_in_astronomy>`__
   as seen from earth.


.. _light-type-spot:
.. _bpy.types.SpotLight:

Spot Light
^^^^^^^^^^

A *Spot* light emits a cone-shaped beam of light from the tip of the cone,
in a given direction.

Distance, Energy and Color
   These settings are common to most types of lights.

Spot Shape

   .. figure:: /images/render_blender-render_lighting_lamps_spot_introduction_terms.png
      :width: 610px

      Changing the Spot options also changes the appearance of the spotlight as displayed in the 3D View.

Size
   The size of the outer cone of a *Spot*,
   which largely controls the circular area a *Spot* light covers.
   This slider in fact controls the angle at the top of the lighting cone,
   and can be between (1.0 to 180.0).

   .. list-table::
      Changing the spot *Size* option.

      * - .. figure:: /images/render_blender-render_lighting_lamps_spot_introduction_size45.png
             :width: 320px

        - .. figure:: /images/render_blender-render_lighting_lamps_spot_introduction_size60.png
             :width: 320px

Blend
   The *Blend* slider controls the inner cone of the *Spot*.
   The *Blend* value can be between (0.0 to 1.0).
   The value is proportional and represents that amount of space that the inner cone should
   occupy inside the outer cone *Size*.

   The inner cone boundary line indicates the point at which light from the *Spot* will start to blur/soften;
   before this point its light will mostly be full strength.
   The larger the value of *Blend* the more blurred/soft the edges of the spotlight will be,
   and the smaller the inner cone's circular area will be (as it starts to blur/soften earlier).

   To make the *Spot* have a sharper falloff rate and therefore less blurred/soft edges,
   decrease the value of *Blend*.
   Setting *Blend* to 0.0 results in very sharp spotlight edges, without any transition between light and shadow.

   The falloff rate of the *Spot* light light is a ratio between the *Blend* and *Size* values;
   the larger the circular gap between the two, the more gradual the light fades between *Blend* and *Size*.

   *Blend* and *Size* only control the *Spot* light cone's aperture and softness ("radial" falloff);
   they do not control the shadow's softness as shown below.

   .. figure:: /images/render_blender-render_lighting_lamps_spot_introduction_shadow-spotlight.png
      :width: 400px

      Render showing the soft edge spotlighted area and the sharp/hard object shadow.

   Notice in the picture above that the object's shadow is sharp as a result of the ray tracing,
   whereas the spotlight edges are soft.
   If you want other items to cast soft shadows within the *Spot* area, you will need to alter other shadow settings.
Show Cone
   Draw a transparent cone in 3D View to visualize which objects are contained in it.


.. _light-type-area:
.. _bpy.types.AreaLight:

Area Light
^^^^^^^^^^

The *Area* light simulates light originating from a surface (or surface-like) emitter.
For example, a TV screen, office neon lights, a window,
or a cloudy sky are just a few types of area light. The area light produces shadows with
soft borders by sampling a light along a grid the size of which is defined by the user.
This is in direct contrast to point-like artificial lights which produce sharp borders.

Shape
   Shape of the light.

   Rectangle
      The shape of the light can be represented as a rectangle and changed with the "X" and "Y" values.
   Square
      The shape of the light can be represented as a square and changed with the *Size* property.
   Disk
      The shape of the light can be represented as a disk and changed with the *Size* property.
   Ellipse
      The shape of the light can be represented as an ellipse and changed with the X and Y values.

   .. tip::

      Choosing the appropriate shape for your *Area* light will enhance the believability of your scene.
      For example, you may have an indoor scene and would like to simulate light entering through a window.
      You could place a *Rectangular* area light in a window (vertical) or from neons (horizontal)
      with proper ratio for *Size X* and *Size Y*. For the simulation of the light emitted by
      a TV screen, a vertical *Square* area light would be better in most cases.

Size / Size X / Size Y
   Dimensions for the *Square* or *Rectangle*.
