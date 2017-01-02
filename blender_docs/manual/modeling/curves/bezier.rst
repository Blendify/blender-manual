
*************
Bézier Curves
*************

The main elements used in editing Bézier Curves are the Control Points and Handles.
A Segment (the actual Curve) is found between two Control Points. In the image below,
the Control Points can be found in the middle of the pink line,
while the Handles comprise the extensions from the Control Point.
By default the arrows on the Segment represents the direction and
*relative* speed and direction of movement Objects will have when moving along the curve.
This can be altered by defining a custom F-Curve.

.. figure:: /images/modeling_curves_control-points-handles.png

   Bézier Curve in Edit Mode.


Editing Bézier Curves
=====================

A Bézier curve can be edited by moving the locations of the Control Points and Handles:

#. Add a Curve by :kbd:`Shift-A` to bring up the *Add* menu, followed by :menuselection:`Curve --> Bézier`.
#. Press :kbd:`Tab` to enter *Edit Mode*.
#. Select one of the Control Points and move it around.
   Use :kbd:`LMB` to confirm the new location of the Control Point, or use :kbd:`RMB` to cancel.
#. Now select one of the Handles and move it around. Notice how this changes the curvature of the curve.

To add more Control Points:

#. Select at least two adjacent Control Points.
#. Press :kbd:`W` and select :menuselection:`-->Subdivide`.
#. Optionally, you can press :kbd:`F6` immediately after the subdivision to modify the number of subdivisions.

Note that while in *Edit Mode* you cannot directly select a Segment. To do so,
select all of the Control Points that make up the Segment you want to move.


Handle Types
------------

There are four Bézier curve handle types.
They can be accessed by pressing :kbd:`V` and selecting from the list that appears,
or by pressing the appropriate hotkey combination. Handles can be rotated, moved,
scaled and shrunk/fattened like any vertex in a mesh.

.. figure:: /images/modeling_curves_bezier_handle-types.png
   :align: right

   Bézier Curve Handle Types.


.. _curve-handle-type-auto:

Automatic :kbd:`V-A`
   This handle has a completely automatic length and direction
   which is set by Blender to ensure the smoothest result.
   These handles convert to *Aligned* handles when moved. (Yellow handles.)
Vector :kbd:`V-V`
   Both parts of a handle always point to the previous handle or the next handle which allows
   you to create curves or sections thereof made of straight lines or with sharp corners.
   Vector handles convert to *Free* handles when moved. (Green handles.)
Aligned :kbd:`V-L`
   These handles always lie in a straight line,
   and give a continuous curve without sharp angles. (Purple handles.)
Free :kbd:`V-F`
   The handles are independent of each other. (Black handles.)
