.. _camera-settings:

***********
Object Data
***********

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Editor:   :menuselection:`Properties -->  Camera`


Cameras are invisible in renders, so they do not have any material or texture settings.
However, they do have *Object* and *Editing* setting panels available
which are displayed when a camera is the selected (active!) object.


Lens
====

The camera lens options control the way 3D objects are represented in a 2D image.
See :doc:`Camera Lens </editors/3dview/object/types/camera/lens>` for details.


Camera
======

.. figure:: /images/camera-presets-panel.jpg

   Camera Presets panel.


.. TODO: Camera Presets

.. _render-camera-sensor-size:

Sensor size
   This setting is an alternative way to control the focal-length,
   it is useful to match the camera in Blender to a physical camera & lens combination,
   e.g. for :doc:`motion tracking </editors/movie_clip_editor/index>`.


.. _render-camera-dof:

Depth of Field
==============

.. figure:: /images/camera_dof_panel.jpg

   Camera Depth of Field Panel.


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

High Quality
   In order for the viewport to offer an accurate representation of depth of field,
   like a render, you must enable High Quality. Without it, you may notice a
   difference in shading.
Viewport F-stop
   Controls the real-time focal blur effect used during sequencer or OpenGL rendering and,
   when enabled, camera views in the 3D View.
   The amount of blur depends on this setting, along with Focal Length and Sensor Size.
   Smaller Viewport F-stop values result in more blur.
Blades
   Add a number of polygonal *blades* to the blur effect, in order to achieve a
   a *bokeh effect* in the viewport. To enable this feature, the blades must be
   set to at least 3 (3 sides, triangle)

.. figure:: /images/camera_dof_bokeh.jpg

   The viewport bokeh effect with the blades set to 3.


Display
=======

.. figure:: /images/camera-display-panel.jpg

   Camera Display Panel.


Limits
   Shows a line which indicates *Start* and *End Clipping* values.
Mist
   Toggles viewing of the mist limits on and off.
   The limits are shown as two connected white dots on the camera line of sight.
   The mist limits and other options are set in the *World* panel,
   in the :doc:`Mist section </render/blender_render/world/mist>`.

.. figure:: /images/camera-camera-view.png

   Camera view displaying safe areas, sensor and name.


Sensor
   Displays a dotted frame in camera view.
Name
   Toggle name display on and off in camera view.
Size
   Size of the camera icon in the 3D View. This setting has no effect on the render output of a camera,
   and is only a cosmetic setting.
   The camera icon can also be scaled using the standard Scale :kbd:`S` transform key.
Passepartout, Alpha
   This mode darkens the area outside of the camera's field of view, based on the *Alpha* setting.


Composition Guides
------------------

*Composition Guides* are available from the drop-down menu, which can help when framing a shot.
There are eight types of guides available:


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
----------

When this is enabled, extra dotted frames are drawn when in camera view, delimiting the area considered as
"safe" for important elements.
:doc:`More information about them in the safe areas section </editors/3dview/object/types/camera/safe_areas>`.
