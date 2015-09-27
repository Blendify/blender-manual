***********
Camera Lens
***********

.. figure:: /images/CameraPanel.png
   :width: 270px

   Camera Lens panel.

The camera lens options control the way 3D objects are represented in a 2D image.


Lens Types
==========

There are three different lens types:

- `Perspective`_
- `Orthographic`_
- `Panoramic`_


Perspective
-----------

This matches how you view things in the real-world.
Objects in the distance will appear smaller than objects in the foreground,
and parallel lines (such as the rails on a railroad) will appear to converge as they get farther away.

.. figure:: /images/perspective_perspective_traintracks.jpg

   Render of a train track scene with a *Perspective* camera.

Settings which adjust this projection include:

- Focal length
- `Shift`_
- :ref:`Sensor size <render-camera-sensor-size>`


Focal length
   The :term:`focal length` setting controls the amount of zoom, i.e.
   the amount of the scene which is visible all at once.
   Longer focal lengths result in a smaller :abbr:`FOV (Field of View)` (more zoom),
   while short focal lengths allow you to see more of the scene at once
   (larger :abbr:`FOV (Field of View)`, less zoom).

   .. figure:: /images/perspective_perspective_traintracks_telephoto.jpg

      Render of the same scene as above, but with a focal length of 210mm instead of 35mm.


Lens Unit
   The focal length can be set either in terms of millimeters or the actual :term:`Field of View` as an angle.


Orthographic
------------

With *Orthographic* perspective objects always appear at their actual size, regardless of distance.
This means that parallel lines appear parallel, and do not converge like they do with *Perspective*.

.. figure:: /images/perspective_orthographic_ortho_example.jpg

   Render from the same camera angle as the previous examples, but with orthographic perspective.

Orthographic Scale
   This controls the apparent size of objects in the camera.

   Note that this is effectively the only setting which applies to orthographic perspective.
   Since parallel lines do not converge in orthographic mode (no vanishing points),
   the lens shift settings are equivalent to translating the camera in the 3D view.


Panoramic
---------

Panoramic cameras are only supported in the Cycles render engine.
See :ref:`the Cycles documentation <cycles-panoramic-camera>`.


Shift
=====

The *Shift* setting allows for the adjustment of *vanishing points*.
*Vanishing points* refer to the positions to which parallel lines converge.
In this example, the most obvious vanishing point is at the end of the railroad.

To see how this works, take the following examples:

.. figure:: /images/perspective_perspective_traintracks_lens_shift.jpg

   Render of a train track scene with a horizontal lens shift of ``0.330``.


.. figure:: /images/perspective_perspective_traintracks_camera_rotate.jpg

   Render of a train track scene with a rotation of the camera object instead of a lens shift.


Notice how the horizontal lines remain perfectly horizontal when using the lens shift,
but do get skewed when rotating the camera object.

Using lens shift is equivalent to rendering an image with a larger
:abbr:`FOV (Field of View)` and cropping it off-center.


Clipping
========

Set the clipping limits with the *Start* and *End* values. Only objects within the limits are rendered.
If *Limits* in the *Display* panel is enabled,
the clip bounds will be visible as two yellow connected dots on the camera line of sight.

.. note::

   The *3D View* window contains settings similar to the camera,
   see the :doc:`3D view options page </editors/3dview/display>` for more details.
