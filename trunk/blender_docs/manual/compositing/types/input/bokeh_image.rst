
***********
Bokeh Image
***********

.. figure:: /images/compositing_nodes_bokeh.png
   :align: right
   :width: 150px

   Bokeh Image Node.

Bokeh Image generates a special input image for use with the
:doc:`Bokeh Blur </compositing/types/filter/bokeh_blur>` filter node.

Bokeh Image is designed to create a reference image which simulates optical parameters 
such as aperture shape and lens distortions which have important impacts on bokeh in real cameras.

Input
=====

This node has no input sockets.

Properties
==========

The first three settings simulate the aperture of the camera.

Flaps
   Sets an integer number of blades for the cameras iris diaphragm. 
Angle
   Gives these blades an angular offset relative to the image plane 
Rounding
   Sets the curvature of the blades with (0 to 1) from straight to bringing them to a perfect circle.

Catadioptric
   Provides a type of distortion found in mirror lenses and some telescopes.
   This can be useful to produce a visual complex bokeh.
Lens Shift
   Introduces chromatic aberration into the blur such as would be caused by a tilt-shift lens.

Output
======

Color
   The generated bukeh image. 
