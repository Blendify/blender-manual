
************
Introduction
************

In addition to modeling and animation, Blender can be used to edit video.
There are two possible methods for this one being the :doc:`Compositor </compositing/introduction>`.
However, this chapter is on the other, the Video Sequence Editor (VSE) and some time shorten to just Sequencer.
The Sequencer within Blender is a complete video editing system that allows you to combine multiple
video channels and add effects to them. You can use these effects to create powerful video edits
(especially when you combine it with the animation power of Blender!).

To use the VSE, you load multiple video clips and lay them end-to-end (or in some cases, overlay them),
inserting fades and transitions to link the end of one clip to the beginning of another.
Finally, you can audio and synchronize the timing of the video sequence to match it.

.. figure:: /images/editors_sequencer_modes_screen_layout.jpg

   Default Video Editing screen layout.

The Video Sequence Editor has a header (where the menu and view modes are shown) and a workspace,
and works in one of several view modes. The Marker menu allows you to add markers in the VSE.
Markers are shared across animation editors. See :doc:`Markers </animation/markers>`

The sequencer workspace is horizontally striped into channels and each video strip will go in
a horizontal channel. Each channel is numbered on the left-hand side, starting from zero and going up.

.. note::

   The first channel 0 is unusable as a place to put strips.
   This is because it is used by the :doc:`Sequencer Display </editors/sequencer/preview/introduction>`
   to show a composite of all strips above channel 0.

Stripes toward the bottom are more dominant, which we will get to in a minute.
In the x direction, seconds of animation or frames of animation,
:kbd:`Ctrl-T` to choose, are used as the measure of time (seconds 1 through 7 are shown).
You can scale the time using the zoom keys or mouse actions (see the Reference for more info).

.. figure:: /images/editors_sequencer_introduction_header.png

   Video Sequencer Header.

.. note::

   By default the Sequencer is enabled however, it can be disabled
   in the :doc:`Post Processing Panel </render/post_process/panel>`.
