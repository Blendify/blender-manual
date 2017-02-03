
****
Tabs
****

Color
=====

.. figure:: /images/render_freestyle_line-style_color.png

   Line Style Color UI.


In this tab you control the color of your strokes.

Base Color
   The base color for this line style.


Alpha
=====

.. figure:: /images/render_freestyle_line-style_alpha.png

   Line Style Alpha UI.


In this tab you control the alpha (transparency) of your strokes.

Base Transparency
   The base alpha for this line style.


Thickness
=========

In this tab you control the thickness of your strokes.

.. figure:: /images/render_freestyle_line-style_thickness.png

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
      This allows you to specify the relative position by a number between ``0.0`` (inside) and ``1.0`` (outside),
      in the *Thickness Ratio* number button just below.

The thickness position options are applied only to strokes of edge types
*Silhouette* and *Border*,
since these are the only edge types defined in terms of the object boundary.
Strokes of other edge types are always drawn using the *Center* option.


Geometry
========

.. figure:: /images/render_freestyle_line-style_geometry.png

   Line Style Geometry Overall UI.


In this tab you control the geometry of your strokes.
It contains only the option to add modifiers.


Texture
=======

.. figure:: /images/render_freestyle_line-style_texture.png

   Line Style Texture.

Use Nodes/Textures
   Blender Render uses texture mapping and influence panels.
   In Cycles textures are defined by means of
   shader :doc:`nodes </render/freestyle/parameter_editor/line_style/nodes/index>`.
Spacing Along Stroke
   Allows to set the "pace" of textures mapped along the length of strokes.
Go to LineStyle Textures
   The "Go to LineStyle Textures" button is a shortcut to texture settings in the other tab.
