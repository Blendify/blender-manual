
**************
Translate Node
**************

.. figure:: /images/Tutorials-NTR-ComTranslate.jpg

   Translate node


The translate node translates (moves)
an image by the specified amounts in the X and Y directions. X and Y are in pixels,
and can be positive or negative. To shift an image up and to the left, for example,
you would specify a negative X offset and a positive Y.

Use this node to position an image into the final composite image. Usually,
the output of this node is routed to an AlphaOver or Mix node to mix it with a base image.
In the example below, the RenderLayer input from one scene (box)
is translated over to the left (a negative X translation)
and alphaovered with a Hello scene RenderLayer input


.. figure:: /images/Manual-Compositing-Translate_example.jpg

Example: Using the Translate Node to Roll Credits
=================================================

At the end of your fantastic animation, you'll want to give credit where credit is due. This
is called rolling the credits and you see the names of everyone involved scroll up over a
background image or sequence.
The mini-map below shows an example of how to roll credits using the Translate node.


.. figure:: /images/Manual-Compositing-Translate_credits.jpg
   :width: 600px

   Using the Translate Node to Roll Credits


In this node map,
the RenderLayer input has a list of the people involved and is 150 pixels high;
it is the image input into the Translate Node. The Y value (vertical) offset of the Translate
node comes from a scaled time factor that varies from -150 to 150 over 30 frames.
The Translated image is overlaid on top of a background swirl image. So,
over the course of 30 frames, the Translate node shifts the image from down by 150 pixels
(off the bottom of the screen), up through and overlaid on top of the swirl,
and finally off the screen to the top.
These frames are generated when the Render Animation buttons are set and Anim is pressed.
Right now, frame 21 is showing Moe and Curly, and Larry has scrolled off the screen.

.. note:: Alpha channel

   Be sure to save your credits image in a format that supports an alpha channel, such as PNG,
   so that the AlphaOver node can overlay it on the background and let the background show through.


You *could* have parented and animated all of the text to roll up past your camera,
but rendering would have taken forever. Using the translate node is much faster to composite,
and more flexible. To add someone to the list, simply change the credits image and re-animate.
Since it is simple image manipulation, Blender is blazingly fast at regenerating your credits.
Similarly, changing the background is rock simple as well;
simply load up a different background image and re-Animate.


Example: Moving a Matte
=======================

In some 2D and 3D animations and movies, a matte painting is used as the background.
In most scenes it is still, however you can easily move it using the Translate node.
Mattes are huge; the example used below is actually 1440x600 pixels,
even though the scene being rendered is for TV.
This oversizing gives us room to move the matte around.
The example noodle below introduces a dancing "Hello!" from stage right in frames 1-30.
As the "Hello" reaches center stage, we fake a camera move by moving the matte to the left,
which makes it look like the "Hello!" is still moving as the camera moves with it.


.. figure:: /images/Manual-Compositing-Translate-ani_matte.jpg

   Moving a Matte in back of a moving Animation (frame 60)


Use the Map Value node to scale the X (left to right) offsets that feed the Translate node.
Note that *offsets* are used to position the dancing "Hello!" down to look like it
is walking along the street (in the render scene,
it is centered on camera and just dances in place).
The matte is adjusted up to fake a camera height of an observer, bringing the horizon up.


Example: Shake, Rattle and Roll
===============================

A real world effect is the shaking of the camera.
BOOM! We expect to feel the impact and see it rock our world. In our virtual CG world, though,
we are in the vaccuum of space. So, we have to fake a camera being shook.
There are two points in the development cycle to do this: at *Render-Scene* time,
and at *Composite* time.

At *Render-Scene* time, the modeler would introduce an Ipo curve and keyframes that rotate
and/or move the camera for a short amount of time. The advantage to render-scene shake is that
the artist handles it and the editor does not have to worry about it;
one less thing to do thank goodness.
The disadvantage is that the artist may only be modeling the actors,
and not the background scenery, props, or matte,
so any shake they introduce does not transfer to the set, props, or backdrop. Therefore, it is
best to introduce camera shake after all scenes have been rendered and assembled and when they
are being composited.

There are two aspects to being bumped, or tripping over the tripod,
or having an explosion go off next to you, or an airplane have a near miss as it flies by,
or throwing up on a long sea voyage, or surviving an earthquake:
*camera motion* and *image blur*
(I know you were thinking expletives and changing your underpants,
but this is about compositing).

**Camera Motion** happens because the camera physically gets moved;
but its mass and its tripod also acts as a dampening device, softening out and absorbing the initial bump.
The cameraman also acts as a dampener, and also as a corrector,
trying to get the camera back to where it was pointed originally.

There can be quite a delay between the shock and the correction; for example,
a lone actor/cameraman may trip on the tripod coming out from behind the camera,
come into frame, realize the camera is off, and then come back to correct it.
It all depends on the artistic effect and story you want to convey.

The *image blur* comes into play because the shake happens so rapidly that the image is
blurred in the direction of the shake. However,
the blur is more when the camera is being pushed back into position,
and less when the camera is at the extreme of its deflection,
since it is decelerating at the apex of its movement. Like motion,
blur is the most during the initial shock, and less as things slow down and get under control.
Also, the camera may go out of focus and come back into focus at the end of the shake.

To use Blender nodes to mimic Camera Motion, use the noodle shown below.
The noodle has a Blur group on top that feeds a Translate group below it.


.. figure:: /images/Manual-Composting-Shake.jpg

   SFX: Camera Shake


In the above example,
we use a Time curve that mimics the intensity and duration of a typical BOOM!. In this case,
both curves have four peaks within a 16-frame period to mimic a BOOM!
(in fact one curve was constructed and then duplicated to make the other,
to ensure that the bulk of both curves was exactly the same). Notice how the curve dampens
(decreases in magnitude as time progresses) as discussed above.
Notice how the curve slows down (increasing period)
to mimic the cameraman getting it back under control.
Notice that the curve is sinusoidal to mimic over-correction and vibration.

BOOM! to the Left: The translate curve starts at 0.5. Maximum deflection up is fully a half,
yet down is only a quarter. This offset mimics a BOOM! off to our left,
since the camera shakes more to the right, away from the BOOM!

Motion and Blur are the same but different:
Notice that the two curves are identical except for the highlighted start and end dots;
we want zero blur and zero offsets before and after the shake,
but minimum blur when there is maximum translate.
The two Map Value node settings are different to achieve this; the math is left to the reader.

Use this Blender noodle to mimic camera shake.
The amount of shake is set by the *Size* values,
and the blur should be proportional to the amount and direction of motion
(predominantly X in this example).
Use the Time start and end to vary the duration of the shake; ten seconds for an earthquake,
one minute for a ship rolling in the seas,
a half second as an F-14 flies by and takes your ear off. *Author's note:
I noticed cool camera shakes while watching the Halo 3 previews.*
