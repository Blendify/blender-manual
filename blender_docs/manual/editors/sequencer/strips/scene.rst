
***********
Scene Strip
***********

You can add the virtual image output of a Scene in your current .blend file as well.
Select the scene from the pop-up list,
and a strip will be added and rubberbanded to your mouse just like a movie or image.
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

Sequencer
   Process the render (and composited) result through the video sequence editor pipeline,
   if sequencer strips exist. This is the same function as in the render settings.
Camera Override
   Change the camera that will be used.
