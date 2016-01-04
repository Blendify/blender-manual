
************
Introduction
************

In addition to modeling and animation, Blender has a fully functional Video Sequence Editor (VSE)
as well as an advanced node-based editor that also manipulates a video stream.
:doc:`Compositing Nodes </compositing/types/index>` operate equally well on images or video streams,
and can apply detailed image manipulation on the stream.

The VSE within Blender is a complete video editing system that allows you to combine multiple
video channels and add effects to them. You can use these effects to create powerful video edits
(especially when you combine it with the animation power of Blender!) Furthermore,
it is extensible via a plugin system to perform an unlimited number of image manipulations.

Using the VSE, you load multiple video clips and lay them end-to-end (or in some cases,
overlay them),
inserting fades and transitions to link the end of one clip to the beginning of another.
Finally,
add an audio track so you can synchronize the timing of the video sequence to match it.
The result of using the VSE is your finished movie.

.. figure:: /images/sequencer_modes_screen_layout.jpg

   Default Video Editing screen layout.

The Video Sequence Editor has a header (where the menu and view modes are shown) and a workspace,
and works in one of several view modes. The Marker menu allows you to add markers in the VSE.
Markers are shared across animation editors. See :doc:`Markers </animation/markers>`

The sequencer workspace is horizontally striped into channels and each video strip will go in
a horizontal channel. Each channel is numbered on the left-hand side, starting from 0
(you can't put anything thing in this special one!) and going up.
Stripes toward the bottom are more dominant, which we'll get to in a minute.
In the x direction, seconds of animation or frames of animation
(:kbd:`Ctrl-T` to choose) are used as the measure of time
(seconds 1 through 7 are shown). You can scale the time using the zoom keys or mouse actions
(see the Reference for more info).

.. figure:: /images/vse-header.jpg

   Video Sequence Editor in Sequence display mode

.. note::

   By default the Sequencer is enablied however it can be disabled
   in the :doc:`Post Processing Panel </render/post_process/panel>`
