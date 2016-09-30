
.. _recover-options-for-actions:

*************
Undo and Redo
*************

The commands listed below will let you roll back an accidental action,
redo your last action, or let you choose to recover to a specific point,
by picking from a list of recent actions recorded by Blender.


Undo
====

If you want to undo your last action, just press :kbd:`Ctrl-Z`

.. seealso::

   :doc:`Editing Preferences </preferences/editing>` section on undo to change defaults.


Redo
====

To roll back the Undo action, press :kbd:`Ctrl-Shift-Z`.


.. _ui-redo-last:

Redo Last
=========

*Redo Last* is short for *Redo(ing the) Last (Action)*.
Hitting :kbd:`F6` after an action will present you a context-sensitive
Pop-Up menu based on your last action taken and the Mode and Editor in which Blender is being used.

For example, if your last action was a rotation in *Object Mode*,
Blender will show you the last value changed for the angle (see Fig. :ref:`fig-interface-redo-last` left),
where you can change your action back completely by typing :kbd:`Numpad0`.
There are other useful options, based on your action context,
and you cannot only Undo actions, but change them completely using the available options.

If you are in *Edit Mode*,
Blender will also change its contents based on your last action taken.
In our second example (at the right), the last action taken was a Vertex Move;
we did a *Scale* on a Face, and, as you can see,
the contents of the Pop-Up menu are different, because of your mode (Edit Mode)
(See Fig. :ref:`fig-interface-redo-last` right).

.. _fig-interface-redo-last:

.. figure:: /images/interface_undo-redo_last.png

   Redo last.

   Left Image: Redo Last- Rotation (Object Mode, 60 degrees),
   Right Image: Redo Last- Scale (Edit Mode, Resize face)

.. tip:: Operations using Redo Last

   Some operations produce particularly useful results if you tweak their parameters with the :kbd:`F6` Menu.
   Take, for example, adding a Circle. If you reduce the Vertex count to three,
   you get a perfect equilateral triangle.


Undo History
============

.. figure:: /images/interface_undo-redo_history.png
   :align: right

   The Undo History Menu.


There is also an Undo History of your actions, recorded by Blender.
You can access the history with :kbd:`Ctrl-Alt-Z`.

Rolling back actions using the *Undo History* feature will take you back to the
action you choose. Much like how you can alternate between going backward in
time with :kbd:`Ctrl-Z` and then forward with :kbd:`Ctrl-Shift-Z`,
you can hop around on the Undo timeline as much as you want as long as you do not make a new change.
Once you do make a new change, the Undo History is truncated at that point.


Repeat Last
===========

The Repeat Last feature will Repeat your last action when you press :kbd:`Shift-R`.

In the example Images below, we duplicated a *Monkey* mesh,
and then we moved the Object a bit.
Using repeat :kbd:`Shift-R`, the *Monkey* was also duplicated and moved.


.. list-table::

   * - .. figure:: /images/interface_undo-redo_repeat-last1.png

          Suzanne.

     - .. figure:: /images/interface_undo-redo_repeat-last2.jpg

          After a :kbd:`Shift-D` and move.

     - .. figure:: /images/interface_undo-redo_repeat-last3.jpg

          After a :kbd:`Shift-R`.


Repeat History
==============

.. figure:: /images/interface_undo-redo_repeat.jpg
   :align: right

   The Repeat Menu.

The *Repeat History* feature will present you a list of the last repeated actions,
and you can choose the actions you want to repeat.
It works in the same way as the Undo History, explained above,
but the list contains only repeated actions. To access Repeat History, use :kbd:`F3`.

.. container:: lead

   .. clear

.. note::

   Blender uses two separate Histories, one dedicated for the *Edit Mode*,
   and one dedicated for the *Object Mode*.

.. important::

   When you quit Blender, the complete list of user actions will be lost, even if you save your file before quitting.

.. seealso::

   Troubleshooting section on :doc:`Recovering your lost work </troubleshooting/recover>`
