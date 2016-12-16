
************
Introduction
************

Compositing Nodes allow you to assemble and enhance an image (or movie). Using composition nodes,
you can glue two pieces of footage together and colorize the whole sequence all at once.
You can enhance the colors of a single image or an entire movie clip in a static manner or in a
dynamic way that changes over time (as the clip progresses). In this way,
you use composition nodes to both assemble video clips together and enhance them.

.. note:: Term: Image

   The term *Image* may refer to a single picture, a picture in
   a numbered sequence of images, or a frame of a movie clip.
   The Compositor processes one image at a time, no matter what kind of input you provide.


To process your image, you use nodes to import the image into Blender, change it,
optionally merge it with other images, and finally, save it.

.. figure:: /images/compositing_nodes_distort_map-uv_example-2.png

   An example of Composition.

.. figure:: /images/compositing_nodes_color_hue-saturation_example.jpg

   An example of color correction.


Getting Started
===============

Access the :doc:`Node Editor </editors/node_editor/index>` and enable
*Composite Nodes* by clicking on the *Image* icon.

To activate nodes for compositing, click the *Use Nodes* checkbox (see `Options`_).

.. note::

   After clicking *Use Nodes* the Compositor is enabled, however,
   it can also be disabled in the :doc:`Post Processing Panel </render/post_process/panel>`.

You now have your first node setup, from here you can add and connect many types of
:doc:`Compositing Nodes </compositing/index>`, in a sort of map layout,
to your heart's content (or physical memory constraints, whichever comes first).

.. note::

   Nodes and node concepts are explained in more detail in the :doc:`Node Editor </editors/node_editor/index>`.


Options
=======

.. figure:: /images/compositing_introduction_header.png

   Compositing Specific Options.

Use Nodes
   Enables basic compositing set up with a :doc:`Render Layer Node </compositing/types/input/render_layers>`
   and a :doc:`Composite Node </compositing/types/output/composite>`.
Backdrop
   Enables the use of a backdrop using a :doc:`Viewer Node </compositing/types/output/viewer>`.

   Backdrop Channels
      See below.
Auto Render
   Re-render and composite changed layer when edits to the 3D scene are made.


Backdrop
--------

.. figure:: /images/compositing_introduction_backdrop.png
   :align: right

   Backdrop Options.

Backdrop Channels
   Set the image to be displayed with *Color*, *Color and Alpha*, or just *Alpha*.
Zoom
   Sets how big the backdrop image is.
Offset
   Change the screen space position of the backdrop,
   or click the *Move* button, or shortcut :kbd:`Alt-MMB` to manually move it.
Fit
   Automatically scales the backdrop to fit the size of the node editor.


Performance
-----------

.. figure:: /images/compositing_introduction_performance.png
   :align: right

   Performance Settings.

Render
   Sets the quality when doing the final render.
Edit
   Sets the quality when making edits.
Chunk Size
   Max size of a title (smaller values give a better distribution of multiple threads, but more overhead).
OpenCL
   This allows the use of an OpenCL platform to aid in rendering.
   Generally, this should be enabled unless your hardware does not have good OpenCL support.
Buffer Groups
   Enables buffering of group nodes to increase the speed at the cost of more memory.
Two Pass
   Use two pass execution during editing: first calculate fast nodes, the second pass calculate all nodes.
Viewer Border
   This allows to set an area of interest for the backdrop and preview.
   The border is started by :kbd:`Ctrl-B` and finished by selection of a rectangular area.
   :kbd:`Ctrl-Alt-B` discards the border back to a full preview.
   This is only a preview option, final compositing during a render ignores this border.
Highlight
   Highlights the nodes that are being calculated.


Examples
========

You can do just about anything with images using nodes.

Raw footage from a foreground actor in front of a blue screen,
or a rendered object doing something, can be layered on top of a background.
Composite both together, and you have composited footage.

You can change the mood of an image:

- To make an image 'feel' colder, a blue tinge is added.
- To convey a flashback or memory, the image may be softened.
- To convey hatred and frustration, add a red tinge or enhance the red.
- A startling event may be sharpened and contrast-enhanced.
- A happy feeling -- you guessed it -- add yellow (equal parts red and green, no blue) for bright and sunny.
- Dust and airborne dirt are often added as a cloud texture over the image to give a little more realism.

Image Size
==========

It is recommended to pay attention to image resolution and color depth when mixing and matching
images. Aliasing (rough edges), color *flatness*,
or distorted images can all be traced to mixing inappropriate resolutions and color depths.

The compositor can mix images with any size,
and will only perform operations on pixels where images have an overlap.
When nodes receive inputs with differently sized Images, these rules apply:

- The first/top Image input socket defines the output size.
- The composite is centered by default,
  unless a translation has been assigned to a buffer using a *Translate* node.

So each node in a composite can operate on different sized images as defined by its inputs.
Only the *Composite* output node has a fixed size,
as defined by the settings in Properties Editor :menuselection:`Render --> Dimensions`.
The *Viewer* node always shows the size from its input, but when not linked
(or linked to a value) it shows a small 320×256 pixel image.

Saving your Composite Image
===========================

The *Render* button renders a single frame or image.
Save your image using :menuselection:`File --> Save Image` or :kbd:`F3`.
The image will be saved using the image format settings on the Render panel.

To save a sequence of images, for example,
if you input a movie clip or used a Time node with each frame in its own file,
use the *Animation* button and its settings. If you might want to later overlay them,
be sure to use an image format that supports an Alpha channel (such as ``PNG``).
If you might want to later arrange them front to back or create a depth of field effect,
use a format that supports a Z-depth channel (such as ``EXR``).

To save a composition as a movie clip (all frames in a single file),
use an ``AVI`` or ``Quicktime`` format, and use the *Animation* button and its settings.
