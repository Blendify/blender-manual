***********
Using Nodes
***********

Adding Nodes
============

Nodes are added in two ways to the node editor by using the :menuselection:`Add` menu (:kbd:`Shift-A`)
and picking the desired type of node.

Arranging Nodes
===============

In general, try to arrange your nodes within the window such that the image flows from left to right, top to bottom.
Move a node by clicking on a benign area and drag it around. Nodes can be clicked almost anywhere and dragged
about; connections will reshape as a bezier curve as best as possible.


Auto-offset
-----------

*Auto-offset* is a feature that helps organizing node layouts interactively without interrupting the user workflow.
When you drop a node with at least one input and one output socket onto an existing connection between two nodes,
auto-offset will, depending on the direction setting, automatically move the left or right node away to make room
for the new node.

.. figure:: /images/compositing_usingnodes_autooffset.png

Auto-offset is enabled by default, but it can be disabled from the node editor header.

You can toggle the offset direction while you are moving the node by pressing :kbd:`T`.

The offset margin can be changed using the *Auto-offset Margin* setting in the editing section of the User Preferences.

Example Video:

.. vimeo:: 135125839


Connecting nodes
================

:kbd:`LMB`-click and drag a socket: you will see a branch coming out of it: this is called a "thread".

Keep dragging and connect the thread to an input socket of another node, then release the :kbd:`LMB`.

In this case, a copy of each output is routed along a thread. However, only a single thread can be linked to an
input socket.

To reposition the outgoing node links of a node, rather than adding a new one, hold :kbd:`Ctrl` while dragging from an output socket. This
works for single as well as for multiple outgoing connections.

Disconnecting nodes
===================

To break a link between sockets :kbd:`Ctrl-LMB`-click in an empty areas near the thread you want to disconnect and
drag: you will see a little cutter icon appearing at your mouse pointer. Move it over the thread itself, and
release the :kbd:`LMB`.

Duplicating a node
==================

Click :kbd:`LMB` or :kbd:`RMB` on the desidered node, press  :kbd:`Shift-D` and move the mouse away to see the
duplicate of the selected node appeaing under the mouse pointer.

.. note::

   When you duplicate a node, the new node will be positioned *exactly* on top of the node that was duplicated.
   If you leave it there (and it's quite easy to do so), you can **not** easily tell that there are *two* nodes there!
   When in doubt, grab a node and move it slightly to see if something's lurking underneath.

