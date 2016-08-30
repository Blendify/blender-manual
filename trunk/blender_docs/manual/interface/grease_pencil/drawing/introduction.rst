..    TODO/Review: {{review|fixes = merge?}}.

************
Introduction
************

- Enable the *Grease Pencil* by clicking *Draw, Line, Poly or Erase* from the Tool Shelf :kbd:`T`.
  A new layer will be automatically added for you to draw on.
- A new layer can be added from the Grease Pencil panel in the Properties region.
  This panel can also be used to customize the color, opacity and thickness of the pencil lines.
  Changes to these settings will affect all strokes on the current layer.

.. _fig-gp-tool-properties:

.. figure:: /images/sketchinggreasepencil.jpg
   :width: 500px

   Grease Pencil Tool Shelf and Properties region.


*Grease Pencil* sketches can be converted to editable geometry and used to aid the animation process.

- :doc:`Read more about Layers and Animation </interface/grease_pencil/layers_and_animation>`
- :doc:`Read more about Converting sketches to geometry </interface/grease_pencil/converting_to_geometry>`


Drawing
=======

The Tool Shelf provides a number of options for drawing with the *Grease Pencil* which are detailed below.
The Tool Shelf can be seen in the screenshot :ref:`fig-gp-tool-properties` above.


Grease Pencil Mode and Shortcut Summary
---------------------------------------

Draw :kbd:`D-LMB`
   Draw a new stroke (multiple short, connected lines). The stroke will finish when you release the mouse button.
Line :kbd:`Ctrl-D-LMB`
   Draw a new line in rubber band mode. The line will finish when you release the mouse button.
Poly :kbd:`Ctrl-D-RMB`
   Draw connected lines by clicking at various points. Lines will be automatically added to connect the two points.
Erase :kbd:`D-RMB`
   Erases segments of strokes that fall within the radius of the eraser "brush".
   The erasing will continue until the mouse button is released.
   If begun with *Erase*, either :kbd:`RMB` or :kbd:`LMB` will erase strokes.
   The size of the eraser "brush" can be controlled with :kbd:`Wheel`, or with
   :kbd:`NumpadPlus` and :kbd:`NumpadMinus`, while still holding :kbd:`RMB`.


Sketching Sessions
------------------

A Sketching Session allows for rapid sketching with the *Grease Pencil* when
multiple strokes are desired. With this option set,
a sketching session starts when a *Grease Pencil* stroke is made.
The type of session (Draw, Line, Poly, Erase)
is determined by the first stroke made which can be done via hotkeys or the Tool Shelf.
Use :kbd:`Esc` or :kbd:`Return` to exit the sketching session. Note that in a Erase
Sketching Session both :kbd:`LMB` or :kbd:`RMB` can be used once the session has
started.


Appearance Settings
===================

Set the color, line width and other aspects of the grease pencil's appearance in the
*Grease Pencil Panel* of the *Properties region* shown here.

.. figure:: /images/grease_pencil_drawing_properties.jpg

   Grease pencil properties.


There are separate settings for each layer with those of the active layer shown in the panel.
All the strokes on a layer (not just those made after a particular change)
are affected by that layer's grease pencil properties.

Stroke
   Sets the line color and opacity.
Fill
   Sets the color of the interior space enclosed by the strokes.
   Increase the opacity from zero to make the fill visible.
   Fill works best on convex shapes.
Thickness
   Width of the line strokes.
X-Ray
   Makes the lines visible when they pass behind other objects in the scene.
Volumetric Strokes
   Draw strokes as a series of filled spheres, resulting in an interesting volumetric effect.
   Get best results with partial opacity and large stroke widths.


Drawing Settings
================

.. figure:: /images/interface_gp_draw_settings.png
   :figwidth: 148px
   :align: right

   Grease Pencil Drawing Settings.


In the *Grease Pencil Panel* of the *Tool* shelf :kbd:`T`
there are several choices for *Drawing Settings*.

View
   New strokes are locked to the view.
Cursor *(3D View only)*
   New strokes are drawn in 3D-space,
   with position determined by the 3D cursor and the view rotation at the time of drawing.
   *Cursor* is available as an option in the *UV/Image Editor*
   but it functions identically to the *View* option.  *(3D View only)*
Surface
   New strokes are drawn in 3D-space, with their position projected onto the first visible surface.
   *(3D View only)*
Stroke
   New strokes are drawn in 3D-space, with their position projected onto existing visible strokes.
   Note that strokes created with *View* are not in 3D-space and are not considered for this projection.
   *(3D View only)*

Only Endpoints
   Applies the drawing setting only to the endpoints of the stroke.
   The part of the stroke between the endpoints is adjusted to lie on a plane passing through the endpoints.

.. figure:: /images/editors_3dview_sketching_drawing_grease-pencil-drawing-settings.png

   The effect of different Drawing Settings on Grease Pencil strokes.
