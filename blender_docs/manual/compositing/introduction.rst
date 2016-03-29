
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


.. figure:: /images/editors_node_example.png

   An example of Composition.


To process your image, you use nodes to import the image into Blender, change it,
optionally merge it with other images, and finally, save it.

The example to the right shows the simplest node setup;
an input node links the camera view to an output node so it can be saved.


Getting Started
===============

Access the :doc:`Node Editor </editors/node_editor/index>` and enable
*Composite Nodes* by clicking on the *Image* icon.

To activate nodes for compositing, click the *Use Nodes* checkbox (see `Options`_).

.. note::

   After clicking *Use Nodes* the Compositor is enabled, however,
   it can also be disabled in the :doc:`Post Processing Panel </render/post_process/panel>`.

You now have your first node setup, from here you can add and connect many types of
:doc:`Compositing Nodes </compositing/types/index>`, in a sort of map layout,
to your heart's content (or physical memory constraints, whichever comes first).

.. note::

   Nodes and node concepts are explained in more detail in the :doc:`Node Editor </editors/node_editor/index>`.


Options
=======

.. figure:: /images/editors_node_header.jpg

   Compositing Specific Options.

Use Nodes
   Enables basic compositing set up with a :doc:`Render Layer Node </compositing/types/input/render_layers>`
   and a :doc:`Composite Node </compositing/types/output/composite>`.
Backdrop
   Enables the use of a backdrop using a :doc:`Viewer Node </compositing/types/output/viewer>`.

   Backdrop Channels
      See below.
Auto Render
   Re-render and composite changed layer when edits to the 3d scene are made.

Backdrop
--------

.. figure:: /images/compositing_backdrop.png
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

.. figure:: /images/composite_performance.png
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
   This allows you to set a render border for the backdrop.
   To define the resolution of the border use :kbd:`CTRL-B`
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
  The film 'Sin City' is the most extreme example of this I have ever seen.
- A startling event may be sharpened and contrast-enhanced.
- A happy feeling - you guessed it - add yellow (equal parts red and green, no blue) for bright and sunny.
- Dust and airborne dirt are often added as a cloud texture over the image to give a little more realism.
