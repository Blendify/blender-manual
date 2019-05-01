. _bpy.types.WeightedNormalModifier:

********************************
Weighted Normal Modifier
********************************

This modifier changes the custom normals of a mesh, using various methods that can be
specified using options.
This can be useful to make some faces appear very flat during shading, among other effects.
See :doc:`Normals </modeling/meshes/editing/normals>` for a description of normals
and custom normals.

.. note::

   This modifier requires custom normals to be enabled, which you can do by
   enabling Auto Smooth in the Mesh Properties panel.
   See :doc:`Normals </modeling/meshes/editing/normals>`.


Options
=======

Weighting Mode
   The normals around a vertex will be combined to make a custom (per-face-at-a-vertex) normal
   using various weights for each. The *Weighting Mode* says how to get the weights.

   Face Area
      Weight according to the area of the face that the normal comes from. A larger area means
      that the normal will get a higher weight.

   Corner Angle
      Weight according to the angle each face makes at the vertex. This is the method blender
      uses by default when combining normals at a vertex.

    Face Area and Angle
       Weights are obtained by multiplying the face area and corner angle.
 
 Weight
    Determines how strongly the weights are biased according to the face areas and/or corner angles.
    A value of 50 means all faces are weighted equally.
    More than 50 means faces with higher area or angles are given even more weight.
    Less than 50 means faces with higher area or angles are given lesser weights.

Threshold
   A weight-rounding threshold: if two angles or areas differ by less than the threshold
   then they will get equal weights.

Vertex Group
   If a vertex group is specified here, the modifier will only affect those vertices.
   There is a button beside the name selection widget that will invert the effect:
   selecting that will affect only the vertices *not* in the vertex group.

Keep Sharp
   This option tells the modifier to respect sharp edges, though smoothing will still happen
   if there are multiple faces between any two sharp edges.

Face Influence
   Use face weights (weak, medium, or strong) as assigned by Custom Normal Tools or
   by the *Set Strength Mode* of a Bevel modifier.
   For example, if three faces meet at a vertex and have face weights weak, medium, and strong,
   then only the normal associated with the strong face will be used to set the final result.
   See the Set Strength command in :doc:`Normals </modeling/meshes/editing/normals>`
   for how to set the face strengths.
