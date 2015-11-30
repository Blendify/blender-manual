
**********
Image Node
**********

.. figure:: /images/Tutorials-NTR-ComImage.jpg
   :align: right
   :width: 150px

   Image node


The *Image* node injects any image :doc:`format that is supported by Blender </render/output/output>`.
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

- Generated - a image generated from the :doc:`UV Editor </editors/uv_image/index>`
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
Blender features :ref:`painting_texture-index`
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
