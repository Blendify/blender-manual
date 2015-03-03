
***********
Bokeh Image
***********


Bokeh Image generates a special input image for use with the
:doc:`Bokeh Blur </composite_nodes/types/filter/bokeh_blur>` filter node.

Bokeh Image is designed to create a reference image which simulates optical parameters such as aperture shape
and lens distortions which have important impacts on bokeh in real cameras.

The first three settings simulate the aperture of the camera. Flaps sets an integer number of blades for the cameras
iris diaphragm. Angle gives these blades an angular offset relative to the image plane and Rounding sets the curvature
of the blades with a ``0`` being straight and ``1`` bringing them to a perfect circle.

Catadioptric provides a type of distortion found in mirror lenses and some telescopes.
This can be useful to produce a 'busy' bokeh.

Lens Shift introduces chromatic aberration into the blur such as would be caused by a tilt-shift lens.

.. figure:: /images/composite_node_input_bokeh_image.jpg

   Example of a bokeh image with 5 flaps.
