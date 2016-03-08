
**********
Safe Areas
**********

Safe areas are guides used to position elements to ensure that the most important
parts of the content can be seen across all screens.

Different screens have varying amounts of :term:`overscan`.
(specially older TV sets).
That means that not all content will be visible to all viewers,
since parts of the image surrounding the edges are not shown.
To work around this problem TV producers defined two areas where content is guaranteed to be shown:
action safe and title safe.

Modern LCD/plasma screens with purely digital signals have no :term:`overscan`,
yet safe areas are still considered best practice and may be legally required for broadcast.

In Blender, safe areas can be set from the Camera and Sequencer views.

.. figure:: /images/camera_safe_areas_ui.png

   The Safe areas panel found in the camera properties,
   and the view mode of the sequencer.


Main Safe Areas
===============

.. figure:: /images/camera_safe_areas.png

   **Red line:** Action safe. **Green line:** Title safe


Title Safe
   Also known as *Graphics Safe*.
   Place all important information (graphics or text) inside this area to
   ensure it can be seen by the majority of viewers.
Action Safe
   Make sure any significant action or characters in the shot are inside this area.
   This zone also doubles as a sort of "margin" for the screen which can be used
   to keep elements from piling up against the edges.

.. tip:: Legal Standards

   Each country sets a legal standard for broadcasting.
   These include, among other things, specific values for safe areas.
   Blender defaults for safe areas follow the EBU (European Union) standard.
   Make sure you're using the correct values when working for broadcast to avoid any trouble.


Center-Cuts
===========

.. figure:: /images/camera_safe_areas_centercuts.png

   **Cyan line:** action center safe. **Blue line:** title center safe


Center-cuts are a second set of safe areas to ensure content
is seen correctly on screens with a different aspect ratio.
Old TV sets receiving ``16:9`` or ``21:9`` video will cut off the sides.
Position content inside the center-cut areas to make sure the most important elements
of your composition can still be visible in these screens.

Blender defaults show a ``4:3`` (square) ratio inside ``16:9`` (wide-screen).

