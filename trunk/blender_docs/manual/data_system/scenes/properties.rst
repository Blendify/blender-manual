
****************
Scene Properties
****************

Scene
=====

Camera
   Used to select which camera is used as the active camera.
Background
   TODO.
Active Clip
   Active movie clip for constraints and viewport drawing.
   

.. _data-scenes-props-units:

Units
=====

Unit Presets
   Common units of measurement to use.

Length
   None
      Uses :term:`Blender Units`.

   Metric/Imperial
      Standard unit of measurement for lengths.

Angle
   Standard unit for angular measurement.
   
   .. tip::

      When you are using *Degrees* the radian value is also displayed in the tooltip.

Unit Scale
   Scale factor to use when converting between :term:`Blender Units` and *Metric*/*Imperial*.

   .. tip::

      Usually you will want to use the *Unit Presets* to change to scale factor,
      as this does not require looking up values to use for conversion.

Separate Units
   When *Metric*/*Imperial* display units as multiple multiple values,
   for example, "2.285m" will become "2m 28.5cm".

.. Normally we would avoid documenting long lists of values
   however, this is not displayed anywhere else.

.. list-table:: Imperial Units
   :header-rows: 1
   :stub-columns: 1

   * - Full Name
     - Short Name(s)
     - Scale of a Meter
   * - thou
     - ``mil``
     - 0.0000254
   * - inch
     - ``"``, ``in``
     - 0.0254
   * - foot, feet
     - ``'``, ``ft``
     - 0.3048
   * - yard
     - ``yd``
     - 0.9144
   * - chain
     - ``ch``
     - 20.1168
   * - furlong
     - ``fur``
     - 201.168
   * - mile
     - ``mi``, ``m``
     - 1609.344

.. list-table:: Metric Units
   :header-rows: 1
   :stub-columns: 1

   * - Full Name
     - Short Name(s)
     - Scale of a Meter
   * - micrometer
     - ``um``
     - 0.000001
   * - millimeter
     - ``mm``
     - 0.001
   * - centimeter
     - ``cm``
     - 0.01
   * - decimeter
     - ``dm``
     - 0.1
   * - meter
     - ``m``
     - 1.0
   * - dekameter
     - ``dam``
     - 10.0
   * - hectometer
     - ``hm``
     - 100.0
   * - kilometer
     - ``km``
     - 1000.0


Color Management
================

Options to control how images appear on the screen.

For :ref:`Color Management settings <render-post-color-management>` for more information.


.. _data-scenes-audio:

Audio
=====

Options to control global audio settings.

Volume
   Volume for the scene.

Update Animation Cache
   Updates the audio animation cache. This is useful if you start noticing artifact in the audio.

Distance Model
   TODO.

Speed
   Speed of the sound for the Doppler effect calculations.
Doppler
   Pitch factor for Doppler effect calculation.


Gravity
=======

Options to control global gravity used for physic effects.

See the :ref:`Physics Introduction <physics-intro-gravity>` for more information.


Rigid Body World
================

The *Rigid Body World* is a group of Rigid Body objects,
which holds settings that apply to all rigid bodies in this simulation.

See :doc:`Rigid Body World </physics/rigid_body/world>` for more information.


Simplify
========

Subdivision
   Maximum number of *Viewport*/*Render* subdivision to use for the
   :doc:`Subdivision Modifier </modeling/modifiers/generate/subsurf>`

Child Particles
   Percentage of :doc:`Child Particles </physics/particles/properties/children>`
   to see in the *Viewport*/*Render*.

Use Camera Cull
   Automatically culls objects based on the camera fulcrum.
   
   Margin
      Margin for the camera space culling.
