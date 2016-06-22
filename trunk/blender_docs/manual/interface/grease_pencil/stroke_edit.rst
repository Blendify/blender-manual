
***********
Stroke Edit
***********

These tools let you move and reshape grease pencil strokes after they have been drawn.

Open the Grease Pencil tab on the Toolshelf :kbd:`T`.
Look for the tools in the Edit Strokes panel shown here:

.. figure:: /images/grease_pencil_drawing_edit_strokes_panel.jpg

   Edit panel with grease pencil strokes.

The basic steps are:

- enter the grease pencil edit mode
- select some strokes
- move and reshape them


Edit Mode
---------

Enable Editing 
   Enters or exits the edit mode :kbd:`D-Tab`.

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

*Delete* :kbd:`X`
   Choose from:

   - Points - delete the selected points, leaving a gap in the stroke
   - Dissolve - reconnect the ends so there is no gap in the stroke
   - Strokes - delete the entire stroke containing any selected points
   - Frame - delete a frame when doing :doc:`Animating Sketches </interface/grease_pencil/layers_and_animation>`.
*Duplicate* :kbd:`Shift-D`
   Make a copy of the selected points at the same location. Use the mouse to *Translate* them into position.
   :kbd:`LMB` places them at their new position.
   :kbd:`RMB` cancels and removes the duplicates.
*Translate* :kbd:`G` *Rotate* :kbd:`R` *Scale* :kbd:`S`
   Move the selected points with the mouse.
   :kbd:`LMB` places them at their new position.
   Refine these operations with
   *Pivot Center*,
   *View* or *Global* transform orientations,
   snap to *Increment* and
   *Proportional Editing*
   detailed in the general :doc:`Transformations Instructions </editors/3dview/transform/index>`.
*Mirror* :kbd:`Ctrl-M` *Bend* :kbd:`Shift-W` *Shear* :kbd:`Shift-Ctrl-Alt-S` *To Sphere* :kbd:`Shift-Alt-S`
   These are similar to the equivalent mesh operations detailed in
   :doc:`Deforming Instructions </modeling/meshes/editing/deforming/index>`.


Sensitivity When Drawing
========================

The default settings for the sensitivity of mouse/stylus movement when drawing have been set
to reduce jitter while still allowing fine movement. However, if these are not appropriate
they can be altered in :menuselection:`User Preferences --> Editing --> Grease Pencil`.

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


Brushes
=======

Several tools for editing Grease Pencil strokes are provided in the form of brushes which you can use to "paint"
or "sculpt" the appearance of the strokes without having to keep doing a tedious select-tweak-select-tweak
pattern of edits.

Common Options:

Radius
   The size of the brush.
Strength
   The Strength off the brush, can be changed by the pressure of the stylus.
Use Falloff
   Enables a linear falloff to calculate the influence of the brush on a point.
   That is, a point closer to the midpoint of the brush (i.e. the point under the cursor)
   will get affected more than the ones at the edges. 

The brushes currently implemented are:

Smooth
   Allows you to selectively smooth out jitter/shake and bumpiness, to tidy up messy parts of your sketches.

   Affect Pressure
       Use this option to perform smoothing on stroke thickness values.

Thickness
   The Thickness Brush can be used to increase or decrease the thickness of the parts of the stroke under the cursor.
Grab
   Takes the stroke points which fall within the brush circle when the sculpting action begins,
   and allows you to translate this set of points. 
Push
   The Push Brush is very similar to the Grab brush, in that it also allows the user to translate stroke points.
   However, unlike the Grab Brush, the Push Brush is not restricted to operating only on the first set of points
   which were under the brush when the sculpt action was initiated. Instead, on each brush movement,
   the points currently under the brush get moved based on the amount
   the brush has moved since the last time it was evaluated. 
Twist
   Used to twist/rotate points around the cursor, creating a "swirling" effect.
   It is useful for applying low levels of distortion to stroke points. 
Pinch/Inflate
   Used to draw points away from the cursor, or towards it.

   Pinch
      Draw points towards the cursor.
   Inflate
      Push points away from the cursor.
Clone Brush
   Used to paste whatever is on the Copy/Paste buffer on the active layer, located at the point where you clicked.

   Stamp Mode
      Moves the newly pasted strokes so that their center follows the movements of the brush/cursor
   Stamp + Smudge
      When the *Use Falloff* option is enabled, instead of moving all the newly pasted strokes by the same amount,
      only the points that are currently under the cursor get affected. Thus, this in this mode of operation,
      the brush is closer to a Paste + Push operation instead. 
   Continuous
      As the brush moves, repeatedly just paste new copies for where the brush is now.
      In effect, this treats the contents of the copy buffer as the "brush template/kernel"
      used for "dabbing" samples all over the canvas.

Selection Mask
   Used to restrict the brush to only operating on the selected points.
