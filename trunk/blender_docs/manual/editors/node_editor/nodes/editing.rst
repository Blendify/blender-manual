
*******
Editing
*******

Transform
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Node --> Translate, Rotate, Resize`
   | Hotkey:   :kbd:`G`, :kbd:`R`, :kbd:`S`

Move a single node by click and drag it around. A node can be clicked almost anywhere to start dragging.
Multiple nodes can be translated after pressing :kbd:`G`.

In general it is recommended to arrange your nodes within the view such that the data flows from
left to right, top to bottom.

A node can be resized by dragging the edges on the left or right side.


Connecting Sockets
==================

Interactively
-------------

:kbd:`LMB`-click on a socket and drag. You will see a line coming out of it: This is called a *link*.

Keep dragging and connect the link to an input socket of another node, then release the :kbd:`LMB`.

While multiple links can route out of an output socket, only a single link can be attached to an input socket.

To reposition the outgoing links of a node, rather than adding a new one, hold :kbd:`Ctrl` while dragging from an
output socket. This works for single as well as for multiple outgoing links.

Nodes that have no connections can be inserted on a link.
Just move the node over the link and release when the link turns orange.

Make Links :kbd:`F`
   Select multiple nodes with open sockets, then use the Make Links to create links between them.
   Use Make Links again if there are other nodes which can be connected.

Make and Replace Links :kbd:`Shift-F`
   Make and Replace Links replaces similarly to Make Links, but it will replace existing links if any exist.


Disconnecting Sockets
=====================

Interactively
-------------

Drag the link from an input socket and let it go keeping it unconnected.


Cut Links
---------

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Node --> Cut Links`
   | Hotkey:   :kbd:`Ctrl-LMB`

To break a link between sockets :kbd:`Ctrl-LMB`-click in an empty area, near the link you want to disconnect, and
drag: You will see a little cutter icon appearing at your mouse pointer. Move it over the link itself, and
release the :kbd:`LMB`.

Detach Links
   Use Detach Links in order to cut all links attached to selected nodes at once.


Duplicate
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Node --> Duplicate`
   | Hotkey:   :kbd:`Shift-D`

Click :kbd:`LMB` or :kbd:`RMB` on the desired node, press :kbd:`Shift-D` and move the mouse away to see the
duplicate of the selected node appearing under the mouse pointer.

.. note::

   When you duplicate a node, the new node will be positioned *exactly* on top of the node that was duplicated.
   If you leave it there (and it is quite easy to do so),
   you can **not** easily tell that there are *two* nodes there!
   When in doubt, grab a node and move it slightly to see if something's lurking underneath.


Delete
======

Delete :kbd:`X`, :kbd:`Delete`
   Deletes the selected node(s).
Delete with Reconnect :kbd:`Ctrl-X`
   Delete the node(s) without loosing the connections.


Mute
====

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Node --> Toggle Node Mute`
   | Hotkey:   :kbd:`M`

Muting a node removes the contribution of the node to the node tree,
and makes all links pass through that node without change.
Links will appear red as an indicator of passing through the muted node.


Show/Hide
=========

Hide
   :kbd:`H`
Toggle Node Preview
   :kbd:`Shift-H`
Toggle Hidden Node Sockets
   :kbd:`Ctrl-H`
Toggle Node Options
   ToDo.
Collapse and Hide Unused Sockets
   ToDo 2.62.


Layers
======

Read Render-Layers
   :kbd:`Ctrl-R`
Read Full Sample Layers
   :kbd:`Shift-R`
