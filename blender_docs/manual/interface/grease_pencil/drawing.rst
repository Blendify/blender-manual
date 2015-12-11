
..    TODO/Review: {{review|fixes = merge?}} .

**************************
Drawing With Grease Pencil
**************************

- Enable the *Grease Pencil* by clicking *Draw, Line, Poly or Erase* from the Toolshelf (:kbd:`T`).
  A new layer will be automatically added for you to draw on.
- A new layer can be added from the *Grease Pencil Properties panel*.
  This panel can also be used to customize the color, opacity and thickness of the pencil lines.
  Changes to these settings will affect all strokes on the current layer.


.. figure:: /images/SketchingGreasePencil.jpg
   :width: 500px

   Grease Pencil Tool Shelf and Properties Panel.


*Grease Pencil* sketches can be converted to editable geometry and used to aid the animation process.


- :doc:`Read more about Layers and Animation </interface/grease_pencil/layers_and_animation>`
- :doc:`Read more about Converting sketches to geometry </interface/grease_pencil/converting_to_geometry>`


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


Appearance Settings
===================

Set the color, line width and other aspects of the grease pencil's appearance in the
*Grease Pencil Panel* of the *Properties* shelf (:kbd:`N`) shown here.

.. figure:: /images/grease_pencil_drawing_properties.jpg

   Grease pencil properties

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

.. figure:: /images/3D-interaction_Sketching_Drawing_grease-pencil-drawing-settings-panel.jpg

   Grease Pencil Drawing Settings.


In the *Grease Pencil Panel* of the *Tool* shelf (:kbd:`T`)
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

   The effect of different Drawing Settings on Grease Pencil strokes.

Editing
=======

These tools let you move and reshape grease pencil strokes after they have been drawn.

Open the Grease Pencil tab on the Toolshelf (:kbd:`T`).
Look for the tools in the Edit Strokes panel shown here:

.. figure:: /images/grease_pencil_drawing_edit_strokes_panel.jpg

   Edit panel with grease pencil strokes.

The basic steps are:

- enter the grease pencil edit mode
- select some strokes
- move and reshape them


Edit Mode
---------

*Enable Editing* (:kbd:`D-Tab` )
   Enters or exits the edit mode.

While in the grease pencil editing mode,
Blender redirects the common editing keys to operate on the grease pencil layer instead of the 3D scene components.


Select
------

Grease pencil strokes are formed from a series of connected vertex points.
To make changes, first select points on the strokes that you want to edit.
You can only select points on the active layer.
The selected points are highlighted as in the image above.

.. hint::

   Set the layer's *Stroke Thickness* to 1 to make the points more visible.


Use the mouse to select the points, or one of the selection buttons in the panel as detailed in
:doc:`Basic Selection </modeling/meshes/selecting/basics>`.

Various selection functions similar to those available when editing meshes can be used:

.. list-table::
   :stub-columns: 1

   * - Select All
     - :kbd:`A`
   * - Border Select
     - :kbd:`B`
   * - Circle Select
     - :kbd:`C`
   * - Select Linked
     - :kbd:`Ctrl-L`
   * - Select More
     - :kbd:`Ctrl-NumpadPlus`
   * - Select Less
     - :kbd:`Ctrl-NumpadMinus`
   * - Select Stroke
     - :kbd:`Alt-LMB`


Edit
----

*Delete* (:kbd:`X`)
   Choose from:

   - Points - delete the selected points, leaving a gap in the stroke
   - Dissolve - reconnect the ends so there is no gap in the stroke
   - Strokes - delete the entire stroke containing any selected points
   - Frame - delete a frame when doing :doc:`Animating Sketches </interface/grease_pencil/layers_and_animation>`.
*Duplicate* (:kbd:`Shift-D`)
   Make a copy of the selected points at the same location. Use the mouse to *Translate* them into position.
   :kbd:`LMB` places them at their new position.
   :kbd:`RMB` cancels and removes the duplicates.
*Translate* (:kbd:`G`) *Rotate* (:kbd:`R`) *Scale* (:kbd:`S`)
   Move the selected points with the mouse.
   :kbd:`LMB` places them at their new position.
   Refine these operations with
   *Pivot Center*,
   *View* or *Global* transform orientations,
   snap to *Increment* and
   *Proportional Editing*
   detailed in the general :doc:`Transformations Instructions </editors/3dview/transform/index>`.
*Mirror* (:kbd:`Ctrl-M`) *Bend* (:kbd:`Shift-W`) *Shear* (:kbd:`Shift-Ctrl-Alt-S`) *To Sphere* (:kbd:`Shift-Alt-S`)
   These are similar to the equivalent mesh operations detailed in
   :doc:`Deforming Instructions </modeling/meshes/editing/deforming/index>`.


Sensitivity When Drawing
========================

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
