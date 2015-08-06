

******
Editor
******

FIXME(Template Unsupported: Doc:2.6/Reference/Nodes/Node Editor;
{{Doc:2.6/Reference/Nodes/Node Editor}}
)

Buttons for work with Compositing nodes
=======================================

.. figure:: /images/editors_nodeeditor_header.jpg

   Buttons for work with Compositing nodes


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

   Options of Zoom and Offset of Backdrop.


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

   Perfomance for Compositing Nodes in Node Editor


Render
   Set quality when rendering in Node Editor.
Edit
   Set quality when editing in Node Editor
Chunksi
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
