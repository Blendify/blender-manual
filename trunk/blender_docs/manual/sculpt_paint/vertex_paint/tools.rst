
*****
Tools
*****

The *Tool Shelf* contains most of the options for vertex painting.
The following sections describe the controls in each of the available panels.

.. figure:: /images/sculpt-paint_vertex-paint_tools_tab.png
   :align: right

   Vertex Painting options.


Brush
=====

Brush
   The :doc:`brush presets </sculpt_paint/brush/brush>` data-block menu.
Color
   The color of the brush. See :ref:`ui-color-picker`.

   Press :kbd:`S` on any part of the image to sample that color and set it as
   the brush color.

   Flip (cycle icon) :kbd:`X`
      Swaps the foreground and background color.

   .. note::

      Note that Vertex Paint works in sRGB :term:`space <Color Space>`, and
      the RGB representation of the same colors will be different between the paint
      tools and the materials that are in linear space.

Radius
   Set the radius of the brush.
Strength
   Set the strength of the brush's effect.
Blend
   See :term:`Color Blend Modes`.

Options
   Accumulate
      This will allow a stroke to accumulate on itself, just like an airbrush would do.
   Affect Alpha
      When this is disabled, it locks (prevents changes) the alpha channel while painting.
   Front Faces Only
      Only paint on the front side of faces.
   2D Falloff
      This turns the brush influence into a cylinder (the depth along the view is ignored) instead of a sphere.


Texture
=======

See :doc:`/sculpt_paint/brush/texture`.


Stroke & Curve
==============

See :doc:`/sculpt_paint/brush/stroke`.


Symmetry
========

See :doc:`/sculpt_paint/brush/symmetry`.
