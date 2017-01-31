
********
Channels
********

Channels Region
===============

.. figure:: /images/editors_graph-editor_introduction_channels-region.png

   Channels Region.

The channels region is used to select and manage the curves for the Graph editor.
This part shows the objects and their animation data hierarchy each as headers.
Each level can be expended/collapsed by the small arrow to the left of its header.

- Objects (dark blue)
- :doc:`Actions </animation/actions>`, :doc:`Shape keys </animation/shape_keys/index>` (light blue)
- Groups (green)
- Channels (gray)


Controls
--------

On the headers, there are toggles to control channel's setting:

Pin (pin icon)
   ToDo (Graph editor only).
Hide (eye icon)
   Hides the channel(s)/curve (Graph editor only).
Modifiers (wrench icon)
   Deactivates the F-Modifiers of the curve or all curves in the channel.
Mute (speaker icon)
   Deactivates the channel/curve.
Lock (padlock icon)
   Toggle channel/curve from being editable.

   .. note::

      In the Dope Sheet this is also working inside the NLA,
      but that it does not prevent edition of the underlying F-Curve).


Selecting
---------

- Select channel (text in white/black): :kbd:`LMB`
- Multi Select/Deselect: :kbd:`Shift-LMB`
- Toggle Select All: :kbd:`A`
- Border Select: (:kbd:`LMB` drag) or :kbd:`B` (:kbd:`LMB` drag)
- Border Deselect: (:kbd:`Shift-LMB` drag) or :kbd:`B` (:kbd:`Shift-LMB` drag)


Editing
-------

- Rename: :kbd:`Ctrl-LMB`
- Delete selected: :kbd:`X` or :kbd:`Delete`
- Lock selected: :kbd:`Tab`
- Make only selected visible: :kbd:`V`
- Enable Mute Lock selected: :kbd:`Shift-Ctrl-W`
- Disable Mute Lock selected: :kbd:`Alt-W`
- Toggle Mute Lock selected: :kbd:`Shift-W`


Menu
=====

Delete Channels :kbd:`X`
   Deletes the whole channel from the current action
   (i.e. unlink the underlying F-Curve data-block from this action data-block).

   .. warning::

      The :kbd:`X` shortcut is area-dependent: if you use it in the left list part,
      it will delete the selected channels, whereas if you use it in the main area,
      it will delete the selected keyframes.

Un/Group Channels :kbd:`Ctrl-G`, :kbd:`Alt-G`
   ToDo.
Settings Toogle/Enable/Disable, :kbd:`Shift-W`, :kbd:`Ctrl-Shift-W`, :kbd:`Alt-W`
   Enable/disable a channel's setting (selected in the menu that pops-up).

   Lock, Mute
Toggle Channel Editability :kbd:`Tab`
   Locks or unlocks a channel for editing
Extrapolation Mode
   Change the :ref:`extrapolation <editors-graph-fcurves-settings-extrapolation>` between selected keyframes.
Expand Channels, Collapse Channels :kbd:`NumpadPlus`, :kbd:`NumpadMinus`
   Expands or collapses selected channels.
Move...
   This allows you to move top-level channels up/down :kbd:`Shift-PageUp`, :kbd:`Shift-PageDown`,
   or directly to the top/bottom :kbd:`Ctrl-Shift-PageUp`, :kbd:`Ctrl-Shift-PageDown`.
Revive Disabled F-Curves
   Clears "disabled" tag from all F-Curves to get broken F-Curves working again.
