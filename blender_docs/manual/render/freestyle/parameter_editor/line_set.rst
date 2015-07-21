
********
Line Set
********

A line set selects, among the lines (edges) detected by Freestyle,
which ones will be rendered using its attached :doc:`line style </render/freestyle/parameter_editor/line_style>`,
through various methods.


.. figure:: /images/render-freestyle-BasicEdgeTypeSelectionEx.jpg
   :width: 600px

   Examples of some basic edge types by LightBWK
   (`File:EdgeType.zip <http://wiki.blender.org/index.php/File:EdgeType.zip>`__)


Selection by Visibility
=======================

There are three choices for selecting edges by visibility.

Visible
   Only lines occluded by no surfaces are rendered.

Hidden
   Lines occluded by at least one surface are rendered.


.. figure:: /images/render-freestyle-Hidden_Edges.jpg
   :width: 600px

   Proof of concept of visible and hidden edges by LightBWK
   (`Sample .blend <http://wiki.blender.org/index.php/File:HiddenCreaseEdgeMark.zip>`__)


QI Range
   QI stands for *Quantitative Invisibility*. Lines occluded by a number of surfaces in the given range are rendered.

Start and End
   Only with *QI Range*, min/max number of occluding surfaces for a line to be rendered.


.. figure:: /images/render-freestyle-QI_Range.jpg
   :width: 600px

   QI Range proof of concept demo, Start: 3, End: 7, by LightBWK
   (`Sample .blend <http://wiki.blender.org/index.php/File:QI-Range.zip>`__)


Selection by Edge Types
=======================

Edge types are basic algorithms for the selection of lines from geometry. When using the
parameter editor you have to choose at least one edge type in order to get a render output,
but several edge types can be combined in one line set.
Edge types can also be excluded from calculation by pressing the *X* next to them.

Silhouette
   Draws silhouettes around your closed objects; it is often good for organic objects (like Suzanne & Sphere),
   and bad for sharp edges, like a box. It can't render open mesh objects like open cylinders and flat planes.
   The output is affected by the *Kr Derivative Epsilon* viewmap setting.

Crease
   Shows only edges whose adjacent faces form an angle greater than the defined viewmap's *Crease Angle*.


.. figure:: /images/render-freestyle-CreaseConcept.jpg
   :width: 600px

   Crease Angle proof of concept for 121º by LightBWK
   ( `the .blend file <http://wiki.blender.org/index.php/File:CreaseAngle.zip>`__)


Border
   Border is for open/unclosed edge meshes; an open cylinder has an open edge at the top and bottom,
   and a plane is open all around. Suzanne's eye socket is an open edge. All open edges will have lines rendered.
   This depends on the mesh structure.

Edge Marks
   Renders marked edges. See
   `Edge Marks`_ for details.

Contour
   Draws the outer edges and inner open border.

External Contour
   Draws the contour lines, but only on the outer edges.


.. figure:: /images/render-freestyle-ContourVsExternalContour.jpg
   :width: 600px

   Left pair: Contour; Right pair: External Contour


Suggestive Contour
   Draws some lines which would form the contour of the mesh if the viewport was shifted.
   Depends on your viewmap settings for *Kr Derivative Epsilon* and *Sphere Radius*
   (further information: `File:Manual-2.6-Render-Freestyle-PrincetownLinestyle.pdf
   <http://wiki.blender.org/index.php/File:Manual-2.6-Render-Freestyle-PrincetownLinestyle.pdf>`__).

Material Boundary
   Draws lines where two materials meet on the same object. Must be activated in the viewmap settings.

Ridge & Valley
   Draws ridges and valleys. Depends on your *Sphere Radius* viewmap settings.


Edge Marks
----------

.. figure:: /images/freestyle-mark-freestyle-edge.jpg

   Select and mark Freestyle edges.


.. figure:: /images/freestyle-edge-mark.jpg

   Edge Mark setting in the Line Sets tab.


In edit mode you can mark "Freestyle Edges" in the same manner you can mark "Seams" for UV
unwrapping or "Sharp" for edge split.
These marked edges are available to render when you select *Edge Mark*.

This is done as follows:

- Select your mesh and tab into *Edit* mode.
- Select the edges you want to be marked.
- Press :kbd:`Ctrl-E` and select *Mark Freestyle Edge*.

Edge marks are useful when you want to draw lines along particular mesh edges.
The examples below explain the use of edge marks.

.. list-table::

   * - .. figure:: /images/freestyle-edge-marks-viewport.jpg

          Marking Freestyle Edges in edit mode.

     - .. figure:: /images/freestyle-edge-marks-disabled.jpg

          Render without Edge Marks.

     - .. figure:: /images/freestyle-edge-marks-enabled.jpg

          Render with Edge Marks enabled.


The image on the left shows a sphere in *Edit* mode.
The green lines are the edge marks. On the right you see a render without edge marks enabled.

With edge marks enabled, the previously-marked lines are always rendered.
You can see the black contour lines and the blue lines that are made with edge marks.

What are edge marks good for?

- When you need to render marks on an almost-flat plane, when other edge types can't detect any line.
- When you want full control of edge rendering. Often used for edges of squarish shapes.
- Mark the whole base mesh to be rendered for base mesh preview.

What are edge marks not good for?

- Round outer edges (use instead *Contour* / *External Contour* / *Silhouette*).


Selection by Face Marks
=======================

.. figure:: /images/freestyle-mark-freestyle-face.jpg

   Mark Freestyle Faces.


To set a face mark:

- Select a mesh and tab into *Edit* mode.
- Select the faces you want to be marked.
- Press :kbd:`Ctrl-F` and select *Mark Freestyle Face*.

Face marks are useful for removing lines from certain areas of a mesh.

In this example, two faces of the default cube are marked like the image on the left.
On the right is a render without face marks activated.

.. list-table::

   * - .. figure:: /images/freestyle-face-marks-viewport.jpg

          Marked Faces.

     - .. figure:: /images/freestyle-face-marks-disabled.jpg

          Render Output.


.. figure:: /images/freestyle-face-mark.jpg

   Face mark options.


The line selection can be controlled via inclusion and faces options:

Inclusive / Exclusive
   Whether to include or exclude edges matching defined face mark conditions from the line set.

One Face
   (De)select all edges which have one or both neighbor faces marked.

Both Faces
   (De)select all edges which have both of their neighbor faces marked.

The image below shows the resulting combinations.

.. list-table::

   * - .. figure:: /images/freestyle-face-mark-inclusive-one.jpg

          Inclusive, One Face.

     - .. figure:: /images/freestyle-face-mark-inclusive-both.jpg

          Inclusive, Both Faces.


.. list-table::

   * - .. figure:: /images/freestyle-face-mark-exclusive-one.jpg

          Exclusive, One Face.

     - .. figure:: /images/freestyle-face-mark-exclusive-both.jpg

          Exclusive, Both Faces.


Selection by Group
==================

You can include or exclude objects for line calculation, based on their belonging to a group.

Group
   The name of the object group to use.

Inclusive / Exclusive
   Whether to include or exclude lines from those objects in this line set.


Selection by Image Border
=========================

If enabled,
Freestyle only takes geometry within the image border into consideration for line calculation.
This reduces render times but increases continuity problems when geometry is moved out of and
into camera view.
