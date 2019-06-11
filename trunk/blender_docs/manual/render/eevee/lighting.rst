
**************
Light Settings
**************

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Properties --> Light`

Next to lighting from the background and any object with an emission shader,
lamps are another way to add light into the scene.
The difference is that they are not directly visible in the rendered image,
and can be more easily managed as objects of their own type.


Common
======

Specular
   Specular Light intensity multiplier. Use it for more artistic control.
   Setting this to anything but 1.0 will yield non-photorealistic result.
Custom Distance
   If enabled uses *Distance* as the custom attenuation distance instead of global light threshold.

   Distance
      Specifies where light influence will be set to 0.

   .. seealso::

      :doc:`Light Threshold </render/eevee/shadows>`.

.. note::

   The light's *Power*/*Strength* affect both specular and diffuse light.


Light Types
===========

Point Light
-----------

Point lights emit light equally in all directions.
By setting the *Size* larger than zero, they become spherical lights,
which give softer shadows (TODO2.8 link soft shadows) and shading.

.. seealso::

   :ref:`Point Lights <light-type-point>`.


Spot Light
----------

Spot lights emit light in a particular direction, inside a cone.
By setting the *Size* larger than zero, they can cast softer shadows (TODO2.8 link soft shadows) and shading.

.. note::

   Unlike in Cycles the *Size* of the light does not change the softness of the cone.

.. seealso::

   :ref:`Spot Lights <light-type-spot>`.


Area Light
----------

Area lights emit light from a rectangular or elliptic area.

.. seealso::

   :ref:`Area Lights <light-type-area>`.


Sun Light
---------

Sun lights emit light in a given direction. Their position is not taken into account;
they are always located outside of the scene, infinitely far away,
and will not result in any distance falloff.

However, their position is taken into account for shadowing. See :ref:`eevee-cascaded-shadow-map`.

Because they are not located inside the scene, their strength uses different units,
and should typically be set to lower values than other lights.

.. seealso::

   :ref:`Sun Lights <light-type-sun>`.
