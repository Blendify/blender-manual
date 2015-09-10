
..    TODO/Review: {{review|copy=X}} .

*******
Markers
*******

Markers are used to denote frames at which something significant happens - it could be that a
character's animation starts, the camera changes position, or a door opens, for example.
Markers can be given names to make them more meaningful at a quick glance.
They are available in many of Blender's windows, under different forms. Unlike the keyframes,
markers are always placed at a whole frame number, you cannot e.g.
set a marker at "frame ``2.5`` ".

Markers can be created and edited in all of the following editors
(including their different modes):


- The :doc:`Graph Editor Window </animation/editors/graph>`.
- The :doc:`Action Editor window </animation/basics/actions>`.
- The :doc:`The Dope Sheet </animation/editors/dopesheet>`.
- The :doc:`NLA Editor window </animation/editors/nla>`.
- The :doc:`Video Sequence Editor window </editors/sequencer/index>`.
- The :doc:`Timeline window </animation/editors/timeline>`.When you create

A marker created in one of these windows will also appear in all others that support them,
including:


- The :doc:`3D View window </editors/3dview/navigate/index>`.


Pose markers
============

There is another type of markers, called "pose markers",
which are specific to the armatures and the Action Editor window.
They are related to the pose libraries, and are discussed in detail :doc:`here </rigging/posing/pose_library>`.


Visualization
=============

Standard
--------

.. figure:: /images/Animation-Timeline-Markers.jpg

   Markers: small but useful.


Most of the window types visualize markers the same way: as small triangles at their bottom,
white if unselected or yellow if selected.

If they have a name, this is shown to their right, in white when the marker is selected. See
(Markers: small but useful).


Sequencer
---------

.. figure:: /images/Sequencer-markers.jpg
   :width: 186px

   Markers in the Sequencer


The **Video Sequence Editor** just adds a vertical dashed line to each marker
(gray if the marker is unselected, or white if it's selected).


3D View
-------

.. figure:: /images/AnimationMarkers3DViewEx.jpg

   Marker in a 3D View.


The View do not allow you to create/edit/remove markers,
they just show their name between ``<>`` at there bottom left corner,
near the active object's name, when you are at their frame
(see Marker in a 3D view).


Creating and Editing Markers
============================

Unfortunately, there is no common shortcuts and menu for marker's editing, across the
different window types that supports them... So in the refboxes of each action described below,
I put the most-common shortcut and menu entry, with the known exceptions between brackets.


Creating Markers
----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> Add Marker` (:menuselection:`Frame --> Add Marker` in a timeline)
   | Hotkey:   :kbd:`M` (:kbd:`Ctrl-Alt-M` in a VSE)


The simplest way to add a marker is to move to the frame where you would like it to appear,
and press :kbd:`M` (or :kbd:`Ctrl-Alt-M` in a video sequence editor).

Alternatively, you can press :kbd:`Alt-A`
(or the "playback" button of the *Timeline* window) to make the animation play,
and then press :kbd:`M` (or :kbd:`Ctrl-Alt-M` in VSE) at the appropriate points.
This can be especially useful to mark the beats in some music.


Selecting Markers
-----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Hotkey:   :kbd:`RMB`, :kbd:`Shift-RMB`, :kbd:`A` / :kbd:`Ctrl-A`, :kbd:`B` / :kbd:`Ctrl-B`


Click :kbd:`RMB` on the marker's triangle to select it. Use :kbd:`Shift-RMB` to
(de)select multiple markers.

In the Ipo Curve Editor, Action Editor, NLA Editor and Video Sequence Editor windows,
you can also (de)select all markers with :kbd:`Ctrl-A`,
and border-select them with :kbd:`Ctrl-B` (as usual, :kbd:`LMB` to select,
:kbd:`RMB` to deselect).
The corresponding options are found in the Select menu of these windows.

In the Timeline and Audio windows, you can (de)select all markers with :kbd:`A` ,
and border (de)select them with :kbd:`B` ...


Naming Markers
--------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> (Re)Name Marker` ( :menuselection:`Frame --> Name Marker` in a timeline)
   | Hotkey:   :kbd:`Ctrl-M`


Having dozens of markers scattered throughout your scene's time won't help you much unless you
know what they stand for. You can name a marker by selecting it, pressing :kbd:`Ctrl-M`,
typing the name, and pressing the OK button.


Moving Markers
--------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> Grab/Move Marker`
     ( :menuselection:`Frame --> Grab/Move Marker` in a timeline)
   | Hotkey:   :kbd:`Ctrl-G` ( :kbd:`G` in a timeline or audio)


Once you have one or more markers selected, press :kbd:`Ctrl-G`
(or :kbd:`G` in Timeline or Audio windows) to move them,
and confirm the move with :kbd:`LMB` or :kbd:`Return` (as usual,
cancel the move with :kbd:`RMB`, or :kbd:`Esc`).

By default, you grab the markers in one-frame steps, but if you hold :kbd:`Ctrl`, the
markers will move in steps corresponding to one second - so if you have set your scene to
**25 fps**, the markers will move in twenty-five-frames steps.


Duplicating Markers
-------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> Duplicate Marker`
     ( :menuselection:`Frame --> Duplicate Marker` in a timeline)
   | Hotkey:   :kbd:`Ctrl-Shift-D` ( :kbd:`Shift-D` in a timeline or audio)


You can duplicate the selected markers by pressing :kbd:`Ctrl-Shift-D`
(or :kbd:`Shift-D` in a Timeline or Audio window). Once duplicated,
the new ones are automatically placed in grab mode, so you can move them where
(or rather when) you want.

Note that unlike most other duplications in Blender,
the names of the duplicated markers are not altered at all
(no ``.001`` numeric counter append...).


Deleting Markers
----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:    :menuselection:`Marker --> Delete Marker` ( :menuselection:`Frame --> Delete Marker` in a timeline)
   | Hotkey:   :kbd:`Shift-X` ( :kbd:`X` in a timeline or audio)


To delete the selected marker(s) simply press :kbd:`Shift-X`
(or :kbd:`X` in a Timeline or Audio'' window),
and confirm the pop-up message with :kbd:`LMB`.
