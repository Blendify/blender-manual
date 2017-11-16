
**********
Properties
**********

Mask Layer
==========

Mask Layer
   Mask layers consists of one or several splines and used to "grouped" operation on splines.
   Layers can be used to create complex shapes and to define how the splines interact with each other.
   Splines belonging to the same layer can be animated together, for example by an item
   from motion tracker footage.
   Example of such tools might be parenting the whole set of splines to single motion tracking data or
   simple to transform all of them together.

Opacity
   ToDo 2.64.

   Invert
      ToDo 2.64.
Blend
   ToDo 2.64.
Falloff
   Feather. ToDo 2.64.
Overlap
   Detect self intersections. ToDo 2.64.
Holes
   Option not to treat overlapping curves as holes.
   Concentric splines will generating holes in the mask.

   By creating overlapping splines holes can be created, and
   it's the layer membership that defines which splines interact to create holes.
   As addition, splines from the same layer are behaving in a way,
   that concentric splines are defining holes in mask,
   but if two splines from different layers are concentric they wouldn't define hole --
   they'll just be union in final mask.


Example
-------

The purpose of mask layers can be explained with an example.
Suppose there are two unwanted people in the footage, and one of them goes from left to right, and
the other in the opposite direction. Two mask layers can then be used to mask them separately
using a single mask data-block. At the point of intersection of these shapes they will be added together rather than
creating a hole, as would happen if they were on the same layer. If the motion is simple enough,
a single motion tracked point can be used to drive the location of the entire mask layer.


Mask Display
============

Smooth
   Display the edge anti-aliased.
Edge Draw Type
   Style of the edge.
Overlay
   Added mask overlay to both Image and Clip editors.

   Mode
      Alpha Channel
         Which displays rasterized mask as a grayscale image.
      Combined
         Which multiples image/clip with the mask.


Active Spline
=============

.. (wip)
   It is possible to control feather of mask, including a way to define non-linear feather.
   Linear feather is controlled by a slider,
   non-linear feather is controlled in the same curve-based way to define feather falloff.

Feather Offset
   ToDo 2.64.
Weight Interpolation
   ToDo 2.64.
Cyclic
   If the spline is closed or not.
Fill
   Disable calculation of holes.
Self Intersection Check
   Fill self intersections.


Active Point
============

This panel is shown when both a tracking marker and mask is selected.


Parent
------

In the Movie Clip Editor it is possible to link the whole mask or its points to motion tracks.
This way the mask or points will follow the tracks.

Make Parent :kbd:`Ctrl-P`
   Parents one or more selected spline points to the active motion tracker.
Clear Parent :kbd:`Alt-P`
   Clears any parenting relationship for the selected spline points.

Parent
   :ref:`Data ID <ui-data-id>` to which the mask or spline is parented to
   in case of parenting to movie tracking data set to Movie Clip data-block.
Type
   Point Track, Plane Track
Object
   :ref:`Object <movie-clip-tracking-properties-object>` to parent to.
Track
   Name of individual tracks.


Mask Settings
=============

ToDo 2.64.
