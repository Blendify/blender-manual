..    TODO/Review: {{review|fixes = merge?}}.

************
Introduction
************

Enable the *Grease Pencil* by clicking *Draw, Line, Poly or Erase* from the Tool Shelf :kbd:`T`.
A new layer will be automatically added for you to draw on.

A new layer can be added from the Grease Pencil panel in the Properties region.
This panel can also be used to customize the color, opacity and thickness of the pencil lines.
Changes to these settings will affect all strokes on the current layer.

.. figure:: /images/interface_grease-pencil_example-simple.png

   An example of Blender's Grease Pencil.

*Grease Pencil* sketches can be converted to editable geometry and used to aid the animation process.


Drawing
=======

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Panel:    :menuselection:`Tool Shelf --> Grease Pencil --> Grease Pencil`


The Tool Shelf provides a number of options for drawing with the *Grease Pencil* which are detailed below.

Draw :kbd:`D-LMB`
   Draw a new stroke (multiple short, connected lines). The stroke will finish when you release the mouse button.
Line :kbd:`Ctrl-D-LMB`
   Draw a new line in rubber band mode. The line will finish when you release the mouse button.
Poly :kbd:`Ctrl-D-RMB`
   Draw connected lines by clicking on position you want to add the next point.
   Lines will be automatically added to connect the two points.
   Holding :kbd:`LMB` down and sliding mouse lets you place the new point/segment preview.
Erase :kbd:`D-RMB`, :kbd:`Eraser`
   Erases segments of strokes that fall within the radius of the eraser "brush"
   (with a linear falloff from the center of the eraser circle).
   The erasing will continue until the mouse button is released,
   while trying to reduce the thickness of strokes before removing them.
   The eraser operates on all visible and editable layers.
   If begun with *Erase*, either :kbd:`RMB` or :kbd:`LMB` will erase strokes.
   Its cursor is a red circle with a dashed outline.

   The size of the eraser "brush" can be controlled with :kbd:`Wheel`, or with
   :kbd:`NumpadPlus` and :kbd:`NumpadMinus`, while still holding :kbd:`RMB`.


Additive Drawing
----------------

With the "Additive Drawing" option enabled the active frame's
strokes will be carried over/copied if you start drawing on an empty frame 
(i.e. one without any keyframe already). This saves the effort of keeping a Dopes sheet
open, and to remember to duplicate the current frame before starting to draw the
next pose (or risk managing to draw the perfect pose, but without everything else).

This option makes it easier to animate shots where you're building on a result from a previous frame.
Examples of cases where this comes in handy includes animating facial expressions
(when all outlines are on the same layer), or animating "growing" things
(e.g. vines, or concentric circles growing from a central point).

.. note:: 

   Even without this option enabled, this is the default behaviour when using
   the eraser on an "empty" frame. This makes it easier to do shots where you're just
   changing parts of the facial expression, or if you're animating an "eraser" effect.


Continuous Drawing
------------------

Continuous Drawing allows for rapid sketching with the *Grease Pencil* when
multiple strokes are desired. Besides the checkbox it is enabled
if the :kbd:`D` key is released while pressing :kbd:`LMB`.
The eraser for one-off strokes (:kbd:`RMB`) is still available.
Note that with the *Eraser* both :kbd:`LMB` or :kbd:`RMB` can be used
when drawing has started.

Use :kbd:`Esc` or :kbd:`Return` or clicking outside the current viewport
(e.g. another region or editor) to exit the mode. 
Continuous drawing can be disabled using :kbd:`E` key in order to get fast access to sculpt mode.


Draw on Back
------------

ToDo.


Stroke Placement
================

.. figure:: /images/interface_grease-pencil_tools_panel.png
   :figwidth: 148px
   :align: right

   Grease Pencil panel.

Defines how the strokes are converted to 3D (or 2D) space.

View
   New strokes are locked to the view.
Cursor
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

.. figure:: /images/interface_grease-pencil_stroke_placement.png

   The effect of different Drawing Settings on Grease Pencil strokes.

.. tip:: Notes For Tablet Users:

   - The thickness of a stroke at a particular point is affected
     by the pressure used when drawing that part of the stroke.
   - The "eraser" end of the stylus can be used to erase strokes.

Enable Editing
   See :doc:`/interface/grease_pencil/stroke_edit`.
   A overlay is displayed in the top-right corner of editors when enabled.


Tools
======

- :doc:`Converting Sketches to Geometry </interface/grease_pencil/converting_to_geometry>`
- :doc:`/interface/ruler_and_protractor`
