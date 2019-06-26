
***********************
Hue/Saturation Modifier
***********************

The *Hue/Saturation* Modifier applies a color transformation in the HSV object output color.


Options
=======

.. figure:: /images/grease_pencil_modifiers_color_hue_saturation_panel.png
   :align: right

   Hue/Saturation Modifier.

Color
   Defines the HSV value for the object output color.

   Hue
      Specifies the hue rotation of the original colors. 360° are mapped to (0 to 1). 
      The hue shifts of 0 (-180°) and 1 (+180°) have the same result.

   Saturation
      A saturation of 0 removes hues from the original colors,
      resulting in a grayscale object output color. 
      A shift greater than 1.0 increases saturation.
   
   Value
      Value is the overall brightness of the original colors. 
      De/Increasing values shift the object output color darker/lighter.
      

Create Materials
   When Applied, The modifier will create new material that keep the color transformation.
   
Mode
   Both
     Color transformation affect stroke and fill color.

   Stroke
      Color transformation affect only stroke color.

   Fill
      Color transformation affect only fill color.

Influence Filters
-----------------

Material
   Restricts the effect only to material that share the same pass index.

Layer
   Restricts the effect only to one layer or to any layers that share the same pass index.
   