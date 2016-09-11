
********
Viewmaps
********

There is only one viewmap per render layer. It controls the edge detection parameters.
Which detected edges are actually rendered, and how,
can be controlled either through the user-friendly
:doc:`parameter editor </render/freestyle/parameter_editor/index>`,
or powerful but complex :doc:`Python scripting </render/freestyle/python>`.

.. figure:: /images/render_freestyle_view-map_freestyle-panel.png

   Freestyle panel.


View Map Cache
   TODO. See `wiki
   <https://wiki.blender.org/index.php/Dev:Ref/Release_Notes/2.73/Freestyle#View_Map_Caching>`__.
Face Smoothness
   When enabled, *Smooth Shading* will be taken into account for edges calculation.
Crease Angle
   If two adjacent faces form an angle less than the defined *Crease Angle*,
   the edge between them will be rendered when using *Crease* edge type selection in a line set.
   The value also affects *Silhouette* edge type selection.
Culling
   Ignore the edges that are out of view (saves some processing time and memory,
   but may reduce the quality of the result in some cases).


Advanced Options
================

.. figure:: /images/render_freestyle_view-map_freestyle-panel-advanced.png

   Advanced Options enabled.


*Sphere Radius* It affects the calculation of curvatures for *Ridge*,
*Valley* and *Suggestive Contour* edge type selection in a line set.

Kr Derivative Epsilon
   It provides you with control over the output of *Suggestive Contour* and *Silhouette*
   edge type selection (further information in
   `this pdf <https://wiki.blender.org/index.php/file:Manual-2.6-Render-Freestyle-PrincetownLinestyle.pdf>`__).
