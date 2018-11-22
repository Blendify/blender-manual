
***********
Motion Blur
***********

Motion blur in Eevee is done by post processing the image after rendering.

The motion blur is really basic and just blurs the render results based on pixel velocity.

.. note::

   Object motion blur and deformation motion blur is still not supported. Only camera motion blur is supported.

.. note::

   Motion blur only works in Camera View.


Settings
========

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Render --> Motion Blur`

Samples
   Number of samples to take for the motion blur effect.

Shutter
   Time taken in frames between shutter open and close.
