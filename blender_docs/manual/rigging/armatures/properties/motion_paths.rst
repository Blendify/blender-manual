
************
Motion Paths
************

.. admonition:: Reference
   :class: refbox

   | Mode:     Pose Mode
   | Panel:    :menuselection:`Armature tab --> Motion Paths panel`
   | Menu:     :menuselection:`Pose --> Motion Paths --> ...`
   | Hotkey:   :kbd:`W-3`, :kbd:`W-4`

.. figure:: /images/rigging_posing_visualization_motion-paths-example.png

   An example of motion paths.


This feature allows you to visualize as curves the paths of bones' ends
(either their tips, by default, or their roots).

Before we look at its options, let us first see how to display/hide these paths.
Unlike :doc:`/rigging/armatures/properties/ghost`, you have to do it manually
and you have to first select the bones you want to show/hide the motion paths. Then,

- To show the paths (or update them, if needed),
  click on the *Calculate Path* button in the panel, or,
  in the 3D Views, select the :menuselection:`Pose --> Motion Paths --> Calculate Paths` menu entry
  (or use the *Specials* pop-up menu, :kbd:`W-3`).
- To hide the paths, click on the *Clear Paths* button, or,
  in the 3D Views, do :menuselection:`Pose --> Motion Paths --> Clear All Paths`, or :kbd:`W-4`.

.. note::

   Remember that only selected bones and their paths are affected by these actions!


The paths are drawn in a light shade of gray for unselected bones,
and a slightly blueish gray for selected ones.
Each frame is materialized by a small white dot on the paths.

As with ghosts, the paths are automatically updated when you edit your poses/keyframes,
and they are also active during animation playback. :kbd:`Alt-A` is
only useful when the *Around Current Frame* option is enabled.


Options
=======

.. figure:: /images/rigging_posing_visualization_motion-paths-panel.png

   The Motion Paths Panel showing options for the different types.

Type
   Around Frame
      Around Frame, Display Paths of poses within a fixed number of frames around the current frame.
      When you enable this button, you get paths for a given number of frames before and after the current one
      (again, as with ghosts).
   In Range
      In Range, Display Paths of poses within specified range.

Display Range
   Before/After
      Number of frames to show before and after the current frame
      (only for 'Around Current Frame' Onion-skinning method).
   Start/End
      Starting and Ending frame of range of paths to display/calculate
      (not for 'Around Current Frame' Onion-skinning method).
   Step
      This is the same as the *GStep* for ghosts.
      It allows you to only display on the path one frame for each *n* ones.
      Mostly useful when you enable the frame number display (see below), to avoid cluttering the 3D Views.

Cache for Bone
   From, To
Calculate
   Start, End
      These are the start/end frames of the range in which motion paths are drawn.
      You have to *Calculate Paths* again if you modify this setting, to update the paths in the 3D Views.
      Note that unlike with ghosts, the start frame is *inclusive*
      (i.e. if you set *Start* to 1, you will really see the frame 1 as starting point of the paths...).

   Bake Location
      By default, you get the tips' paths.
      By changing this setting to Tails, you will get the paths of the bone's roots
      (remember that in Blender UI, bones' roots are called "heads"...).
      You have to *Calculate Paths* again if you modify this setting,
      to update the paths in the 3D Views.


Show
----

Frame Numbers
   When enabled, a small number appears next to each frame dot on the path,
   which is of course the number of the corresponding frame.

Keyframes
   When enabled, big yellow square dots are drawn on motion paths, materializing the keyframes of their bones
   (i.e. only the paths of keyed bones at a given frame get a yellow dot at this frame).
\+ Non-Grouped Keyframes
   For bone motion paths, search whole Action for keyframes instead of in group with matching name only (is slower).
Keyframe Numbers
   When enabled, you will see the numbers of the displayed keyframes,
   so this option is obviously only valid when *Show Keys* is enabled.
