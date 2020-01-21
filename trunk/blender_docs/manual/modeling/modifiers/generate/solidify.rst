.. _bpy.types.SolidifyModifier:

*****************
Solidify Modifier
*****************

The *Solidify* modifier takes the surface of any mesh and adds depth, thickness to it.


Options
=======

.. list-table::

   * - .. figure:: /images/modeling_modifiers_generate_solidify_panel_simple.png

          The Solidify modifier in simple mode.

     - .. figure:: /images/modeling_modifiers_generate_solidify_panel_complex.png

          The Solidify modifier in complex mode.


Mode Independent Properties
---------------------------

Thickness
   The depth to be solidified.
Offset
   A value between (-1 to 1) to locate the solidified output inside or outside the original mesh.
   The inside and outside is determined by the face normals.
   Set to 0.0, the solidified output will be centered on the original mesh.
Clamp
   A value between (0 to 2) to clamp offsets to avoid self-intersection.
   The amount is determined by the length of the shortest adjacent edge.

   .. figure:: /images/modeling_modifiers_generate_solidify_clamp.png

      Clamp Offset.

   Angle Clamp
      If enabled clamping will also consider angles in the geometry, not only lengths.

Vertex Group
   Only vertices in this group are solidified. Their weights are multiplied by the thickness,
   so vertices with lower weights will be less thick.

   Invert
      Reverses the vertex group, so that only vertices which are **not** in the vertex group are solidified.
   Factor
      How much the vertex weights are taken into account.

      - On 0.0 , vertices with zero weight will have no thickness at all (creates duplicate vertices).
      - On 0.5 , vertices with zero weight will be half as thick as those with full weight.
      - On 1.0 , the weights are ignored and the *Thickness* value is used for every vertex.

Flip Normals
   Reverse the normals of all geometry (both the inner and outer surfaces).
Fill Rim
   Fills the gap between the inner and outer edges.
Only Rim
   In *Simple Mode*: Will not extrude surfaces parallel to the original one,
   but instead will only add the perpendicular rim.

   In *Complex Mode*: Will only leave the generated perpendicular rim.

.. note::

   *Fill Rim* and *Only Rim* only make a difference on :term:`non-manifold` objects,
   since the rims are generated from the borders of the original geometry.

Material Index Offset
   Choose a different material to use for the new geometry.
   This is applied as an offset from the original material of the face from which it was solidified.

   - A value of 0 means it will use the same material.
   - A value of 1 means it will use the material immediately below the original material.
   - A value of -2 means the material two positions above the original material will be used.

   These are clamped to the top-most and bottom-most material slots.

   Rim
      Similarly, you can give another material to the rim faces.


Simple Mode
-----------

This is the default solidify algorithm, which simply extrudes the geometry.
This algorithm does not work on geometry where edges have more than two adjacent faces.

Crease
   These options are intended for usage with
   the :doc:`Subdivision Surface </modeling/modifiers/generate/subdivision_surface>` modifier.

   .. figure:: /images/modeling_modifiers_generate_solidify_rims.png
      :width: 250px

      Edges which will get creases marked.

   Inner
      Set a crease to the inner edges.
   Outer
      Set a crease to the outer edges.
   Rim
      Set a crease to the rim.
Even Thickness
   Maintain thickness by adjusting for sharp corners.
   Sometimes improves quality but also increases computation time.
High Quality Normals
   Normals are calculated to produce a more even thickness.
   Sometimes improves quality but also increases computation time.

.. important::

   If the normals of adjacent faces don't point into the same general direction, simple mode
   will not be able to solidify the boundary between those. This happens if the normals
   are not recalculated or for example on one-sided surfaces like a Möbius strip.


Complex Mode
------------

This is a new solidify algorithm which can handle every geometric situation to guarantee a manifold output geometry.
This algorithm is able to solidify shapes like Möbius strips, Klein bottles, architectural wall layouts and many more
which the standard implementation isn't able to do. If the special cases are not present it is recommended to
choose *Simple Mode* because the extra logic makes this algorithm much slower.

.. note::

   There are no options for crease in the Modifier tab because crease is handled in a dynamic way.
   The modifier will transfer the creases of the original mesh in a smart way to the output mesh to
   work with the :doc:`Subdivision Surface </modeling/modifiers/generate/subdivision_surface>` modifier.

Thickness Mode
   Choose the kind of thickness handling (thickness solver)

   .. figure:: /images/modeling_modifiers_generate_solidify_thickness_mode.png

      Different thickness options on a non-manifold mesh.

   Fixed
      This is similar to *Simple Mode* without *Even Thickness*.
      The new vertices are always in a fixed distance to the old ones.
   Even
      This is similar to *Simple Mode* with *Even Thickness* and *High Quality Normals*.
      It adjusts for sharp corners, but may not always work when more than three faces come together.
   Constraints
      This is a more advanced model to try to always get the perfect thickness everywhere.
      For up to three faces it is always guaranteed to find a perfect solution.

Boundary Shape
   Choose the kind of boundary that suits the model the most.

   .. figure:: /images/modeling_modifiers_generate_solidify_boundary_shape.png

      Different boundary options with a matCap.

   None
      No boundary fix is applied. Results are stable.
   Round
      Adjusts the boundary for an opening to face inwards (like a hole in an egg).
   Flat
      Adjusts the boundary of a planar opening to be a flat (like a cut sphere).

.. important::

   The modifier thickness is calculated using local vertex coordinates. If the object has non-uniform scale,
   the thickness will vary on different sides of the object.

   To fix this, either :ref:`Apply <bpy.ops.object.transform_apply>`
   or :ref:`Clear <bpy.ops.object.*clear>` the scale.


Known Limitations
=================

Even Thickness
--------------

Solidify thickness is an approximation.
While *Even Thickness* and *High Quality Normals* should yield good results,
the final wall thickness is not guaranteed and may vary depending on the mesh topology.
Especially for vertices with more than three adjacent faces.

In order to maintain a precise wall thickness in every case, we would need to add/remove faces on
the offset shell, something this modifier does not do since this would add a lot of complexity.
The best option to preserve wall thickness is complex mode with constraints thickness mode,
but it is also not guaranteed to work perfect in every case.
