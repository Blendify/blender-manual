
..    TODO/Review: {{review|text=Options reviewed for v2.70; Video is for old version}} .


************
Introduction
************

A *Camera* is an object that provides a means of rendering images from Blender.
It defines which portions of a scene is visible in the rendered image.

A scene can contain more than one camera, but only one of them will be used at a time.


Add a New Camera
================

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* mode
   | Menu:     :menuselection:`Add --> Camera`
   | Hotkey:   :kbd:`Shift-A` to add new.


In *Object* mode simply press :kbd:`Shift-A` and in the popup menu,
choose :menuselection:`Add --> Camera`.

The default scene in Blender includes a camera,
so you'll probably only need to add a new one if you have deleted the default one,
or need to animate a cut between two cameras.


Changing the Active Camera
==========================

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* mode
   | Hotkey:   :kbd:`Ctrl-Numpad0`


.. figure:: /images/Manual-CameraView-ActiveCamera.jpg
   :width: 200px

   Active camera (left one).


The *active* camera is the camera that is currently being used for rendering and camera view
(:kbd:`Numpad0`).

Select the camera you would like to make active and press :kbd:`Ctrl-Numpad0` (by doing so,
you also switch the view to camera view). In order to render,
each scene **must** have an active camera.

The active camera can also be set in the *Scene* context of the *Properties Editor*

The camera with the solid triangle on top is the active camera.


.. warning::

   The active camera, as well as the layers, can be specific to a given view,
   or global (locked) to the whole scene - see
   :doc:`this part of the 3D view options page </getting_started/basics/navigating/3d_view_options#lock_to_scene>`.

.. _camera_settings:

Camera Settings
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object mode
   | Editor:   Properties
   | Context:  Object Data


Cameras are invisible in renders, so they don't have any material or texture settings.
However, they do have *Object* and *Editing* setting panels available
which are displayed when a camera is the selected (active!) object.


Lens
----

The camera lens options control the way 3D objects are represented in a 2D image.
See :doc:`Camera Lens </render/camera/lens>` for details.


Camera
------

.. figure:: /images/Manual-Camera-presets-panel.jpg
   :width: 270px

   Camera Presets panel.


.. TODO: Camera Presets

.. _render-camera-sensor-size:

Sensor size
   As far as Blender is concerned, this setting does the same thing as the focal length.
   This setting is mainly useful when trying to match the camera in blender to a real-life camera, e.g. for
   :doc:`motion tracking </motion_tracking/index>`.


.. _render-camera-dof:

Depth of Field
--------------

.. figure:: /images/Manual-Camera-dof-panel.jpg
   :width: 270px

   Camera Display panel


Real world cameras transmit light through a lens that bends and focuses it onto the sensor.
Because of this, objects that are a certain distance away are in focus,
but objects in front and behind that are blurred.

The area in focus is called the *focal point* and can be set using either an exact value,
or by using the distance between the camera and a chosen object:

Depth of Field Object
   Choose an object which will determine the focal point. Linking an object will deactivate the distance parameter.
   Typically this is used to give precise control over the position of the focal point,
   and also allows it to be animated or constrained to another object.
Distance
   Distance to the focal point. If *Limits* are enabled, it is shown as a yellow cross on the camera line of sight.

   .. tip::

      You can hover the mouse over the *Distance* property and press :kbd:`E` to use a special *Depth Picker*.
      Then click on a point in the 3D View to sample the distance from that point to the camera.


Display
-------

.. figure:: /images/Manual-Camera-display-panel.jpg
   :width: 270px

   Camera Display panel


Limits
   Shows a line which indicates *Start* and *End Clipping* values.
Mist
   Toggles viewing of the mist limits on and off.
   The limits are shown as two connected white dots on the camera line of sight.
   The mist limits and other options are set in the *World* panel,
   in the :doc:`Mist section </render/blender_render/world/mist>`.


.. figure:: /images/Manual-Camera-camera-view.jpg
   :width: 350px
   :align: right

   Camera view displaying safe areas, sensor and name


Safe Areas
   When this is enabled, extra dotted frames are drawn when in camera view,
   delimiting the area considered as "safe" for important things.
Sensor
   Displays a dotted frame in camera view.
Name
   Toggle name display on and off in camera view.
Size
   Size of the camera icon in the 3D view. This setting has no effect on the render output of a camera,
   and is only a cosmetic setting.
   The camera icon can also be scaled using the standard Scale :kbd:`S` transform key.
Passepartout, Alpha
   This mode darkens the area outside of the camera's field of view, based on the *Alpha* setting.


Composition Guides
^^^^^^^^^^^^^^^^^^

*Composition Guides* are available from the drop-down menu, which can help when framing a shot.
There are 8 types of guides available:


Center
   Adds lines dividing the frame in half vertically and horizontally.
Center Diagonal
   Adds lines connecting opposite corners.
Thirds
   Adds lines dividing the frame in thirds vertically and horizontally.
Golden
   Divides the width and height into Golden proportions (About 0.618 of the size from all sides of the frame).
Golden Triangle A
   Draws a diagonal line from the lower-left to upper-right corners,
   then adds perpendicular lines that pass through the top left and bottom right corners.
Golden Triangle B
   Same as A, but with the opposite corners.
Harmonious Triangle A
   Draws a diagonal line from the lower-left to upper-right corners,
   then lines from the top left and bottom right corners to 0.618 the lengths of the opposite side.
Harmonious Triangle B
   Same as A, but with the opposite corners.


Camera Navigation
=================

There are several different ways to navigate and position the camera in your scene, some of them are explained below.


.. note::

   Remember that the active "camera" might be any kind of object.
   So these actions can be used, for example, to position and aim a lamp.


Move active camera to view
--------------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* mode
   | Hotkey:   :kbd:`Ctrl-Alt-Numpad0`


This feature allows you to position and orient the active camera to match your current
viewport.

Select a camera and then move around in the 3D view to a desired position and direction for
your camera (so that you're seeing what you want the camera to see). Now press
:kbd:`Ctrl-Alt-Numpad0` and your selected camera positions itself to match the view,
and switches to camera view.


Camera View Positioning
-----------------------

By enabling *Lock Camera to View* in the View menu of the View Properties panel,
while in camera view, you can navigate the 3d viewport as usual,
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
   this works with any axis; see the :doc:`axis locking page </getting_started/basics/transformations/transform_control/axis_locking>`).
Horizontal Pan or Yaw
   This corresponds to a rotation around the camera's local Y axis... Yes, that's it, press :kbd:`R`,
   and then :kbd:`Y` twice!
Dolly
   To dolly the camera, press :kbd:`G` then :kbd:`MMB` (or :kbd:`Z` twice).
Sideways Tracking
   Press :kbd:`G` and move the mouse
   (you can use :kbd:`X` twice or :kbd:`Y` to get pure-horizontal or pure-vertical sideways tracking).


Aiming the camera in Flymode
----------------------------

When you are in *Camera* view,
the :doc:`fly mode </getting_started/basics/navigating#fly_mode>` actually moves your active camera...

.. youtube:: bTRrHNn-d4w
