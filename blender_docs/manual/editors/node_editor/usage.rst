***********
Using Nodes
***********

Adding Nodes
============

Nodes are added in two ways to the node editor:

 - By using the toolshelf which has buttons for adding nodes, organized with tabs, or
 - By using the :menuselection:`Add` menu (:kbd:`Shift-A`, or using the node editor header)

Arranging Nodes
===============

In general, try to arrange your nodes within the window such that the image flows from left to right, top to bottom.
Move a node by clicking on a benign area and drag it around. A node can be clicked almost anywhere to start dragging.


Auto-offset
-----------

*Auto-offset* is a feature that helps organizing node layouts interactively without interrupting the user workflow.
When you drop a node with at least one input and one output socket onto an existing connection between two nodes,
auto-offset will, depending on the direction setting, automatically move the left or right node away to make room
for the new node.

.. figure:: /images/editors_nodeeditor_autooffset.png

Auto-offset is enabled by default, but it can be disabled from the node editor header.

You can toggle the offset direction while you are moving the node by pressing :kbd:`T`.

The offset margin can be changed using the *Auto-offset Margin* setting in the editing section of the User Preferences.

Example Video:

.. vimeo:: 135125839


Connecting nodes
================

:kbd:`LMB`-click on a socket and drag. You will see a line coming out of it: This is called a *link* or *noodle*.

Keep dragging and connect the link to an input socket of another node, then release the :kbd:`LMB`.

While multiple links can route out of an output socket, only a single link can be attached to an input socket.

To reposition the outgoing links of a node, rather than adding a new one, hold :kbd:`Ctrl` while dragging from an
output socket. This works for single as well as for multiple outgoing links.

Disconnecting nodes
===================

To break a link between sockets :kbd:`Ctrl-LMB`-click in an empty area, near the link you want to disconnect, and
drag: You will see a little cutter icon appearing at your mouse pointer. Move it over the link itself, and
release the :kbd:`LMB`.

Duplicating a node
==================

Click :kbd:`LMB` or :kbd:`RMB` on the desidered node, press :kbd:`Shift-D` and move the mouse away to see the
duplicate of the selected node appeaing under the mouse pointer.

.. note::
   When you duplicate a node, the new node will be positioned *exactly* on top of the node that was duplicated.
   If you leave it there (and it's quite easy to do so), you can **not** easily tell that there are *two* nodes there!
   When in doubt, grab a node and move it slightly to see if something's lurking underneath.

