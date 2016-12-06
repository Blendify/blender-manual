
*****************
Stabilize 2D Node
*****************

.. figure:: /images/compositing_nodes_distort_stabilize-2d.png
   :align: right

   Stabilize 2D Node.

Stabilizes the footage according to the settings set in
:menuselection:`Movie Clip Editor --> Properties --> 2D Stabilization`
For more information, :ref:`check this out <2D-stabilization>`.


Inputs
======

Image
   Standard image input.


Properties
==========

Movie Clip
   The movie clip whose stabilization to use.

Filter
   Various methods for the stabilization.
   Usually, the same as used in
   :menuselection:`Movie Clip Editor --> Properties --> 2D Stabilization --> Filter`.
   For technical details on their difference,
   `see this <http://www.mathworks.com/help/vision/ug/interpolation-methods.html>`_.
   But for most purposes, default of Bilinear should suffice.

Invert
   Invert the stabilization. If the stabilization calculated is to move the movie clip up by 5 units,
   this will move the movie clip down by 5 units.


Outputs
=======

Image
   Standard image input.

