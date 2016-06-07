
**************
ColorRamp Node
**************

.. figure:: /images/compositing_nodes_colorramp.png
   :align: right

   Color Ramp Node.


The ColorRamp Node is used for mapping values to colors with the use of a gradient.
It works exactly the same way as a
:doc:`Colorband for textures and materials </render/blender_render/materials/properties/ramps>`,
using the Factor value as a slider or index to the color ramp shown,
and outputting a color value and an alpha value from the output sockets.

By default,
the ColorRamp is added to the node map with two colors at opposite ends of the spectrum.
A completely black black is on the left
(Black as shown in the swatch with an Alpha value of 1.00)
and a whitewash white is on the right.

To select a color, :kbd:`LMB` click on the thin vertical line/band within the colorband.
The example picture shows the black color selected, as it is highlighted white.
The settings for the color are shown above the colorband as (left to right): color swatch,
Alpha setting, and interpolation type.


Inputs
======

Fac
   The Factor input is used as an index for the color ramp.


Properties
==========

Color Ramp
   For controls see :ref:`ui-color_ramp_widget`.


Outputs
=======

Image
   Standard image output.
Alpha
   Standard alpha output.

