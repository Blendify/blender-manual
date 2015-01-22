
..    TODO/Review: {{review|fixes = merge?}} .

**************************
Drawing With Grease Pencil
**************************

- Enable the *Grease Pencil* by clicking *Draw, Line, Poly or Erase* from the Toolshelf (:kbd:`T`).
  A new layer will be automatically added for you to draw on.
- A new layer can be added from the *Grease Pencil Properties panel*.
  This panel can also be used to customise the color, opacity and thickness of the pencil lines.
  Changes to these settings will affect all strokes on the current layer.


.. figure:: /images/ManualSketchingGreasePencil.jpg
   :width: 500px
   :figwidth: 500px

   Grease Pencil Tool Shelf and Properties Panel.


*Grease Pencil* sketches can be converted to editable geometry and used to aid the animation process.


- :doc:`Read more about Layers and Animation » </grease_pencil/layers_and_animation>`
- :doc:`Read more about Converting sketches to geometry » </grease_pencil/converting_to_geometry>`


Drawing
=======

The Toolshelf provides a number of options for drawing with the *Grease Pencil* which are detailed below.
The Toolshelf can be seen in the screenshot *Grease Pencil Tool Shelf and Properties Panel* above.


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
   The size of the eraser "brush" can be controlled with :kbd:`Wheel` or
   (:kbd:`NumpadPlus`, :kbd:`NumpadMinus`) keys (while still holding :kbd:`RMB`).


Sketching Sessions
------------------

A Sketching Session allows for rapid sketching with the *Grease Pencil* when
multiple strokes are desired. With this option set,
a sketching session starts when a *Grease Pencil* stroke is made.
The type of session (Draw, Line, Poly, Erase)
is determined by the first stroke made which can be done via hotkeys or the Toolshelf.
Use :kbd:`Esc` or :kbd:`Return` to exit the sketching session. Note that in a Erase
Sketching Session both :kbd:`LMB` or :kbd:`RMB` can be used once the session has
started.


----


Shared Grease Pencil Settings
=============================

Drawing Settings
----------------

.. figure:: /images/3D-interaction_Sketching_Drawing_grease-pencil-drawing-settings-panel.jpg

   Grease Pencil Drawing Settings.


In the *Grease Pencil Panel* of the *Properties* shelf (:kbd:`N`)
there are several choices for *Drawing Settings*.

View
   New strokes are locked to the view.
Cursor *(3D view only)*
   New strokes are drawn in 3D-space,
   with position determined by the 3D cursor and the view rotation at the time of drawing.
   *Cursor* is available as an option in the *UV/Image Editor*
   but it functions identically to the *View* option.
Surface *(3D view only)*
   New strokes are drawn in 3D-space, with their position projected onto the first visible surface.
Stroke *(3D view only)*
   New strokes are drawn in 3D-space, with their position projected onto existing visible strokes.
   Note that strokes created with *View* are not in 3D-space and are not considered for this projection.

Enabling the *Only Endpoints* setting applies the drawing setting only to the
endpoints of the stroke. The part of the stroke between the endpoints is adjusted to lie on a
plane passing through the endpoints.


.. figure:: /images/3D-interaction_Sketching_Drawing_grease-pencil-drawing-settings.jpg
   :width: 500px
   :figwidth: 500px

   The effect of different Drawing Settings on Grease Pencil strokes.


Sensitivity When Drawing
------------------------

The default settings for the sensitivity of mouse/stylus movement when drawing have been set
to reduce jitter while still allowing fine movement. However, if these are not appropriate
they can be altered in :menuselection:`User Preferences window --> Editing --> Grease Pencil`.

Manhattan Distance
   The minimum number of pixels the mouse should have moved either
   horizontally or vertically before the movement is recorded.
   Decreasing this should work better for curvy lines.
Euclidean Distance
   The minimum distance that the mouse should have traveled before movement is recorded.
Eraser Radius
   The size of the eraser "brush".
Smooth Stroke
   This turns on the post-processing step of smoothing the stroke to remove jitter.
   It is only relevant when not drawing straight lines. By default this is enabled.
   It should be noted that it can often cause "shrinking" of drawings,
   and may be turned off if the results are not desirable.
Simplify Stroke
   This turns on the post-processing step of simplifying the stroke to remove about half of current points in it.
   It is only relevant when not drawing straight lines. By default this is disabled.
   As with *Smooth Stroke*, it can often cause "shrinking" of drawings,
   and loss of precision, accuracy and smoothness.


Additional Notes For Tablet Users
---------------------------------

- The thickness of a stroke at a particular point is affected
  by the pressure used when drawing that part of the stroke.
- The "eraser" end of the stylus can be used to erase strokes.
