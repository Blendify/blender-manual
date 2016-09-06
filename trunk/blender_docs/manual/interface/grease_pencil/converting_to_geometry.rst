
******************************
Converting Sketches to Objects
******************************

.. figure:: /images/interface_gp_convert.png
   :align: right

   The Convert to Curve options.

In the 3D View, sketches on the active layer can be converted to geometry,
based on the current view settings, by transforming the points recorded when drawing
(which make up the strokes) into 3D-space. Currently, all points will be used,
so it may be necessary to simplify or subdivide parts of the created geometry for standard use.

Sketches can currently be converted into curves,
as proposed by the *Convert Grease Pencil* menu popped-up by the *Convert* button in the grease pencil properties.


Options
=======

Type
   The type of object to convert to.

   Path
      Create NURBS 3D curves of order 2 (i.e. behaving like polylines).
   Bézier Curve
      Create Bézier curves, with free "aligned" handles (i.e. also behaving like polylines).
   Polygon Curve
      Bézier Curve with strait line segments (auto handles).

   .. note:: Converting to Mesh

      If you want to convert your sketch to a mesh,
      simply choose first *NURBS*, and then convert the created curve to a mesh.


Normalize Weight
   Will scale weights value so that they tightly fit into the (0.0 to 1.0) range. (enabled by default)

   All this means that with a pressure tablet,
   you can directly control the radius and weight of the created curve, which can affect e.g.
   the width of an extrusion, or the size of an object through a *Follow Path*
   constraint or *Curve* modifier!

Link Strokes
   Will create a single spline, i.e. curve element. (enabled by default)
   from all strokes in active grease pencil layer. This especially useful if you want to use the curve as a path.
   All the strokes are linked in the curve by "zero weights/radii" sections.


Timing
------

Grease pencil stores "dynamic" data, i.e. how fast strokes are drawn.
When converting to curve,
this data can be used to create an *Evaluate Time* F-Curve (in other words,
a path animation), that can be used e.g. to control another object's position along that curve
(*Follow Path* constraint, or, trough a driver, *Curve* modifier).
So this allows you to reproduce your drawing movements.

.. warning::

   All those "timing" options need *Link Stroke* to be enabled,
   else they would not make much sense!


Timing Mode
   This control let you choose how timing data are used.

   No Timing
      Just create the curve, without any animation data (hence all following options will be hidden).
   Linear
      The path animation will be a linear one.
   Original
      The path animation will reflect to original timing, including for the "gaps"
      (i.e. time between strokes drawing).
   Custom Gaps
      The path animation will reflect to original timing, but the "gaps" will get custom values.
      This is especially useful if you have very large pauses between some of your strokes,
      and would rather like to have "reasonable" ones!

Frame Range
   The "length" of the created path animation, in frames. In other words, the highest value of *Evaluation Time*.
Start Frame
   The starting frame of the path animation.
Realtime
   When enabled, the path animation will last exactly the same duration it took you do draw the strokes.
End Frame
   When *Realtime* is disabled, this defines the end frame of the path animation.
   This means that the drawing timing will be scaled up or down to fit into the specified range.
Gap Duration
   *Custom Gaps* only. The average duration (in frames) of each gap between actual strokes.
   Please note that the value entered here will only be exact if *Realtime* is enabled,
   else it will be scaled, exactly as the actual strokes' timing is!


Example
=======

Here is a simple "hand writing" video created with curves converted from sketch data:

.. youtube:: VwWEXrnQAFI

The blend-file from the above example can be found
`here <https://wiki.blender.org/index.php/file:ManGreasePencilConvertToCurveDynamicExample.blend>`__
