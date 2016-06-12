
****
Time
****

.. figure:: /images/texture-nodes-time.jpg
   :width: 200px

   Time node.


The time node uses a frame range to output a value between 0 and 1.
By default the node output a linear transition from 0 to 1 from frame 1 to 250.
The shape of the curve can be manipulated to vary the output over time in different ways.


:kbd:`Plus`: Zoom in.
:kbd:`Minus`: Zoom out

.. rubric:: Tools

Reset View
   Resets curve view
Vector Handle
   Breaks tangent at curve handle, making a angle.
Auto Handle
   Default smooth interpolation of curve segments
Extend Horizontal
   Causes the curve to stay horizontal before the first point and after the last point.


.. figure:: /images/texture-nodes-time-extendHorizontal.jpg
   :width: 150px

   Extend Horizontal.


   Extend Extrapolated
      Causes the curve to extrapolate before the first point and after the last point,
      based on the shape of the curve.


.. figure:: /images/texture-nodes-time-extendExtrapolate.jpg
   :width: 150px

   Extend Extrapolate.


   Reset Curve
      Resets shape of curve to original linear shape.

Clipping Options:
   Use Clipping
      Forces curve points to stay between specified values.
   Min X/Y and Max X/Y
      Set the minimum and maximum bounds of the curve points.

:kbd:`X`:Delete curve points. The first and last points cannot be deleted.
*X and Y* The coordinates of the selected edit point.
*Sta*:Specify the start frame to use.
*End*:Specify the end frame to use.

