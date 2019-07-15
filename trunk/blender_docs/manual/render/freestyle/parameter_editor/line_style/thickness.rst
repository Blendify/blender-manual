
*********
Thickness
*********

Control the thickness of the freestyle strokes.

.. TODO2.8.
   .. figure:: /images/render_freestyle_parameter-editor_line-style_tabs_thickness.png

      Thickness.

Base Thickness
   The base thickness for this line style.

Thickness Position
   Control the position of stroke thickness from the original (backbone) stroke geometry. There are four choices:

   Center
      The thickness is evenly split to the left and right side of the stroke geometry.
   Inside
      The strokes are drawn within object boundary.
   Outside
      The strokes are drawn outside the object boundary.
   Relative
      Specifies the relative position by a number between 0.0 (inside) and 1.0 (outside),
      in the *Thickness Ratio* number field just below.

The thickness position options are applied only to strokes of edge types
*Silhouette* and *Border*,
since these are the only edge types defined in terms of the object boundary.
Strokes of other edge types are always drawn using the *Center* option.
