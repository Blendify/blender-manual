
**********
Image Node
**********

.. figure:: /images/Tutorials-NTR-ComImage.jpg
   :align: right
   :width: 150px

   Image node


The *Image* node injects any image :doc:`format that is supported by Blender </render/output>`.
Besides inputting the actual image, this node can also input *Alpha* and depth (*Z*) values
if the image has them. If the image is a MultiLayer format,
all saved render passes are input. Use this node to input:

- A single image from a file (such as a JPG picture)
- Part or all of an animation sequence (such as the 30th to 60th frame)
- Part or all of a movie clip (such as an AVI file)
- the image that is currently in the UV/Image Editor (and possibly being painted)
- an image that was loaded in the UV/Image Editor

Animated image sequences or video files can also be used.
See `Animations`_ below.

To select an image file or generated image from the UV/Image Editor,
click on the small arrow selector button to the left of the name and pick an existing image
(e.g. loaded in the UV editor or elsewhere)
or click on *LOAD NEW* to select a file from your hard disk via a file-browser.
These images can be e.g. previously rendered images, matte paintings, a picture of your cat,
whatever. Blender really doesn't care.

If the image is part of a sequence,
manually click the Image Type selector to the right of the name, and select *Sequence*.
Additional controls will allow you to define how much of the sequence to pull in
(see Animations below). If the file is a video file, these controls will automatically appear.


Image Channels
==============

When the image is loaded, the available channels will be shown as sockets on the node.
As a minimum, the Image, Alpha, and Z channels are made available.
The picture may or may not have an alpha (transparency) and/or Z (depth) channel,
depending on the format. If the image format does not support A and/or Z,
default values are supplied (1.0 for A, 0.0 for Z).

Alpha/Transparency Channel
  - If a transparency channel is detected, the *Alpha* output socket will supply it.
  - If it does not have an Alpha channel (e.g. JPG images),
    Blender will supply one, setting the whole image to completely opaque
    (an Alpha of 1.00, which will show in a *Viewer*
    node as white - if connected to the *Image* input socket).
Z/depth Channel
  - If a Z (depth) channel is detected, the *Z* output socket will supply it.
  - If it does not have a Z channel (e.g. JPG or PNG images),
    Blender will supply one, setting the whole image to be at the camera (a depth of 0.00).
    To view the Z-depth channel, use the Map Value to ColorRamp noodle given above in the Render Layer input node
    (see :ref:`render_layers-z_socket_usage` ).

.. note:: Formats

   Blender supports many image formats.
   Currently only the OpenEXR image format stores RGB (color), A (alpha), and Z (depth)
   buffer information in a single file, if enabled.


Saving/Retrieving Render Passes
===============================

.. figure:: /images/Nodes-Input-Multilayer.jpg

Blender can save the individual Render Layers and specific passes in a MultiLayer file format,
which is an extension of the OpenEXR format. In this example,
we are reading in frames 50 to 100 of a RenderLayer that were generated some time ago.
The passes that were saved were the Image, Alpha, Z, Specular and AO passes.

To create a MultiLayer image set when initially rendering, simply disable Do Composite,
set your Format to MultiLayer,
enable the Render Layer passes you wish to save over the desired frame range, and Animate.
Then, in Blender, enable Compositing Nodes and Do Composite,
and use the Image input node to read in the EXR file. When you do, you will see each of the
saved passes available as sockets for you to use in your compositing noodle.


Image Size
==========

Size matters - Pay attention to image resolution and color depth when mixing and matching
images. Aliasing (rough edges), color *flatness*,
or distorted images can all be traced to mixing inappropriate resolutions and color depths.

The compositor can mix images with any size,
and will only perform operations on pixels where images have an overlap.
When nodes receive inputs with differently sized Images, these rules apply:

- The first/top Image input socket defines the output size.
- The composite is centered by default,
  unless a translation has been assigned to a buffer using a *Translate* node.

So each node in a composite can operate on different sized images, as defined by its inputs.
Only the *Composite* output node has a fixed size,
as defined by the *Scene buttons* (Format Panel).
The *Viewer* node always shows the size from its input, but when not linked
(or linked to a value) it shows a small 320x256 pixel image.


Animations
==========

.. figure:: /images/Compositing-Node-Image-anicontrols.jpg

To use image sequences or movies within your composition,
press the face or little film strip button located to the right of the selector. As you click,
a pop-up will offer you four choices:

- Generated -
- Sequence - a sequence of frames, each frame in a separate file.
- Movie - a sequence of frames packed into a single ``.avi`` or ``.mov`` file
- Image - a single frame or still image in a file

A Movie or Image can be named anything,
but a Sequence must have a digit sequence somewhere in its filename,
for example fire0001set.jpg, fire0002set.jpg, fire0003set.jpg and so on.
The number indicates the frame.

If a Sequence or Movie is selected, an additional set of controls will appear that allows you
to select part or all of the sequence. Use these controls to specify which frames,
out of the original sequence,
that you want to introduce into the animation you are about to render.
You can start at the beginning and only use the beginning,
or even pick out a set of frames from the middle of an existing animation.

The *Frs* number button is the number of frames in the sequence that you want to show.
For example, if you want to show 2 seconds of the animation, and are running 30 fps, you would put 60 here.

The *SFra* number button sets the start frame of the animation; namely, at what
point in the animation that you *are going to render* do you want this sequence to start
playing. For example,
if you want to introduce this clip ten seconds into the composite output,
you would put 300 here (at 30 fps).

The *First* number button sets the first number in the animated sequence name.
For example, if your images were called "credits-0001.png", "credits-0002.png" through
"credits-0300.png" and you wanted to start picking up with frame 20, you'd put 20 here.

To have the movie/sequence start over and repeat when it is done,
press the *Cycl* ic button. For example, if you were compositing a fan into a room,
and the fan animation lasted 30 frames, the animation would start over at frame 31, 61, 91,
and so on, continuously looping. As you scrub from frame to frame,
to see the actual video frame used for the current frame of animation,
press the auto button to the right of the *Cycl* ic button.


Generated Images
================

`Using the Nodes to modify a painting in progress in the
UV/Image window <http://wiki.blender.org/index.php/File:Manual-Compositing-Node-Image-Generagedjpg>`__
Blender features :doc:`Texture Paint </render/blender_render/textures/painting/projection>`
which works in the UV/Image Editor, that allows you to paint on the fly, and the image is kept in memory or saved.
If sync lock is enabled (the lock icon in the header),
changes are broadcast throughout Blender as soon as you lift the mouse button.
One of the places that the image can go is to the Image Input node.
The example shows a painting session going on in the right-hand UV/Image Editor window for the painting "Untitled".
Create this image via Image?New in the UV/Image Editor.
Refer to the texture paint section of the user maual for more info on using Texture Paint.


In the left-hand window, the Image input node was used to select that "Untitled" image.
Notice that the Image type icon is blank, indicating that it is pulling in a Generated image.
That image is colorized by the noodle,
with the result used as a backdrop in the Node Editor Window.

Using this setup and the Generated Image type is like painting and post-processing as you
continue painting.
Changes to either the painting or the post-pro noodle are dynamic and real-time.


Notes
=====

**No Frame Stretching or Compression:**
If the input animation (avi or frame set) was encoded at a frame rate that is *different* from your current settings,
the resultant animation will appear to run faster or slower. Blender Nodes do not adjust input video frame rates.
Use the scale control inside the :doc:`Video Sequence Editor </editors/sequencer/index>` to stretch or compress video
to the desired speed, and input it here.
You can incorporate "Slow-Mo" into your video.
To do so, *ANIM* ate a video segment at 60 frames per second,
and input it via this node, using Render settings that have an animation frame rate of the normal 30 fps;
the resulting video will be played at half speed. Do the opposite to mimic Flash running around at hyperspeed.


AVI (Audio Video Interlaced)
files are encoded and often compressed using a routine called a *Codec*. You must have a
codec installed on your machine and available to Blender that understands and is able to read
the file, in order for Blender to be able to de-code and extract frames from the file. If you
get the error message **FFMPEG or unsupported video format** when trying to load
the file, you need to get a Codec that understands the video file.
Contact the author of the file and find out how it was encoded. An outside package,
such as VirtualDub, might help you track this information down.
Codecs are supplied by video device manufacturers, Microsoft, DivX, and Xvid, among others,
and can often be downloaded from their web sites for free.


Splicing Video Sequences using Nodes
====================================

The above animation controls, coupled with a little mixing,
is all you need to splice video sequences together. There are many kinds of splices:

- Cut Splice - literally the ends of the footage are just stuck together
- Fade In - The scene fades in, usually from black
- Fade Out - The scene fades out, usually to black
- Mix - Toward the end of one scene, the images from the next scene meld in as the first scene fades
- Winking and Blinking - fading one cut out while the other fades in, partially or totally through black
- Bumps and Wipes - one cut bumps the other one out of frame, or wipes over it (like from the top left corner down)


Cut Splicing using Nodes
------------------------

In the example noodle below, we have two pieces of footage that we want to cut splice together.

- Magic Monkey - named 0001.png through 0030.png
- Credits - named credits0001.png through credits0030.png

The editor has reviewed the Credits and thought the first two frames could be thrown away
(onto the cutting room floor, as they say) along with the last 8,
leaving 20 frames from the total shot. Not shown in this image, but crucial,
is that in the Output panel, we set our render output filename to "Monkey-Credits-",
and our Animation start and end frames to 1 and 50 (30 from the Monkey, 20 from the credits).
Notice the Time node; it tells the Mix node to use the top image until frame 30, and then,
at frame 31, changes the Mix factor to 1, which means to use the bottom set of images.


.. figure:: /images/Compositing-CutSplice.jpg

   Cut Splice using Nodes


Upon pressing the ANIM button, Blender will composite the animation.
If you specified an image format for output, for example, PNG, Blender will create 50 files,
named "Monkey-Credits-0001.png" through "Monkey-Credits-0050.png".
If you specified a movie format as output, such as AVI-JPEG,
then Blender will create only one file, "Monkey-Credits-.avi", containing all 50 frames.

Use cut scenes for rapid-fire transition, conveying a sense of energy and excitement,
and to pack in a lot of action in a short time.
Try to avoid cutting from a dark scene to a light one, because it's hard on the eyes.
It is very emotionally contrasting, and sometimes humorous and ironic,
to cut from a very active actor in one scene to a very still actor in another scene,
a la old Road Runner and Coyote scenes.


Fade Splicing using Nodes
-------------------------

In the previous topic, we saw how to cut from one sequence to another. To fade in or out,
we simply replace one set of images with a flat color,
and expand the Time frame for the splice. In the image below, beginning at frame 20,
we start fading **out** to cyan:


.. figure:: /images/Compositing-fadeout.jpg

   Fading Out using Nodes


Cyan was chosen because that is the color of the Monkey at that time,
but you can just as easily choose any color. The image below shows frame 30,
when we have almost faded completely.

To fade **in**, change the Mix node and plug the image sequence into the bottom socket,
and specify a flat color for the top socket.


Mix Splice using Nodes
----------------------

To mix, or crossover, from one scene to the next,
start feeding the second scene in while the first is mixing out. The noodle below shows frame
25 of a mix crossover special effect to transition from one scene to the next,
beginning at frame 20 with the transition completed by frame 30. Action continues in the first
scene as it fades out and is mixed with action that starts in the second scene.


.. figure:: /images/Compositing-Splice-mix.jpg

   Mix Splice using Nodes


Use this effect to convey similarities between the two scenes. For example,
Scene 1 is the robber walking down the street, ending with the camera focusing in on his feet.
Scene 2 is a cop walking down the street after him,
starting with his feet and working its way up to reveal that the cop is following the robber.


Wink Splice using Nodes
-----------------------

A Wink is just like blinking your eyes; one scene fades to black and the other fades in.
To use Blender to get this effect, build on the Cut and Fade splices discussed above to yield:


.. figure:: /images/Compositing-Splice-wink.jpg

   A Wink using Nodes


In the above example, showing frame 27, we have adjusted some parameters to show you the power
of Blender and how to use its Nodes to achieve just the blended crossover effect you desire:

- Postfeed: Even though there were only 15 frames of animation in the Toucan strip,
  the cutover (top Time node) does not occur until frame 30.
  Blender continues to put out the last frame of an animation,
  *automatically extending it for you*, for frames out of the strip's range.
- Prefeed: Even though the swirl does not start playing until frame 34,
  Blender supplies the first frame of it for Frames 31 through 33.
  In fact, it supplies this image all the way back to frame 1.
- Partial Fade: Notice the second 'wink' Time node.
  Like a real wink, it does not totally fade to black; only about 75%.
  When transitioning between scenes where you want some visual carryover,
  use this effect because there is not a break in perceptual sequence.

.. note:: Multiple Feeds

   The above examples call out two feeds, but by replicating the Input, Time and Mix nodes,
   you can have multiple feeds at any one time;
   just set the Time node to tell the Mixer when to cut over to using it.

