
******
Camera
******

The Game Engine camera is in many ways similar to the Camera in the normal Blender Render
system, and is created, parameterized and manipulated in similar ways.
However because of its use as a real-time device, the Game Engine camera has a number of
additional features - it may be used as not only as a static camera,
but also as a moving device with its default characteristics (ie.
with its own programmed moves), or it may track another object in the game. Furthermore,
any game object may be used as a camera; the view is taken from the object's origin point.
Lastly, it may be given special capabilities such as Stereo vision, Dome visualisation etc.
which have special relevance to game technology.

When you start the Game Engine, the initial camera view is taken from the latest 3D View.
This may be either a selected camera object or the default camera (see below).
Thus to start the game with a particular camera,
you must select the camera and press :kbd:`Numpad0` before starting the Game Engine.


.. tip:: To avoid camera distortion

   Always zoom the view in until the camera object fills the entire viewport.


Default Camera
==============

The default camera view is taken from the latest 3D viewport view,
at a distance equivalent to the viewer. This means that if the normal 3D view is active the
scene does not change when the Game Engine is started.


Camera Object
=============

The Camera object in the Game Engine follows much the same structure as the conventional Blender camera - see
:doc:`Camera </editors/3dview/object/types/camera/index>` for details of how to set up,
manipulate and select a camera. The following sections show some of the special facilities available in BGE cameras.


Parent Camera to Object
=======================

The camera will follow the object. First select the camera and then select the object.
Next :kbd:`Ctrl-P` :menuselection:`--> Make Parent`.

Note that if your object has any rotations then the camera will also have those rotations.
To avoid this use `Parent to Vertex`_.


Parent to Vertex
================

The easiest way to accomplish this is to select your object and :kbd:`Tab` to
*Edit Mode*.
Now select the vertex and :kbd:`Tab` back to *Object Mode*.

Next, without any objects selected, select the camera and, holding the :kbd:`Shift` key,
select the object. :kbd:`Tab` into *Edit Mode*,
and :kbd:`Ctrl-P` and choose *Make vertex parent*.

Now the camera will follow the object and it will maintain its rotation,
while the object rotates.


Object as a Camera
==================

Any object may also become a camera with whatever properties are set for the object.

To make an object the camera,
in *Object Mode* select the object and press :kbd:`Ctrl-Numpad0` on the numpad.

To reverse it, just select the camera and :kbd:`Ctrl-Numpad0` again.


Camera Lens Shift
=================

In the Blender interface,
there is an option to shift the camera view on the x/y plane of the view. It is comparable to
lens shift in video projectors that usually shift the image up along the Y axis.
So for example,
when you put the beamer on a table it does not project half of the image on the table.
