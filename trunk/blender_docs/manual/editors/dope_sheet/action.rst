..    TODO/Review: {{review|partial=X}}.

*************
Action Editor
*************


The *Action Editor* enables you to see and edit the F-Curve data-blocks you defined
as :doc:`Actions </animation/actions>` in the *F-Curve Editor*.
So it takes place somewhere in-between the low-level
:doc:`F-Curves </editors/graph_editor/introduction>`, and the high-level :doc:`NLA editor </editors/nla/index>`.

It gives you a slightly simplified view of the F-Curve data-blocks
(somewhat similar to F-Curve drawn without handles).
The editor can lists all Action data-blocks of an object at once.

Each Action data-block forms a top-level channel (see below).
Note that an object can have several *Constraint* (one per animated constraint)
and *Pose* (for armatures, one per animated bone) F-Curve data-blocks,
and hence an action can have several of these channels.

..
   :doc:`Action constraint </rigging/constraints/relationship/action>` or
   the :doc:`pose libraries </rigging/armatures/properties/pose_library>`


Header
======

Action
   A :ref:`Data-block menu <ui-data-block>`.

   Add
      When an action is created it is stored in a NLA Action Stash.


Channel Menu
------------

Delete :kbd:`X`
   Deletes the whole channel from the current action
   (i.e. unlink the underlying F-Curve data-block from this action data-block).

 .. warning::

   The :kbd:`X` shortcut is area-dependent: if you use it in the left list part,
   it will delete the selected channels, whereas if you use it in the main area,
   it will delete the selected keyframes.

:menuselection:`Settings --> Toogle/Enable/Disable a Setting`, :kbd:`Shift-W` or :kbd:`Ctrl-Shift-W` or :kbd:`Alt-W`
   Enable/disable a channel's setting (selected in the menu that pops-up) - currently, "lock" and/or "mute" only.

Toggle Channel Editability :kbd:`Tab`
   Locks or unlocks a channel for editing

Extrapolation Mode
   Change the extrapolation between selected keyframes. More options are available in the Graph Editor.

Expand Channels, Collapse Channels :kbd:`NumpadPlus`, :kbd:`NumpadMinus`
   Expands or collapses selected channels.

Move...
   This allows you to move top-level channels up/down :kbd:`Shift-PageUp`, :kbd:`Shift-PageDown`,
   or directly to the top/bottom :kbd:`Ctrl-Shift-PageUp`, :kbd:`Ctrl-Shift-PageDown`.

Revive Disabled F-Curves
   Clears "disabled" tag from all F-Curves to get broken F-Curves working again.
