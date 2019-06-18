
**********
Properties
**********

Metadata
========

Todo 2.8.


Scene Preview/Render
====================

It allows you to control how the images of :doc:`Scene Strips </sequencer/sequencer/strips/scene>`
are displayed in the preview.

Preview Shading
   Method for rendering the viewport.
   See the 3D View's :ref:`view3d-viewport-shading` options.
Override Scene Settings
   TODO2.8.


View Settings
=============

Channel
   Selects the channel to show in the preview.

   Channel 0 is the compositing result of all strips.
   Channel 1 is the current frame's image from the strip in channel 1 only
   (channel 1 is at the bottom of the stack). The display of these modes is either the composite
   (channel 0) or the frame from the strip (channels 1 through n).

Show Overexposed
   Shows overexposed (bright white) areas using a zebra pattern.
   The threshold can be adjust with the slider.
Proxy Render Size
   Size to display proxies at in the preview region.
   Using a smaller preview size will increase speed.


Frame Overlay
=============

Option to enable the overlay. It can be used for comparing the current frame to a reference frame.

Frame
   The slider controls the offset of the reference frame relative to current frame.
Lock (padlock icon)
   It's still possible to lock the reference frame to its current position.
Type
   It describes the way the reference frame should be displayed.

   Rectangle
      Which means the rectangle area of reference frame will be displayed on top of current frame.
      This area can be defined by pressing :kbd:`O` key over the preview.
   Reference
      Only the reference frame is displayed in the preview region.
   Current
      Only the current frame is displayed in the preview region.

.. tip::

   It is possible to have several Sequence Editors opened and they can use different overlay types.
   So it is possible to have current and reference frames displayed in different editor spaces.


Safe Areas
==========

Shows guides used to position elements to ensure that
the most important parts of the video can be seen across all screens.

.. seealso::

   See :ref:`Safe Areas <camera-safe-areas>` in the camera docs.


Annotations
===========

Allows you to use :doc:`Annotations </interface/annotation_tool>` in the Sequencer.
