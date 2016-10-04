
*********
Grab/Move
*********

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode, Edit Mode, and Pose Mode for the 3D View;
   | Menu:     Context sensitive, :menuselection:`Object Based --> Transform --> Grab/Move`
   | Hotkey:   :kbd:`G`


In Object Mode, the grab/move option lets you translate (move) objects.
It also lets you translate any elements that make up the object within the 3D space of the active 3D View.
Grab/Move works similarly here as it does
in the Node Editor, Graph Editor, UV/Image Editor, Sequencer, etc.

Options and other details will be discussed in their respective sections.

.. figure:: /images/editors_3dview_transform_basics_grab_display-values.png

   Translation Display.


While Grab/Move is active, the amount of change in the X, Y,
and Z co-ordinates is displayed at the bottom left corner of the 3D View editor.

There are two ways to Grab/Move in *3D View*:

- Using shortcuts and combinations of shortcuts.
- Using the *Transform Widget* helper.
  This can be toggled from the *Translation Widget* in the header of the 3D View.


Shortcuts
=========

A quicker way to move objects in 3D space is with :kbd:`G`.
Pressing :kbd:`G` activates "Grab/Move" transformation mode.
The selected object or data then moves freely according to the mouse pointer's location and camera.
Using this shortcut in combination with specific shortcuts which specify a chosen axis gives you
full control over your transformation.

:kbd:`LMB`
   Confirm the move, and leave the object or data at its current location on the screen.
:kbd:`RMB` or :kbd:`Esc`
   Cancel the move, and return the object or data to its original location.


You can also move an object by clicking and holding :kbd:`RMB` on the object to move it.
To confirm the action, press :kbd:`LMB`.

.. Footer: This decimal number is displayed at the bottom left corner of the 3D View editor as it is entered.

.. note::

   This behavior can be changed using *Release Confirms* in the :doc:`User Preferences </preferences/editing>`,
   so that a single :kbd:`RMB` drag can be used to move and confirm.


.. tip::

   Moving an object in Object Mode changes the object's origin.
   Moving the object's vertices/edges/faces in Edit Mode does not change the object's origin.
