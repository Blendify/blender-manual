
**************
Render Quality
**************

Many factors go into the quality of the rendered image. Rendering a scene without changing any
of the render settings is probably going to produce a rather unpleasant image.
In previous chapters, you have learned how to model, shade, texture, and light scenes.
Optimizing settings with respect to those areas will help to produce quality images,
but there are some important settings that come into play before pressing the render button.
These can directly affect the look of the rendered image.

The next section covers render layers and render passes,
both of which allow you to compose an image from several elements of a scene.
In some cases it is necessary to render effects straight out of the renderer,
rather than creating them in "post."


:doc:`Color Management and Exposure </render/post_process/cm_and_exposure>`
===========================================================================

One important aspect of 3D rendering that is often overlooked is color management.
Without color management, or more commonly, linear rendering,
render engines interpret scene lighting correctly,
but display them incorrectly on your monitor. Blender simplifies this workflow,
but it is important to know how the color space of a rendered image factors into your pipeline.


:doc:`Anti-Aliasing </render/blender_render/antialiasing>`
==========================================================

Anti-Aliasing removes jagged edges that appear in contrasting areas of color.
This is a very important aspect of render quality. Without this render setting,
images usually appear particularly CG and amateur.


:doc:`Exposure (Lighting) </render/blender_render/lighting/exposure>`
=====================================================================

Exposure is, in physical terms, the length of time a camera's film or sensor is exposed to light.
Longer exposure times create a brighter image.
In CG, the recorded light values are offset to simulate longer or shorter exposures.
This can be achieved through lighting settings, or better, through
:doc:`Color Management settings </render/post_process/cm_and_exposure>`


:doc:`Motion Blur </render/blender_render/motion_blur>`
=======================================================

Cameras have a certain shutter speed, or the length of time the film is exposed to the image.
Things that are in motion while the picture is taken will have some degree of blurring.
Faster-moving objects will appear more blurred than slower objects.
This is an important effect in CG because it is an artifact that we expect to see,
and when it is missing, an image may not be believable.
