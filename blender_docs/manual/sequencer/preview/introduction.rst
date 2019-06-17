************
Introduction
************

Sequencer preview is used to display result of rendering Sequencer timeline.
This can be further configured to display output from certain channel, overlay
or image analyzer(scope).


Header
======

View Menu
---------

Fit preview in window :kbd:`Home`
   Resize the preview so that it fits in the window.
Zoom :kbd:`Shift-B`
   Click and drag to draw rectangle and zoom to this rectangle.
Fractional zoom
   Resize the preview in steps from 1:8 to 8:1.
Safe Areas
   Display an overlay on the preview, marking where title safe region is.
Show Metadata
   Display Image metadata in the preview area.

.. TODO2.8(sequencer): document render entries?

Controls
--------

.. TODO2.8(sequencer): update image.

.. figure:: /images/editors_vse_preview_introduction_header.png

   Sequencer Display header.

Display Mode
   Mode to show different aspects of the composite result,
   for the current frame:

   - Image Preview: Colors (what you see).
   - Luma Waveform: Brightness/contrast.
   - Chroma Vectorscope: Color hue and saturation.
   - Histogram: Levels of red, green, and blue.

Display Channels
   - Color and Alpha: Display preview image with transparency over checkerboard pattern.
   - Color: Ignore transparency of preview image (fully transparent areas will be black).

..
   You can adjust the view by zooming in with :kbd:`Plus` and zoom out with :kbd:`Minus`.
   You can also reset the view with :kbd:`Home`.
