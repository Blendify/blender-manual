
*********
Grab/Move
*********

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode, Edit Mode, and Pose Mode for the 3D View;
   | Menu:     Context sensitive, :menuselection:`Object Based --> Transform --> Grab/Move`
   | Hotkey:   :kbd:`G` or combinations for specific Axis constraint


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


Transform Widget
================

.. figure:: /images/faq-transform_widget-2.jpg

   Translation Widget.


In the default installation of Blender, this is the *Transform Widget*.
It is active by default. You can use the widget by holding :kbd:`LMB` over it and dragging in the 3D View.


Shortcuts
=========

A quicker way to move objects in 3D space is with :kbd:`G`.
Pressing :kbd:`G` activates "Grab/Move" transformation mode.
The selected object or data then moves freely according to the mouse pointer's location and camera.
Using this shortcut in combination with specific shortcuts which specify a chosen axis gives you
full control over your transformation.

:kbd:`LMB`
   Confirm the move, and leave the object or data at its current location on the screen.
:kbd:`MMB`
   Constrain the move to the X, Y or Z axis according to the position of the mouse pointer in the 3D View.
   After pressing :kbd:`G`, if the :kbd:`MMB` is pressed,
   a visual option to constrain the translation will be available,
   showing the three axes in the 3D View space. The axis of choice to confirm the operation
   will depend on the axis about which the :kbd:`MMB` is released. At any point during the operation,
   the chosen axis can be changed by pressing :kbd:`X`, :kbd:`Y`, :kbd:`Z` on the keyboard.

   .. figure:: /images/editors_3dview_trans_basics_grab_mmb.jpg

      Axis-Constraint in action.

:kbd:`RMB` or :kbd:`Esc`
   Cancel the move, and return the object or data to its original location.
:kbd:`Shift` + :kbd:`X`, :kbd:`Y`, :kbd:`Z`
   This modifying hotkey locks the translation axis,
   allowing the object to move freely on the two axes that are not locked.
   For example, :kbd:`Shift X` means the object will translate
   on the Y and Z axes while remaining at the same point on the X axis.

   .. figure:: /images/editors_3dview_trans_basics_grab-axis.jpg

      :kbd:`Shift X` in action.

:kbd:`Alt-G`
   clears any previous transformation on the object and sets its origin back to the center.
   This only works in Object Mode.

You can also move an object by clicking and holding :kbd:`RMB` on the object to move it.
To confirm the action, press :kbd:`LMB`.

.. note::

   This behavior can be changed using *Release Confirms* in the :doc:`User Preferences </preferences/editing>`,
   so that a single :kbd:`RMB` drag can be used to move and confirm.


Controlling Precision
=====================

In addition to the Axis constraint options listed above,
Blender offers options to limit the amount of the transformation in small or predefined steps.

:kbd:`Shift`
   Slow translation mode. While still in the grab mode i.e. after :kbd:`G` is pressed,
   holding down :kbd:`Shift` reduces how quickly the object moves and allows extra precision.
:kbd:`Ctrl`
   This activates :doc:`snapping </editors/3dview/object/transform/transform_control/precision/snap>` based on the
   snapping constraint which has been already set. You may not be able to enable every snapping option in all cases.
:kbd:`Ctrl-Shift`
   Precise snap. This option will move the object with high precision along with the snapping constraint.
:kbd:`X`, :kbd:`Y`, :kbd:`Z` + decimal number
   This option limits the transformation to the specified axis and the decimal number specified
   will be the magnitude of the translation along that axis.
   This decimal number is displayed at the bottom left corner of the 3D View editor as it is entered.

   - Hitting :kbd:`Backspace` during number entry and deleting the number removes the numerical
     specification option but the object will remain constrained to the same axis.
   - Hitting :kbd:`/` during number entry switches the number being entered to its reciprocal,
     e.g. :kbd:`2 /` results in 0.5 (1/2); :kbd:`2/0` results in 0.05 (1/20).
   - The axis of movement can be changed at any time during translation by typing :kbd:`X`, :kbd:`Y`, :kbd:`Z`.

.. tip::

   Moving an object in Object Mode changes the object's origin.
   Moving the object's vertices/edges/faces in Edit Mode does not change the object's origin.
