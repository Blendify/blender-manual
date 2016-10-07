..    TODO/Review: {{review|partial=X}}.

*************
Action Editor
*************

In Blender *Actions* are a generic containers for F-Curves.
Actions can contain any number of F-Curves, and can be attached to any data-block.
As long as the RNA data paths stored in the Action's F-Curves can be found on that data-block,
the animation will work. For example, an action modifying *X location* and *Y location*
properties can be shared across multiple objects,
since both objects have *X location* and *Y location* properties beneath them.

The *Action Editor* enables you to see and edit the F-Curve data-blocks you defined as actions in the
*F-Curve Editor*. So it takes place somewhere in-between the low-level
:doc:`F-Curves </editors/graph_editor/introduction>`, and the high-level :doc:`NLA editor </editors/nla/index>`.
Hence, you do not have to use them for simple F-Curve animations -- and they have not much interest in themselves,
so you will mostly use this editor when you do :doc:`NLA animation </editors/nla/index>`
(they do have a few specific usages on their own,
though, like e.g. with the :doc:`Action constraint </rigging/constraints/relationship/action>`,
or the :doc:`pose libraries </rigging/armatures/properties/pose_library>`).

This is not a mandatory editor, as you do can edit the actions used by the NLA directly in the
*Graph Editor* (or even the *NLA Editor* one).
However, it gives you a slightly simplified view of your F-Curve data-blocks
(somewhat similar to the "key" mode of the F-Curve,
even though more powerful in some ways) -- and, more interesting,
it can show you all "action" F-Curve data-blocks of a same object at once.

Additionally, it also allows you to affect timing of the different keys of the layers created with the
:doc:`grease pencil tool </interface/grease_pencil/introduction>`.

Each "action" F-Curve data-block forms a top-level channel (see below).
Note that an object can have several *Constraint* (one per animated constraint)
and *Pose* (for armatures, one per animated bone) F-Curve data-blocks,
and hence an action can have several of these channels.


Action Data-Blocks
==================

As everything else in Blender, actions are data-blocks. Unlike F-Curve ones,
there is only one type of action, which can regroup all F-Curve of a given object.
You will find its usual data-block menu in the *Action Editor* header.

However, there is one specificity with action data-blocks: they have by default a "fake user",
i.e. once created, they are always kept in the blend-file, even if no object uses them.
This is due to the fact that actions are designed to be used in the NLA,
where you can affect several different actions to a same object! Yes,
this is the only way to use different actions (and hence,
different F-Curve data-blocks of the same kind) to animate a same object.
But as you have to assign an action to an object to be able to edit it
(and an object can only have one action data-block at a time), to have "fake users" guaranties
you that you will not lose your precious previously-edited actions when you start working on a new one!

This editor shows, by default, the action data-block linked to the current active object.
However, as with F-Curves, you can pin an *Action Editor* to a given action with the
small "pin" button to the left of the data-block controls, in the header.
This will force the editor to always display this data-block,
whatever the current selected object is.


Channel Menu
============

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
