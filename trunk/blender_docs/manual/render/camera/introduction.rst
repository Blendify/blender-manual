
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

The default scene includes a camera,
so you'll only need to add a new one if you have deleted the default one,
or need to animate a cut between two cameras.


Changing the Active Camera
==========================

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* mode
   | Hotkey:   :kbd:`Ctrl-Numpad0`


.. figure:: /images/CameraView-ActiveCamera.jpg

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
   :doc:`Local Camera </editors/3dview/display>`.

.. _camera-settings:

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

.. figure:: /images/Camera-presets-panel.jpg

   Camera Presets panel.


.. TODO: Camera Presets

.. _render-camera-sensor-size:

Sensor size
   This setting is an alternative way to control the focal-length,
   it's useful to match the camera in Blender to a physical camera & lens combination,
   e.g. for :doc:`motion tracking </editors/movie_clip_editor/index>`.

.. _render-camera-dof:

Depth of Field
--------------

.. figure:: /images/Camera-dof-panel.jpg

   Camera Depth of Field Panel


Real world cameras transmit light through a lens that bends and focuses it onto the sensor.
Because of this, objects that are a certain distance away are in focus,
but objects in front and behind that are blurred.

The area in focus is called the *focal point* and can be set using either an exact value,
or by using the distance between the camera and a chosen object:

Focus Object
   Choose an object which will determine the focal point. Linking an object will deactivate the distance parameter.
   Typically this is used to give precise control over the position of the focal point,
   and also allows it to be animated or constrained to another object.
Distance
   Sets the distance to the focal point when no *Focus Object* is specified.
   If *Limits* are enabled, a yellow cross is shown on the camera line of sight at this distance.

   .. hint::

      Hover the mouse over the *Distance* property and press :kbd:`E` to use a special *Depth Picker*.
      Then click on a point in the 3D View to sample the distance from that point to the camera.

Viewport F-stop
   Controls the real-time focal blur effect used during sequencer or OpenGL rendering and,
   when enabled, camera views in the 3D viewport.
   The amount of blur depends on this setting, along with Focal Length and Sensor Size.
   Smaller Viewport F-stop values result in more blur.


Display
-------

.. figure:: /images/Camera-display-panel.jpg

   Camera Display panel


Limits
   Shows a line which indicates *Start* and *End Clipping* values.
Mist
   Toggles viewing of the mist limits on and off.
   The limits are shown as two connected white dots on the camera line of sight.
   The mist limits and other options are set in the *World* panel,
   in the :doc:`Mist section </render/blender_render/world/mist>`.


.. figure:: /images/Camera-camera-view.jpg

   Camera view displaying safe areas, sensor and name


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


Safe Areas
^^^^^^^^^^

When this is enabled, extra dotted frames are drawn when in camera view, delimiting the area considered as
"safe" for important elements.
:doc:`More information about them in the safe areas section </render/camera/safe_areas>`.


Render Border
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`View --> Render Border`
   | Hotkey:   :kbd:`Ctrl-B`

.. figure:: /images/3D-interaction_Navigating_Camera-View-render-border-toggle.jpg

   Render Border toggle


While in camera view, you can define a subregion to render by drawing out a rectangle within the cameras frame.
Your renders will now be limited to the part of scene visible within the render border.
This can be very useful for reducing render times for quick previews on an area of interest.

The border can be disabled by disabling the *Border* option in the *Dimensions* panel of the *Render*
context or by activating the option again and selecting *Render Border* larger than the camera view.

.. note:: Anti-Aliasing and blur options with borders

   Note that when Render Borders are activated,
   Full Sampling Anti-Aliasing will be disabled while Sampled Motion Blur will become available.

   :doc:`Read more about Anti-Aliasing </render/blender_render/antialiasing>`
   :doc:`Read more about Motion Blur </render/blender_render/motion_blur>`


.. figure:: /images/3D-interaction_Navigating_Camera-View-render-border.jpg
   :width: 640px

   Render border and associated render.
