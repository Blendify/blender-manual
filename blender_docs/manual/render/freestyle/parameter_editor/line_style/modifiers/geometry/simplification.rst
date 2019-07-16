.. _bpy.types.LineStyleGeometryModifier_Simplification:

**************
Simplification
**************

The *Simplification* modifier merges stroke vertices that lie close to one another,
like the *Decimate* modifier for meshes.

.. figure:: /images/render_freestyle_parameter-editor_line-style_modifiers_geometry_simplification.png

Tolerance
   Measure for how close points have to be to each other to be merged.
   A higher tolerance means more vertices are merged.

.. figure:: /images/render_freestyle_parameter-editor_line-style_modifiers_geometry_simplification-example.png
   :width: 600px
   :align: center
