Grab/Move
*********

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* Mode, *Edit* Mode, and *Pose* Mode for the 3D View;
     *UV/Image Editor* Tools, *Sequence Editor*, *Dopesheet*,
     and *Graph Editor* for other specific types of Grab/Move operation.
   | Menu:     Context Sensitive, Object Based --> *Transform* --> *Grab/Move*
   | Hotkey:   :kbd:`G` or combinations for specific Axis constraint


In Object Mode, the grab/move option lets you translate (move) objects.
It also lets you translate any elements that make up the object within the 3D space of the active 3D viewport.
Grab/Move works similarly here as it does
in the Node Editor, Graph Editor, UV Editor, Sequencer, etc.

Options and other details will be discussed in their respective sections.


.. figure:: /images/3D_inter_translate_value_display.jpg

   Translation Display

While Grab/Move is active, the amount of change in the X,
Y and Z co-ordinates is displayed at the bottom left corner of the 3D View window.

3D View
=======

There are **2** ways to Grab/Move in *3D View*:

- Using shortcuts and combinations of shortcuts.
- Using the *Transform Widget* helper. This can be toggled from the *Translation Widget* in the header of the 3DView.


Transform Widget
----------------

.. figure:: /images/FAQ-Transform_widget-2.jpg

   Translation Widget


In the default installation of Blender, this is the *Transform Widget*.
It is active by default. You can use the widget by holding :kbd:`LMB` over it and dragging in the 3D view.

Shortcuts in the 3D View
------------------------

A quicker way to move objects in 3D space is with the :kbd:`G` hotkey.
Pressing :kbd:`G` activates "Grab/Move" transformation mode.
The selected object or data then moves freely according to the mouse pointer's location and camera.
Using this shortcut in combination with specific shortcuts which specify a chosen axis gives you
full control over your transformation.

:kbd:`LMB`
   Confirm the move, and leave the object or data at its current location on the screen.

.. figure:: /images/3D_interaction_trans_basics_grab_mmb.jpg

   Axis-Constraint in action

:kbd:`MMB`
   Constrain the move to the X, Y or Z axis according to the position of the mouse pointer in the 3D View.
   After pressing the :kbd:`G` key, if the :kbd:`MMB` is pressed,
   a visual option to constrain the translation will be available,
   showing the three axes in the 3D View space. The axis of choice to confirm the operation
   will depend on the axis about which the :kbd:`MMB` is released. At any point during the operation,
   the chosen axis can be changed by pressing :kbd:`X`, :kbd:`Y`, :kbd:`Z` on the keyboard.

:kbd:`RMB` or :kbd:`Esc`
   Cancel the move, and return the object or data to its original location.

.. figure:: /images/basic_trans_grab_shift_xyz.jpg

   Shift+X in action


:kbd:`Shift` + :kbd:`X`/:kbd:`Y`/:kbd:`Z`
   This modifying hotkey locks the translation axis,
   allowing the object to move freely on the two axes that aren't locked.
   For example, :kbd:`Shift` +
   :kbd:`X` means the object will translate on the Y and Z axes while remaining at the same point on the X axis.

:kbd:`Alt` + :kbd:`G` clears any previous transformation on the object and sets its origin back to the center.
This only works in Object Mode.

You can also move an object by clicking and holding :kbd:`RMB` on the object to move it.
To confirm the action, press :kbd:`LMB`.

.. note::

   This behavior can be changed using *Release Confirms* in the :doc:`User Preferences </preferences/editing>`,
   so that a single :kbd:`RMB` drag can be used to move and confirm.


Controling Grab/Move Precision
------------------------------

In addition to the Axis constraint options listed above,
Blender offers options to limit the amount of the transformation in small or predefined steps.

:kbd:`Shift`
   Slow translation mode. While still in the grab mode i.e. after :kbd:`G` is pressed,
   holding down :kbd:`Shift` reduces how quickly the object moves and allows extra precision.

:kbd:`Ctrl`
   This activates :doc:`snapping </editors/3dview/transform/transform_control/snap>` based on the
   snapping constraint which has been already set. You may not be able to enable every snapping option in all cases.

:kbd:`Ctrl-Shift`
   Precise snap. This option will move the object with high precision along with the snapping constraint.

:kbd:`X`/:kbd:`Y`/:kbd:`Z` + decimal number
   This option limits the transformation to the specified axis and the decimal number specified
   will be the magnitude of the translation along that axis.
   This decimal number is displayed at the bottom left corner of the 3D view window as it is entered.

   - Hitting :kbd:`Backspace` during number entry and deleting the number removes the numerical
     specification option but the object will remain constrained to the same axis.

   - Hitting :kbd:`/` during number entry switches the number being entered to its reciprocal, e.g.
     :kbd:`2` :kbd:`/` results in 0.5 (1/2), :kbd:`2` :kbd:`/` :kbd:`0` results in 0.05 (1/20).

   - The axis of movement can be changed at any time during translation by typing :kbd:`X`/:kbd:`Y`/:kbd:`Z`.


Orientations
============

There are 5 standard orientation references for all transformations.
You can find out more about transform orientations :doc:`here
</editors/3dview/transform/transform_control/transform_orientations>`.

.. figure:: /images/3d_interaction_trans_grab_orientation.png

   Orientation choice menu

- Global (the default)
- Local
- Normal
- Gimbal
- View

Each mode is a co-ordinate system in which transformations can be carried out.
These orientations can be chosen from the pop-up menu to the side of the controls which toggle
and select the transformation manipulator widgets.

If you have changed the orientation to something other than Global,
you can hotkey your chosen axis of orientation by hitting the relevant axis modifying hotkey
**twice** instead of just once. Hitting the axis modifying hotkey three times reverts back to Global orientation.

   - The :kbd:`G` hotkey followed by :kbd:`X-X` or :kbd:`Y-Y` or
     :kbd:`Z-Z` allows you to translate the object in the object's Local axis by default,
     or on an axis of the selected orientation if the transform orientation is not set to Global.
     This modifying hotkey combination can be followed with numbers as described in the previous section.

   - The :kbd:`G` hotkey followed by :kbd:`Shift` and :kbd:`X-X` or :kbd:`Y-Y` or
     :kbd:`Z-Z` will lock the object's translation on a single Local axis by default,
     or on an axis of the selected orientation if the transform orientation is not set to Global.
     Locking one axis means the selected object moves freely on the other two axes.

.. figure:: /images/3d_interaction_trans_grab_xyz_number.png

   Numerical Entry Display


Other Editor Windows
====================

In other editors such as the UV/Image Editor, Sequence Editor, Dopesheet and Graph Editor,
the Grab/Move Operations are used to move objects or elements -
the difference from 3D View is that only two axes are used - usually **X** and **Y**.
You can use many of the same Grab/Move hotkeys after :kbd:`G`
(such as :kbd:`Shift` or :kbd:`X`)
in other editor windows and they will work much the same way as they do in 3D View.
Rotating and scaling also work in certain editors as well.


Hints
=====

- Moving an object in Object mode changes the object's origin.
  Moving the object's vertices/edges/faces in Edit Mode doesn't change the object's origin.
