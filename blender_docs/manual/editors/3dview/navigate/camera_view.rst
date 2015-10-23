
***********
Camera View
***********

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`View --> Camera --> Active Camera`
   | Hotkey:   :kbd:`Numpad0`



Cameras View can be used to virtually compose shots and preview how the scene will look when rendered.
Pressing :kbd:`Numpad0` will show the scene as viewed from the currently active camera.
In this view you can also set the *Render Border* which defines the portion of the camera view to be rendered.


.. figure:: /images/3D-interaction_Navigating_Camera-View-perspective-camera-render.jpg
   :width: 640px

   Camera view provides a preview for the final rendered image.

There are several different ways to navigate and position the camera in your scene, some of them are explained below.


Camera Navigation
=================

There are several different ways to navigate and position the camera in your scene, some of them are explained below.


.. note::

   Remember that the active "camera" might be any kind of object.
   So these actions can be used, for example, to position and aim a lamp.


Move Active Camera to View
--------------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* mode
   | Hotkey:   :kbd:`Ctrl-Alt-Numpad0`


This feature allows you to position and orient the active camera to match your current view-port.

Select a camera and then move around in the 3D view to a desired position and direction for
your camera (so that you're seeing what you want the camera to see). Now press
:kbd:`Ctrl-Alt-Numpad0` and your selected camera positions itself to match the view,
and switches to camera view.


Camera View Positioning
-----------------------

By enabling :ref:`Lock Camera to View <3dview-lock_camera_to_view>` in the View menu of the View Properties panel,
while in camera view, you can navigate the 3d view-port as usual,
while remaining in camera view. Controls are exactly the same as when normally moving in 3d.


Roll, Pan, Dolly, and Track
---------------------------

To perform these camera moves, the camera must first be *selected*,
so that it becomes the active object (while viewing through it,
you can :kbd:`RMB` -click on the solid rectangular edges to select it).
The following actions also assume that you are in camera view
(:kbd:`Numpad0`)! Having done so, you can now manipulate the camera using the same commands
that are used to manipulate any object:

Roll
   Press :kbd:`R` to enter object rotation mode. The default will be to rotate the camera in its local Z-axis
   (the axis orthogonal to the camera view), which is the definition of a camera "roll".
Vertical Pan or Pitch
   This is just a rotation along the local X-axis. Press :kbd:`R` to enter object rotation mode, then :kbd:`X` twice
   (the first press selects the *global* axis - pressing the same letter a second time selects the *local* axis -
   this works with any axis;
   see the :doc:`axis locking page </editors/3dview/transform/transform_control/axis_locking>`).
Horizontal Pan or Yaw
   This corresponds to a rotation around the camera's local Y axis... Yes, that's it, press :kbd:`R`,
   and then :kbd:`Y` twice!
Dolly
   To dolly the camera, press :kbd:`G` then :kbd:`MMB` (or :kbd:`Z` twice).
Sideways Tracking
   Press :kbd:`G` and move the mouse
   (you can use :kbd:`X` twice or :kbd:`Y` to get pure-horizontal or pure-vertical sideways tracking).


.. seealso::

   :ref:`Fly/Walk Mode <3dview-walk_fly>`
      When you are in walk/fly mode, navigation actually moves your camera:
   :ref:`Lock Camera to View <3dview-lock_camera_to_view>`
      When enabled,
      performing typical view manipulation operations will move the camera object.

