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

Connecting nodes
================

:kbd:`LMB`-click and drag a socket: you will see a branch coming out of it: this is called a "thread".

Keep dragging and connect the thread to an input socket of another node, then release the :kbd:`LMB`.

In this case, a copy of each output is routed along a thread. However, only a single thread can be linked to an
input socket.

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

