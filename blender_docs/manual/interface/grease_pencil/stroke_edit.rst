
****************
Stroke Edit Mode
****************

These tools let you move and reshape grease pencil strokes after they have been drawn.

Open the Grease Pencil tab on the Tool Shelf.
Look for the tools in the Edit Strokes panel shown here:

.. figure:: /images/grease_pencil_drawing_edit_strokes_panel.jpg

   Edit panel with grease pencil strokes.

The basic steps are:

#. Enter Stroke Edit Mode.
#. Select some strokes.
#. Move and reshape them.


Selecting
=========

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


Edit Strokes Panel
==================

Copy
   Copies selected Grease Pencil points and strokes.
Paste
   Pastes the previously copied strokes.
Paste & Merge
   Pastes the previously copied strokes and merge in active layer.

Delete :kbd:`X`
   Points
      Delete the selected points, leaving a gap in the stroke.
   Dissolve
      Reconnect the ends so there is no gap in the stroke.
   Strokes
      Delete the entire stroke containing any selected points.
   Frame
      Delete a frame when doing :doc:`Animating Sketches </interface/grease_pencil/drawing/layers>`.
Duplicate :kbd:`Shift-D`
   Make a copy of the selected points at the same location. Use the mouse to *Translate* them into position.
   :kbd:`LMB` places them at their new position. :kbd:`RMB` cancels and removes the duplicates.
Toggle Cyclic
   Close or open the selected stroke by adding an edge from the last to first point.

Bend :kbd:`Shift-W`
   Bends selected item between the 3D cursor and the mouse.
Mirror :kbd:`Ctrl-M`
   Mirrors selected strokes along one or more axises.
Shear :kbd:`Shift-Ctrl-Alt-S`
   Shears selected items along the horizontal screen axis.
To Sphere :kbd:`Shift-Alt-S`
   Move selected vertieces outward in a spherical shape around the midpoint.

Arrange Strokes
   Arranges selected strokes up/down in the drawing order of the active layer.

   Bring Froward, Send Backward, Bring to Front, Send to Back
Move to Color
   Moves the selected strokes to active color.

Interpolate
   Interpolates grease pencil strokes between frames.
Sequence
   Interpolates full grease pencil strokes sequence between frames.
Interpolate All Layers
   Interpolates all layers, not only active.
Interpolate Selected Strokes
   Interpolates only the selected strokes in the original frame.

Join Stokes
   Type
      Join
         Joins selected strokes.
      Join & Copy
         Joins selected strokes as a new stroke.
   Leave Gaps
      Leaves gaps between joined strokes instead of linking them.
Flip Direction
   Flips the start and end of a stroke.
Show Directions
   Displays stroke drawing direection with a bigger green dot of the start point
   and a smaller red dot for the end point.

Reproject Strokes
   Reprojects the selected strokes from the current viewpoint to get all points on the same plane again.
   This can be useful to fix problem from accidental 3D cursor movement, or viewport changes.


Sculpt Strokes Panel
====================

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

Alpha
   Alpha value for selected vertices.
