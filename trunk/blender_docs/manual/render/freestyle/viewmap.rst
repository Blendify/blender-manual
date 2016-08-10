
********
Viewmaps
********

There is only one viewmap per render layer. It controls the edge detection parameters.
Which detected edges are actually rendered, and how,
can be controlled either through the user-friendly
:doc:`parameter editor </render/freestyle/parameter_editor/index>`,
or powerful but complex :doc:`Python scripting </render/freestyle/python>`.

Face Smoothness
   When enabled, Face Smoothness will be taken into account for edges calculation.

.. figure:: /images/render-freestyle-parameter_editor_mode.jpg
   :width: 200px

   Parameter Editor Mode UI.


Crease Angle
   If two adjacent faces form an angle less than the defined *Crease Angle*,
   the edge between them will be rendered when using *Crease* edge type selection in a line set.
   The value also affects *Silhouette* edge type selection.

Culling
   Ignore the edges that are out of view (saves some processing time and memory,
   but may reduce the quality of the result in some cases).


Advanced Options
================

.. figure:: /images/render-freestyle-advanced_options.jpg
   :width: 200px

   Advanced Options.


*Sphere Radius*
It affects the calculation of curvatures for *Ridge*,
*Valley* and *Suggestive Contour* edge type selection in a line set.

Kr Derivative Epsilon
   It provides you with control over the output of *Suggestive Contour* and *Silhouette*
   edge type selection (further information in
   `this pdf <https://wiki.blender.org/index.php/file:Manual-2.6-Render-Freestyle-PrincetownLinestyle.pdf>`__).
