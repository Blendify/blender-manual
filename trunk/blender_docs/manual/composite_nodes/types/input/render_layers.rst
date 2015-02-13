
******************
Render Layers Node
******************

.. admonition:: Reference
   :class: refbox

   | Panel:    :doc:`Node Editor </render/blender_render/materials/nodes/editor>` -->
               :doc:`Node Composition </composite_nodes/index>`
   | Menu:     :kbd:`Shift-A` --> :doc:`Input </composite_nodes/types/input/index>` --> Render Layers


.. figure:: /images/Manual-Compositing-RenderLayer_Node.jpg

   Render Layers Node


This node is the starting place to getting a picture of your scene into the compositing node
map.

This node inputs an image from a scene within your blend file.
Select the scene and the active render layer from the yellow selection list at the bottom of the node.
Blender uses the active camera for that scene to create an image of the objects specified in the
:doc:`RenderLayer </render/post_process/layers>`.

The *Image* is input into the map, along with the following data:

- *Alpha* (transparency) mask

Depending on the Renderlayer passes that are enabled, other sockets are available.
By default the Z is enabled:

- *Z* depth map (how far away each pixel is from the camera)

The example shows that two other passes are enabled:

- *Normal* vector set (how light bounces off the surface)
- *Speed* vector set (how fast an object is moving from one frame to the next)

Use the re-render button (Small landscape icon - to the right of the Renderlayer name)
to re-render the scene and refresh the image and map.

You may recall that a .blend file may contain many scenes. The Renderlayer node can pick up
the scene info from any available scene by selecting the scene from the left-hand selector.
If that *other* scene also uses the compositor and/or sequencer,
you should note that the scene information taken is the raw information
(pre-compositing and pre-sequencing).
If you wish to use composited information from another scene, you will have to render that
scene to a multilayer OpenEXR frameset as an intermediate file store,
and then use the Image input node instead.


Using the Alpha Socket
======================

Using the *Alpha* output socket is crucial in overlaying images on top of one
another and letting a background image "show through" the image in front of it.

In a Blender scene, your objects are floating out there in virtual space.
While some objects are in front of one another (Z depth), there is no ultimate background.
Your world settings can give you the illusion of a horizon, but it's just that: an illusion.
Further, some objects are semi-transparent; this is called having an Alpha value.
A semi-transparent object allows light (and any background image)
to pass through it to the camera. When you render an image, Blender puts out,
in addition to a pretty image, a map of what solid objects actually are there,
and where infinity is, and a map of the alpha values for semi-transparent objects.
You can see this map by mapping it to a blue screen:


.. figure:: /images/Manual-Compositing-See_Alpha.jpg

   Viewing the Alpha values


In the little node map above,
we have connected the Alpha output socket of the RenderLayer node to a Map Value node
(explained later,
but basically this node takes a set of values and maps them to something we can use).
The Color Ramp node (also explained later in detail)
takes each value and maps it to a color that we can see with our eyes. Finally,
the output of the Color Ramp is output to a Composite viewer to show you, our dear reader,
a picture of the Alpha values.
Notice that we have set up the map so that things that are perfectly solid (opaque) are white,
and things that are perfectly transparent (or where there is nothing) are blue.


Optional Sockets
================

For any of the optional sockets to appear on the node,
you MUST have the corresponding pass enabled.
In order for the output socket on the RenderLayer node to show,
that pass must be enabled in the RenderLayer panel in the Buttons window. For example,
in order to be able to have the Shadow socket show up on the RenderLayer input node,
you must have the "Shad" button enabled in the Buttons window, Scene Render buttons,
Renderlayer panel. See the RenderLayer tab (Buttons window, Output frame, Render Layers tab,
Passes selector buttons) for Blender to put out the values corresponding to the socket.

For a simple scene, a monkey and her bouncy ball,
the following picture expertly provides a great example of what each pass looks like:


.. figure:: /images/Tidy_cornelius_passes.jpg
   :width: 650px


The available sockets are:

- Z: distance away from the camera, in Blender Units
- Normal (Nor): How the color is affected by light coming from the side
- UV: how the image is distorted by the UV mapping
- Speed (Vec): How fast the object is moving, and in what direction
- Color (Col): the RGB values that color the image that you see
- Diffuse: the softening of colors as they diffuse through the materials
- Specular: the degree of shininess added to colors as they shine in the light
- Shadow: shadows cast by objects onto other objects
- AO: how the colors are affected by Ambient Occlusion in the world
- Reflect (Ref): for mirror type objects, the colors they reflect and are thus not part of their basic material
- Refract: how colors are bent by passing through transparent objects
- Radio (Radiosity): colors that are emitted by other objects and cast onto the scene
- IndexOB: a numeric ordinal (index) of each object in the scene, as seen by the camera.

.. _render_layers-z_socket_usage:

Using the Z value Socket
========================

Using the *Z* output socket is crucial in producing realistic images,
since items farther away are blurrier (but more on that later).

Imagine a camera hovering over an X-Y plane. When looking through the camera at the plane,
Y is up/down and X is left/right, just like when you are looking at a graph.
The camera is up in the air though, so it has a Z value from the X-Y plane, and,
from the perspective of the camera, the plane,
in fact all the objects that the camera can see,
have a Z value as a distance that they are away from it.
In addition to the pretty colors of an image,
a RenderLayer input node also generates a Z value map. This map is a whole bunch of numbers
that specify how far away each pixel in the image is away from the camera.
You can see this map by translating it into colors, or shades of gray:


.. figure:: /images/Manual-Compositing-See_Z.jpg

   Viewing the Z values


In the little node map above,
we have connected the Z output socket of the RenderLayer node to a Map Value node
(explained later). This node takes a set of values and maps them to something we can use.
The Color Ramp node (also explained later in detail)
takes each value and maps it to a shade of gray that we can see with our eyes. Finally,
the output of the colorramp is output to a Composite viewer to show you, our dear reader,
a picture of the Z values. Notice that we have set up the Map Value node so that things closer
to the camera appear blacker (think: black is 0, less Z means a smaller number)
and pixels/items farther away have an increasing Z distance and therefore get whiter.
We chose a Size value of 0.05 to see Z values ranging from 0 to 20 (20 is 1/0.05).


Using the Speed Socket
======================

Even though things may be animated in our scene,
a single image or frame from the animation does not portray any motion;
the image from the frame is simply where things are at that particular time. However,
from the *Render Layers* node, Blender puts out a vector set that says how particular pixels are moving,
or will move, to the next frame. You use this socket to create a
:doc:`blurring effect. </composite_nodes/types/filter/vector_blur>`.
