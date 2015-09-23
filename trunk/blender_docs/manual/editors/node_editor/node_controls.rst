*************
Node Controls
*************

This page explains the widgets to control a node.

.. figure:: /images/editors_nodeeditor_nodecontrolsoverview.png

   Nodes main controls

Title bar
   This contains the node's label, along with several different collapse buttons.
Input and Output sockets
   The colored dots on the bottom left and top right of the node are used to make connections between other nodes.
   See `Sockets`_ below.
Image preview
   Inside the node there's an area to show the image preview being output by the node or the curves that control
   the node behavior (for example in a RGB node).
Buttons and menus
   Below the image preview there are buttons and menus to control the node behavior.
Link
   A curved line shows a connection from an output socket to an input socket.

Connections associated with the active node are highlighted for better visibility.


Collapsing toggles
==================

At the top of a node there are up to 4 visual controls for the node. Clicking these controls
influences how much information the node shows.

Node toggle
   The triangle arrow on the left collapses/expands the node.

Preview image toggle
   The sphere button on the far right of the title bar hides/shows the preview image.

.. list-table::

   * - .. figure:: /images/editors_nodeeditor_nodecontrolscollapse1.png

          Full display

     - .. figure:: /images/editors_nodeeditor_nodecontrolscollapse2.png

          Preview hidden

     - .. figure:: /images/editors_nodeeditor_nodecontrolscollapse3.png

          Node collapsed

Resizing the node
=================

Fine resizing of an individual node can also be accomplished by clicking :kbd:`LMB` and dragging on the left
or right edge of the node.

Sockets
=======

.. figure:: /images/editors_nodeeditor_nodecontrolssockets.png

   Node sockets

Each Node will have "sockets" which are small colored
circles to which input data and output data can be linked.

The sockets on the left side of a node are *inputs,* while the sockets on the right side are *outputs.*

For your convenience, sockets are *color-coded* according to the type of information they expect to send or receive:

Yellow
   Indicates that **color** information needs to be input or will be output from the node.
   This may or may not include an alpha channel.
Gray
   Indicates values (**numeric**) information. It can either be a single numerical value or a so-called "value map".
   (You can think of a value map as a grayscale-map where the different amount of bright/dark reflects the value for
   each point.) If a single value is used as an input for a "value map" socket, all points of the map are set to this
   same value. Common use: Alpha maps and value options for a node.
Blue
   Indicates **vector/coordinate/normal** information.
Green
   Used for **shaders** in :doc:`Cycles </render/cycles/index>`


.. note::

   Usually the socket types will match (e.g. color output to color input),
   although they do not always have to:

   - If a color socket (yellow) is plugged into a value socket (gray), a conversion is done automatically.
   - Colors and vectors can be used interchangeably, because they are both simply sets of three-channel values.


Next to the colored dot you will see the name of that socket.
This name usually explains what that socket is meant to be used for,
however nothing is stopping you from using it for something else.
An example of this is a common technique used in the game industry,
where low file size and memory usage are important:
The alpha channel of a diffuse texture is used for some other component of the material (e.g. specular intensity),
instead of having to include a whole new image.
