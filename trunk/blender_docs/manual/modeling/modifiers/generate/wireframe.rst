
******************
Wireframe Modifier
******************

The Wireframe modifier transforms a mesh into a wireframe by iterating over its
faces, collecting all edges and turning those edges into four sided polygons.
Be aware of the fact that your mesh needs to have faces to be wireframed.
You can define the thickness, the material and several other parameters of the generated
wireframe dynamically via the given modifier options.


Options
=======

.. figure:: /images/modifier_wireframe.jpg

   Wireframe Modifier.


Thickness
   The depth or size of the wireframes.
Offset
   A value between (-1 to 1) to change whether the wireframes are
   generated inside or outside the original mesh.
   Set to zero, *Offset* will center the wireframes around the original edges.
Vertex Group
   Restrict the modifier to only this vertex group.

   Invert
      Inverts the vertex group weights.


.. figure:: /images/modifier_wireframe_result.jpg
   :width: 350px

   Wireframes on a displaced plane.
   In this example, the wireframes carry a second (dark) material while the displaced plane uses its original one.


Crease Edges
   This option is intended for usage with the :doc:`Subdivision Modifier </modeling/modifiers/generate/subsurf>`.
   Enable this option to crease edges on their junctions and prevent large curved intersections.

   Crease Weight
      Define how much crease (0 to 1) (no to full) the junctions should receive.
Even Thickness
   Maintain thickness by adjusting for sharp corners. Sometimes improves quality but also increases computation time.
Relative Thickness
   Determine edge thickness by the length of the edge - longer edges are thicker.
Boundary
   Creates wireframes on mesh island boundaries.
Replace Original
   If this option is enabled, the original mesh is replaced by the generated wireframe.
   If not, the wireframe is generated on top of it.
Material Offset
   Uses the chosen material index as the material for the wireframe;
   this is applied as an offset from the first material.


Examples
========

When you got more Faces that meet at one point they are forming a star like pattern like seen
in the examples below.


.. figure:: /images/CubeWireframes.jpg

   Original / Wireframe / Original+Wireframe.


.. figure:: /images/modifier_wireframe_example.jpg

   VGroup weighting: One half 0 weighted, one half 1 weighted.


.. figure:: /images/modifier_wireframe_crease-weight.jpg

   Cube+Subsurf with 0 / 0.5 / 1 crease weight.


.. warning::

  Wireframe thickness is an approximation. While *Even Thickness* should yield good results in many cases,
  skinny faces can cause ugly spikes. In this case you can either reduce the extreme angles in the geometry
  or disable the *Even Thickness* option.
