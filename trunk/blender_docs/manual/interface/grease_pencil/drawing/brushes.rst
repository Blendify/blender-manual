
*******
Brushes
*******

Drawing Brushes
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Stroke Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Grease Pencil --> Drawing Brushes`

Brushes
   A :ref:`ui-list-view` of preset brushes. 
   You can switch between the brushes using keyboard numbers from :kbd:`1` to :kbd:`0`.
   The selected drawing brush is the brush in the list located at that position.
Thickness
   Width of full pressure strokes in pixels constant to the viewport i.e. not affected by the zoom.
   The thickness can be lower depending of the pressure.
Sensibility
   Adjust the sensibility of the thickness to the pressure of the pencil on the tablet.
   This pressure can be disabled using the right small button.
Strength
   Similar to sensibility, but affect the alpha value of the color.
   This parameter allows to get effects as color fading or watercolor.
Randomness
   The properties for *Sensibility* and *Strength* additionally have a randomness factor which
   can be enabled using the jagged line icon to the right of the number sliders.

Jitter
   Define a jitter randomness in the stroke.
Angle
   Defines the angle when the thickness of the stroke will be 100%.
   Any change in the direction will change the thickness.

   Factor
      Defines the effect for drawing angle changes in the thickness.

   .. tip::

      The *Angle* and *Angle Factor* parameters allow to create drawing brushes such as markers
      that change the thickness depending of the angle of drawing.
      This gets a more artistic drawing and less "computer" lines.

.. figure:: /images/interface_grease-pencil_drawing_brushes.png

   Preset Brushes.


Stoke Quality
-------------

These settings are per-brush settings that are applied after each stroke is drawn
(when converting from 2D/screen space coordinates to 3D/data space coordinates).
These are per-brush settings so that you can apply varying proprieties to different types of brushes.
E.g higher smoothing and/or subdivision for final "beauty", and less smoothing/subdivision for initial "blocking" strokes. 

Smooth
   Defines how much smoothing is applied (using the same method as the "Smooth" Brush).
   It is used to get rid of jagged edges and jitter/hand shake.

   Smoothing Iterations
      Defines how many times smoothing is applied. On each additional round of smoothing performed,
      the strength of the smoothing applied is halved,
      i.e. on the first round, it will be 100% of smoothing factor, then 50%, then 25%, etc.
      This setting is most useful for improving the quality of heavily subdivided strokes,
      where the multiple rounds of smoothing can help reduce "faceting" artifacts.

Subdivision Steps
   Defines how many times the stroke will be subdivided.
   Each time the stroke is subdivided, extra stroke points are added between each pair of existing stroke points.
   The main use of this setting is to make strokes look less "faceted" (especially large strokes drawn quickly).
   Strokes are subdivided before smoothing is applied.

   Randomness
      Amount of randomness to add new new strokes after subdivision.


Brush Curves
============

.. admonition:: Reference
   :class: refbox

   | Mode:     Stroke Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Grease Pencil --> Brush Curves`

This panel allows you to adjust the parameters used with tablets to get personal preferences.
The available curves that can be edited are:

- Sensitivity
- Strength
- Jitter

Read more about using the :ref:`ui-curve-widget`.
