
***********
Scene Strip
***********

Scene strips are a way to insert the render output of a scene into your sequence.
Instead of rendering out a video, then inserting the video file, you can insert the scene directly.

The strip length will be determined based on the animation settings in that scene
(not the current scene, unless the VSE is operating in the same scene).

When adding a Scene strip, please note that,
in order to show you the strip in the VSE Image preview mode, Blender must render the scene.
This may take awhile if the scene is complex,
so there may be a delay between the time you select the scene and the time the strip appears.
To reduce the delay, simplify the scene rendering by selecting fewer layers to render.

If the extra overhead of rendering the scene becomes burdensome
(for either preview or for multiple test renders) and you have enough disk space consider
rendering the scene to a sequence of PNGs and using an Image Sequence strip instead of a
scene. This is very popular for static graphic overlays like title cards which are often
little more than a static image with animated opacity.

Use Sequence
   Expand the scenes sequence strips, allowing one scene to re-use another scenes edit,
   (instead of taking the render output from the scene).

   This is similar to how :doc:`/editors/sequencer/strips/meta` work,
   with the added advantage of supporting multiple instances of the same data.
Camera Override
   This can be used to override the scenes camera with any other object.

   It's useful to support switching views within a single scene.

