
******
Camera
******

Lens
====

Type
----

Perspective
^^^^^^^^^^^

Focal Length/Field of View
   Control the field of view set by lens property or by angle as selected in the *Lens Unit* menu.

.. figure:: /images/cycles_camera_persp.png
   :width: 300px

.. hint:: Dolly Zoom

   While the camera is moving towards an object the *Focal Length* property can be decreased
   to produce a *Dolly Zoom* camera effect, or vice versa.

   `This video <https://vimeo.com/15837189>`__ demos the *Dolly Zoom* camera effect.


Orthographic
^^^^^^^^^^^^

Scale
   Controls the size of objects projected on the image.

.. figure:: /images/cycles_camera_ortho.png
   :width: 300px


.. _cycles-panoramic-camera:

Panoramic
^^^^^^^^^

Cycles supports Equirectangular and Fisheye panoramic cameras.
Note that these cannot be displayed with OpenGL rendering in the view-port;
they will only work for rendering.


Equirectangular
"""""""""""""""

Render a panoramic view of the scenes from the camera location and use an equirectangular projection,
always rendering the full 360° over the X-axis and 180° over the Y-axis.

This projection is compatible with the environment texture as used for world shaders,
so it can be used to render an environment map. To match the default mapping,
set the camera object rotation to (90, 0, -90) or pointing along the positive X-axis. This
corresponds to looking at the center of the image using the default environment texture
mapping.

Minimum/Maximum Latitude/Longitude
   Limits of the vertical and horizontal field of view angles.


Fisheye
"""""""

Fisheye lenses are typically wide angle lenses with strong distortion,
useful for creating panoramic images for e.g. dome projection, or as an artistic effect.

The *Fisheye Equisolid* lens will best match real cameras.
It provides a lens focal length and field of view angle,
and will also take the sensor dimensions into account.

The *Fisheye Equidistant* lens does not correspond to any real lens model; it will
give a circular fish-eye that does not take any sensor information into account but rather uses
the whole sensor. This is a good lens for full dome projection.

Lens
   Lens focal length in millimeter.
Field of View
   Field of view angle, going to 360 and more to capture the whole environment.


Mirror Ball
"""""""""""

ToDo.


.. _render-cycles-camera-clipping:

Clipping
--------

Clip Start and End
   The interval in which objects are directly visible,
   Any objects outside this range still influence the image indirectly,
   as further light bounces are not clipped.

When *Limits* in the *Display* panel is enabled,
the clip bounds will be visible as two yellow connected dots on the camera line of sight.

.. tip::

   Changing the clipping value can have a serious impact on render performance.
   It is important to always set the *Start* and *End* values to a safe distance that is both not too extreme,
   nor too small to have the best possible render times.

.. seealso::

   - :ref:`Blender Render Camera Clipping <camera-clipping>`.
   - :doc:`3D View clipping </editors/3dview/properties/panels>`.


Depth of Field
==============

.. figure:: /images/render_cycles_camera_depth-of-field-panel.png


Focus
-----

Object
  Set an object to be used as a focal point by the camera, causing the camera
  to focus on the selected object origin.
Distance
  When a *Focus* object is not used, the camera can be set to focus on an area in 3D
  space set by the distance from the camera.
  Using the *Limit* Display option, you are able to view the distance in the 3D space.


Viewport
--------

High Quality
  Enables the High Quality *view-port* depth of field, giving a more accurate
  representation of *depth of field*. This allows the view-port depth of field
  to be closely represented to that of the render and render preview depth of field.
F-Stop
  Viewport depth of field aperture measured in F-Stops. Smaller numbers will
  cause more blur in the view-port, OpenGL renders, and sequencer.
Blades
  The number of polygonal sides to give blurred objects in the view-port.
  The minimum number of blades needed to enable the bokeh effect is 3 (triangle).
  (Only available with High Quality).


Aperture
--------

Aperture type
  Use F-Stop or Radius to set the aperture for the render, and render preview.
  F-Stop is the focal ratio, where Radius is the radius of the focal point.
Size/Number
  Aperture radius *size*, or F-Stop *number* used for the render, and render preview.
  Using the F-Stop with a low number, or Radius with a large size will result in a strong blur,
  also allowing the use of the *bokeh effect*.
Blades
  Total number of polygonal blades used to alter the shape of the blurred objects
  in the render, and render preview. As with the view-port, the minimum amount of
  blades to enable the bokeh effect is 3, resulting in a triangle shaped blur.
Rotation
  Rotate the polygonal blades along the facing axis, and will rotate in a clockwise,
  and counter-clockwise fashion.
Ratio
  Change the amount of distortion to simulate the anamorphic bokeh effect.
  A setting of 1.0 shows no distortion, where a number below 1.0 will cause a horizontal distortion,
  and a higher number will cause a vertical distortion.

.. figure:: /images/cycles_camera_dof_bokeh.jpg

.. seealso:: Switching between Cameras

   By :ref:`binding the camera to markers <marker-bind-camera>`.
