
***********
Scene Strip
***********

Scene strips are a way to insert the render output of a scene into your sequence.
Instead of rendering out a video, then inserting the video file, you can insert the scene directly.

The strip length will be determined based on the animation settings in that scene.

Use Sequence
   Expand the scenes sequence strips, allowing one scene to re-use another scenes edit,
   (instead of taking the render output from the scene).

   This is similar to how :doc:`/editors/sequencer/strips/meta` work,
   with the added advantage of supporting multiple instances of the same data.
Camera Override
   This can be used to override the scenes camera with any other object.

   It's useful to support switching views within a single scene.

.. hint::

   Its best not add a scene strip for the scene you're currently editing.
   While this is supported, it can be confusing when changing the start and end frame.

