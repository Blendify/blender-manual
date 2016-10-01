
*******
Markers
*******

Markers are used to denote frames at which something significant happens,
i.e. it could be that a character's animation starts, the camera changes position, or a door opens.
Markers can be given names to make them more meaningful at a quick glance.
They are available in many of Blender's editors.

.. note::

   Unlike the keyframes, markers are always placed at a whole frame number, you cannot set a marker at frame 2.5.


Markers can be created and edited in the following editors:

- The :doc:`Graph Editor </editors/graph_editor/introduction>`.
- The :doc:`Action Editor </animation/actions>`.
- The :doc:`The Dope Sheet </editors/dope_sheet/introduction>`.
- The :doc:`NLA Editor </editors/nla>`.
- The :doc:`Video Sequence Editor </editors/sequencer/index>`.
- The :doc:`The Timeline </editors/timeline>`.

.. note::

   A marker created in one of these editors will also appear in all others that support them.


Visualization
=============

Standard
--------

Most of the editors visualize markers the same way: as small triangles at their bottom,
white if unselected or yellow if selected.

If they have a name, this is shown to their right, in white when the marker is selected.

.. figure:: /images/animation_markers_standard.png
   :align: center

   Markers: small but useful.


Sequencer
---------

The *Video Sequence Editor* just adds a vertical dashed line to each marker
(gray if the marker is unselected, or white if it is selected).

.. figure:: /images/animation_markers_sequencer.png
   :align: center

   Markers in the Sequencer.


3D View
-------

The View does not allow you to create/edit/remove markers,
they just show their name between ``<>`` at their bottom left corner,
near the active object's name, when you are at their frame
(see Marker in a 3D View).

.. figure:: /images/animation_markers_3d-view.png
   :align: center

   Marker in a 3D View.


Creating and Editing Markers
============================

Creating Markers
----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> Add Marker`
   | Hotkey:   :kbd:`M` or :kbd:`Ctrl-Alt-M` in the VSE Editor


The simplest way to add a marker is to move to the frame where you would like it to appear,
and press :kbd:`M`.

Alternatively, you can press :kbd:`Alt-A` (or the "playback" button of the Timeline)
to make the animation play, and then press :kbd:`M` at the appropriate points.
This can be especially useful to mark the beats in some music.


Selecting Markers
-----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Hotkey:   :kbd:`RMB`


Click :kbd:`RMB` on the marker's triangle to select it.
Use :kbd:`Shift-RMB` to select multiple markers.

In the Graph Editor, Dope Sheet, NLA Editor, and Video Sequence Editor,
you can also select all markers with :kbd:`Ctrl-A`, and border-select them with :kbd:`Ctrl-B`
(as usual, :kbd:`LMB` to select, :kbd:`RMB` to deselect).
The corresponding options are found in the Select menu of these editors.

In the Timeline, you can select all markers with :kbd:`A`, and border select with :kbd:`B`.


Naming Markers
--------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> Rename Marker`
   | Hotkey:   :kbd:`Ctrl-M`


Having dozens of markers scattered throughout your scene's time will not help you much unless you
know what they stand for. You can name a marker by selecting it, pressing :kbd:`Ctrl-M`,
typing the name, and pressing the OK button.


Moving Markers
--------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> Grab/Move Marker`
   | Hotkey:   :kbd:`Ctrl-G`


Once you have one or more markers selected, press :kbd:`G`
to move them, and confirm the move with :kbd:`LMB` or :kbd:`Return`
(as usual, cancel the move with :kbd:`RMB`, or :kbd:`Esc`).

By default, you grab the markers in one-frame steps, but if you hold :kbd:`Ctrl`,
the markers will move in steps corresponding to one second (according to the scenes *FPS*).


Duplicating Markers
-------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> Duplicate Marker`
   | Hotkey:   :kbd:`Shift-D`


You can duplicate the selected markers by pressing :kbd:`Shift-D`. Once duplicated,
the new ones are automatically placed in grab mode, so you can move them to the desired location.

.. note::

   Note that unlike most other duplications in Blender,
   the names of the duplicated markers are not altered at all
   (no ``.001`` numeric counter append).


Deleting Markers
----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> Delete Marker`
   | Hotkey:   :kbd:`X`


To delete the selected markers simply press :kbd:`X`,
and confirm the pop-up message with :kbd:`LMB`.


.. seealso::

   There is another type of markers, called "pose markers", which are specific to armatures.
   They are related to the pose libraries, and are discussed in detail
   :doc:`here </rigging/armatures/properties/pose_library>`.
