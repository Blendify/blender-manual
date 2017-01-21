
****************
Stroke Edit Mode
****************

Enter Stroke Edit Mode with the *Mode* select menu in the 3D Views header or
toggle the *Enable Editing* in the Grease Pencil panel, or use :kbd:`D-Tab`.
In this mode, many common editing tools will operate on Grease Pencil stroke points instead.

These tools let you move and reshape grease pencil strokes after they have been drawn.

Open the Grease Pencil tab on the Tool Shelf.
Look for the tools in the Edit Strokes panel shown here:

.. figure:: /images/interface_grease_pencil_drawing_edit_strokes_panel.png

   Edit panel with grease pencil strokes.


Selecting
=========

Grease pencil strokes are formed from a series of connected vertex points.
To make changes, first select points on the strokes that you want to edit.
You can only select points on the active layer.
The selected points are highlighted as in the image above.

.. hint::

   Set the layer's *Stroke Thickness* to 1 to make the points more visible.


Use the mouse to select the points, or one of the selection buttons in the panel as detailed in
:doc:`Basic Selection </modeling/meshes/selecting/introduction>`.

Various selection functions similar to those available when editing meshes can be used:

.. list-table::
   :stub-columns: 1

   * - Select All
     - :kbd:`A`
   * - Border Select
     - :kbd:`B`
   * - Circle Select
     - :kbd:`C`
   * - Lasso Select
     - :kbd:`Ctrl-LMB`
   * - Select Linked
     - :kbd:`L`, :kbd:`Ctrl-L`
   * - Select More
     - :kbd:`Ctrl-NumpadPlus`
   * - Select Less
     - :kbd:`Ctrl-NumpadMinus`
   * - Select Stroke
     - :kbd:`Alt-LMB`


Editing
=======

Header
------

Some tools can be access through the 3D View header. e.g. Copy/Paste.

Onion Skinning
   Toggles :ref:`grease-pencil-onion`.
Selection Mask, Alpha
   See `Further Options`_.


.. (todo) move to a better place

Menu
----

Shrink/Flatten :kbd: `Alt-S`
   Adjust the pressure values of selected stroke points.
   This provides a way to modify the thickness of strokes by moving the mouse or the :kbd:`Wheel`.
Delete All Active Frame :kbd:`D-X`
   Deletes all strokes in the active frame. It can be accessed using :kbd:`D-X` (anywhere),
   as well as :kbd:`Shift-X` (Edit Strokes Mode only) or the :menuselection:`GPencil --> Delete` menu.
   This makes it easier to quickly get rid of throwaway scribbles.
Move to Layer `M`
   Can be used to move strokes between layers (including to a new layer).


Edit Strokes Panel
------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Stroke Mode
   | Panel:    :menuselection:`Tool Shelf --> Grease Pencil --> Edit Strokes`
   | Menu:     :menuselection:`GPencil`

Copy :kbd:`Ctrl-C`
   Copies the selected Grease Pencil strokes (or actually, points and segments).
Paste :kbd:`Ctrl-V`
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
   Move selected vertices outward in a spherical shape around the midpoint.

Arrange Strokes
   Arranges the selection of strokes up/down in the drawing order of the active layer.

   Bring Froward, Send Backward, Bring to Front, Send to Back
Move to Color
   Sets the active color as the new color to all selected strokes.
Interpolate
   Interpolate `Ctrl-Alt-E`
      Interpolates grease pencil strokes between frames.
   Sequence `Shift-Ctrl-E`
      Interpolates full grease pencil strokes sequence between frames.
   Interpolate All Layers
      Checkbox to interpolates all layers, not only active.
   Interpolate Selected Strokes
      Checkbox to interpolates only the selected strokes in the original frame.
Join Strokes
   Type
      Join `Ctrl-J`
         Joins selected strokes.
      Join & Copy `Shift-Ctrl-J`
         Joins selected strokes as a new stroke.
   Leave Gaps
      Leaves gaps between joined strokes instead of linking them.
Flip Direction
   Flips the start and end of a stroke.
Show Directions
   Displays stroke drawing direction with a bigger green dot of the start point
   and a smaller red dot for the end point.

Reproject Strokes
   Reprojects the selected strokes from the current viewpoint to get all points on the same plane again.
   This can be useful to fix problem from accidental 3D cursor movement, or viewport changes.


Sculpt Strokes Panel
--------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Stroke Mode
   | Panel:    :menuselection:`Tool Shelf --> Grease Pencil --> Sculpt Strokes`
   | Menu:     :menuselection:`GPencil --> Sculpt Strokes/Brushes`
   | Hotkey:   :kbd:`E-LMB`


Several tools for editing Grease Pencil strokes are provided in the form of brushes which
you can use to "paint" or "sculpt" the appearance of the strokes without having to keep doing
a tedious select-tweak-select-tweak pattern of edits.

Hold :kbd:`E-LMB` and drag to sculpt.


Brushes
^^^^^^^

The brushes currently implemented are:

Smooth
   Allows you to selectively relax jitter/shake and bumpiness, to tidy up messy parts of your sketches.

   Affect Pressure
      Use this option to perform smoothing on stroke thickness values.

Thickness
   The Thickness Brush can be used to increase (Add) or decrease (Subtract) the thickness of
   the parts of the stroke under the cursor.
Strength
   Increase/decrease (:kbd:`Ctrl`) the alpha value of the stroke, E.g. for creating fading effects.
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
   The *Direction* controls whether the points are rotated in a clockwise (CW) or anti-clockwise (CCW) direction.
Pinch/Inflate
   Used to draw points away from the cursor, or towards it.

   Pinch
      Draw points towards the cursor.
   Inflate
      Push points away from the cursor.
Randomize
   Randomizes the stoke attributes.
   e.g. with *Position* enabled it displaces the points randomly in screen space to create jittered/jagged lines.
Clone Brush
   Used to paste the previously copied points (in the Copy/Paste buffer on the active layer),
   located at the point where you clicked.

   Hold :kbd:`LMB` and drag to position and adjust the pasted strokes.
   The strokes center follows the movements of the brush/cursor ("Stamp Mode").

   Use Falloff
      When the *Use Falloff* option is enabled, instead of moving all the newly pasted strokes by the same amount,
      only the points that are currently under the cursor get affected. Thus, this in this mode of operation,
      the brush is closer to a Paste and Push operation instead ("Stamp and Smudge").

   .. Ed: not available any more? 2.78
      Continuous: As the brush moves, repeatedly just paste new copies for where the brush is now.
      In effect, this treats the contents of the copy buffer as the "brush template/kernel"
      used for "dabbing" samples all over the canvas.


Common Options
^^^^^^^^^^^^^^

Radius :kbd:`Shift-F`/:kbd:`Wheel`
   The size of the brush. Increase/decrease brush size with :kbd:`Shift-F` when not sculpting or
   with :kbd:`Wheel` while sculpting (i.e. with the pen tip down, or mouse button held).
Strength :kbd:`Ctrl-F`/:kbd:`Shift-Wheel`
   The Strength off the brush, can be changed by the pressure of the stylus.
   (In/decrease see *Radius*).
Use Falloff
   Enables a linear falloff to calculate the influence of the brush on a point.
   That is, a point closer to the midpoint of the brush (i.e. the point under the cursor)
   will get affected more than the ones at the edges.
Direction :kbd:`E-Ctrl-LMB`
   Radio button to invert the brush effect.
Affect
   Enable sculpt for position, strength (alpha value) and thickness in Smooth and Randomize brush.


Further Options
^^^^^^^^^^^^^^^

Selection Mask
   Used to restrict the brush to only operating on the selected points.
Alpha :kbd:`Ctrl-H`
   Alpha value of the visualization for selected vertices.
   The visibility can be toggled (hide/unhide) using :kbd:`Ctrl-H`.
