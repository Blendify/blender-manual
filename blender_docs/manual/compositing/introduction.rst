
************
Introduction
************

Compositing Nodes allow you to assemble and enhance an image (or movie).
Using composition nodes,
you can glue two pieces of footage together and colorize the whole sequence all at once. You
can enhance the colors of a single image or an entire movie clip in a static manner or in a
dynamic way that changes over time (as the clip progresses). In this way,
you use composition nodes to both assemble video clips together, and enhance them.


.. note:: Term: Image

   The term *Image* may refer to a single picture,
   a picture in a numbered sequence of images,
   or a frame of a movie clip.
   A node layout processes one image at a time, no matter what kind of input you provide.


.. figure:: /images/Compositing-SimpleNoodle.jpg

   Default Composition Noodle


To process your image, you use nodes to import the image into Blender, change it,
optionally merge it with other images, and finally save it.

The example to the right shows the simplest node setup;
an input node links the camera view to an output node so it can be saved.

Accessing and Activating Nodes
==============================

Access the :doc:`Node Editor </editors/node_editor/index>` and enable
*Composite Nodes* by clicking on the *Image* icon.


.. figure:: /images/editors_nodeeditor_header.jpg

   Node Editor Header with Composite Nodes enabled

To activate nodes for compositing, click the *Use Nodes* checkbox.
Blender creates a default node setup, consisting out of two nodes linked together.


.. figure:: /images/Compositing-Do.jpg

   Use Composition Nodes


To use this mini-map,
you must now tell Blender to use the Compositing Node map that has been created,
and to composite the image using composition nodes. To do so, switch to the *Render*
button area and activate the *Compositing* button located below the
*Post Processing* tab.
This tells Blender to composite the final image by running it through the composition node map.


You now have your first node setup, a RenderLayer input node linked to a Composite output node.
From here, you can add and connect many :doc:`types of compositing nodes </composite_nodes/types/index>`,
in a sort of map layout, to your heart's content (or physical memory constraints, whichever comes first).

.. note:: Nodes

   Nodes and node conecpts are explained in more detail in the :doc:`Node Editor </editors/node_editor/index>`

Buttons for work with Compositing nodes
=======================================

Free Unused Button
------------------

This button frees up memory space when you have a very complex node map. Recommended.


Backdrop
--------

Use the active viewer node output as a backdrop. When enabled,
additional settings appear in the Header and the Properties Panel:


.. figure:: /images/editors_nodeeditor_backdropchannels.jpg

   Backdrop Channels.


Backdrop Channels
   Set the image to be displayed with *Color*, *Color and Alpha*, or just *Alpha*.


.. figure:: /images/editors_nodeeditor_zoomoffset.jpg
   :align: right

   Backdrop Options


Zoom
   Sets how big the backdrop image is.
Offset
   Change the screen space position of the backdrop,
   or click the *Move* button, or shortcut :kbd:`Alt-MMB` to manually move it.


Auto Render
-----------

Re-render and composite changed layer when edits to the 3d scene are made.


Perfomance for Compositing Nodes in Node Editor
===============================================

.. figure:: /images/editors_nodeeditor_performancepanel.jpg
   :align: right

   Perfomance Settings


Render
   Set quality when rendering in Node Editor.
Edit
   Set quality when editing in Node Editor
Chunk Size
   Max size of a title (smaller values give better distribution of multiple threads, but more overhead).
OpenCL
   Enable GPU calculations when working in Node Editor.
Buffer Groups
   Enable buffering of group nodes.
Two Pass
   Use two pass execution during editing: first calculate fast nodes, second pass calculate all nodes.
Viewer Border
   Use boundaries for viewer nodes and composite backdrop.
Highlight
   Highlight nodes that are being calculated.

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
- Dust and airborne dirt is often added as a cloud texture over the image to give a little more realism.
