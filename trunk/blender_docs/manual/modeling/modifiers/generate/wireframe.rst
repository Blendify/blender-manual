.. _bpy.types.WireframeModifier:

******************
Wireframe Modifier
******************

The Wireframe Modifier transforms a mesh into a wire-frame by iterating over its
faces, collecting all edges and turning those edges into four sided polygons.
Be aware of the fact that your mesh needs to have faces to be wire-framed.
You can define the thickness, the material and several other parameters of the generated
wire-frame dynamically via the given modifier options.


Options
=======

.. figure:: /images/modeling_modifiers_generate_wireframe_panel.png

   Wireframe Modifier.

Thickness
   The depth or size of the wire-frames.
Offset
   A value between (-1 to 1) to change whether the wire-frames are
   generated inside or outside the original mesh.
   Set to zero, *Offset* will center the wire-frames around the original edges.
Vertex Group
   Restrict the modifier to only this vertex group.

   Invert
      Inverts the vertex group weights.
   Factor
      Percentage that the vertex has influence over the final wire-frame result.

Crease Edges
   This option is intended for usage with the :doc:`Subdivision Modifier </modeling/modifiers/generate/subsurf>`.
   Enable this option to crease edges on their junctions and prevent large curved intersections.

   Crease Weight
      Define how much crease (0 to 1) (no to full) the junctions should receive.
Even Thickness
   Maintain thickness by adjusting for sharp corners. Sometimes improves quality but also increases computation time.
Relative Thickness
   Determines the edge thickness by the length of the edge. Longer edges will be thicker.
Boundary
   Creates wire-frames on mesh island boundaries.
Replace Original
   If this option is enabled, the original mesh is replaced by the generated wire-frame.
   If not, the wire-frame is generated on top of it.
Material Offset
   Uses the chosen material index as the material for the wire-frame;
   this is applied as an offset from the first material.

.. warning::

   Wire-frame thickness is an approximation. While *Even Thickness* should yield good results in many cases,
   skinny faces can cause ugly spikes. In this case you can either reduce the extreme angles in the geometry
   or disable the *Even Thickness* option.


Examples
========

.. figure:: /images/modeling_modifiers_generate_wireframe_result.jpg
   :width: 420px

   Wireframes on a displaced plane.

In this example, the wire-frames carry a second (dark) material while the displaced plane uses its original one.

.. figure:: /images/modeling_modifiers_generate_wireframe_example-weights.png
   :width: 420px

   Vertex Group weighting.

The weights of the vertex group gradually change from 0 to 1.

.. figure:: /images/modeling_modifiers_generate_wireframe_example-crease.png
   :width: 420px

   Wireframe and Subdivision Surface modifier.

Cube with enabled *Crease Edges* option. The *Crease Weight* is set to 0, 0.5 and 1.
