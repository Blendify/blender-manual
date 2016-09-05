
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


Color Management
================

Options to control how images appear on the screen.

For :ref:`Color Management settings <render-post-color-management>` for more information.


Audio
=====

Options to control global audio settings.

See the :ref:`Audio Rendering <render-output-audio-settings>` docs for more information.



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
