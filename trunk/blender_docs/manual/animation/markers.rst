
*******
Markers
*******

Markers are used to denote frames at which something significant happens,
i.e. it could be that a character's animation starts, the camera changes position, or a door opens.
Markers can be given names to make them more meaningful at a quick glance.
They are available in many of Blender's editors.

.. note::

   Unlike keyframes, markers are always placed at a whole frame number, you cannot set a marker at frame 2.5.


Markers can be created and edited in the following editors:

- :doc:`Graph Editor </editors/graph_editor/introduction>`
- :doc:`Action Editor </animation/actions>`
- :doc:`Dope Sheet </editors/dope_sheet/introduction>`
- :doc:`NLA Editor </editors/nla/index>`
- :doc:`Video Sequence Editor </editors/sequencer/index>`
- :doc:`Timeline </editors/timeline>`

.. note::

   A marker created in one of these editors will also appear in all others that support them.


Types
=====

Next to the standard markers *Pose markers* are another type of markers,
which are specific to armatures.
They are used to denote poses in the Action Editor mode of Dope Sheet.


Visualization
=============

Standard
--------

.. figure:: /images/animation_markers_standard.png
   :align: right

   Markers: small but useful.

Most of the editors visualize markers the same way: as small triangles at their bottom,
white if unselected or yellow if selected.

If they have a name, this is shown to their right, in white when the marker is selected.

.. container:: lead

   .. clear


Sequencer
---------

.. figure:: /images/animation_markers_sequencer.png
   :align: right

   Markers in the Sequencer.

The *Video Sequence Editor* just adds a vertical dashed line to each marker
(gray if the marker is unselected, or white if it is selected).

.. container:: lead

   .. clear


3D View
-------

.. figure:: /images/animation_markers_3d-view.png
   :align: right

   Marker in a 3D View.

The View does not allow you to create/edit/remove markers,
they just show their name between ``<>`` at their bottom left corner,
near the active object's name, when you are at their frame
(see Marker in a 3D View).

.. container:: lead

   .. clear


Action Editor
-------------

.. figure:: /images/animation_markers_pose.png
   :align: right

   Pose markers in the Action Editor.

Pose markers show a diamond-shaped icon in Action Editor mode of the Dope Sheet.

.. container:: lead

   .. clear


Add Marker
==========

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> Add Marker`
   | Hotkey:   :kbd:`M` or :kbd:`Ctrl-Alt-M` in the VSE Editor


The simplest way to add a marker is to move to the frame where you would like it to appear,
and press :kbd:`M`.

.. hint::

   Markers can also be added while playback.


.. _marker-pose-add:

Pose Markers
------------

If *Show Pose Markers* is checked Pose markers are added 
and a new pose in the :doc:`Pose Library </rigging/armatures/properties/pose_library>`.


Selecting
=========

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


Editing
=======

Duplicate Marker
----------------

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


Rename Marker
-------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> Rename Marker`
   | Hotkey:   :kbd:`Ctrl-M`


Having dozens of markers scattered throughout your scene's time will not help you much unless you
know what they stand for. You can name a marker by selecting it, pressing :kbd:`Ctrl-M`,
typing the name, and pressing the OK button.


Grab/Move Marker
----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     all modes
   | Menu:     :menuselection:`Marker --> Grab/Move Marker`
   | Hotkey:   :kbd:`G`


Once you have one or more markers selected, press :kbd:`G`,
while hovering with the mouse over the marker (bar),
to move them, and confirm the move with :kbd:`LMB` or :kbd:`Return`
(as usual, cancel the move with :kbd:`RMB`, or :kbd:`Esc`).
Or drag it with :kbd:`RMB`.

By default, you grab the markers in one-frame steps, but if you hold :kbd:`Ctrl`,
the markers will move in steps corresponding to one second (according to the scenes *FPS*).


Show Pose Markers
-----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Action Editor
   | Menu:     :menuselection:`Marker --> Show Pose Markers`

Pose markers are shown in Action editor by enabling the :menuselection:`Marker --> Show Pose Markers` checkbox.

