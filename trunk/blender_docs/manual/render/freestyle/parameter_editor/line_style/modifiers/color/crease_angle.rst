.. _bpy.types.LineStyle*Modifier_CreaseAngle:
.. Editors Note: This page gets copied into:
   :doc:`</render/freestyle/parameter_editor/line_style/modifiers/alpha/crease_angle>`
   :doc:`</render/freestyle/parameter_editor/line_style/modifiers/thickness/crease_angle>`
.. --- copy below this line ---

************
Crease Angle
************

A modifier based on the Crease Angle (angle between two adjacent faces).
If a stroke segment does not lie on a crease (i.e. the edge does not have the *Crease Angle nature*),
its properties are not touched by the modifier.

.. TODO2.8.
   .. figure:: /images/render_freestyle_parameter-editor_line-style_modifiers_properties_alpha-crease-angle.png

      Crease Angle Modifier.

Min Angle and Max Angle
   The range of input values to the mapping.
   Out-of-range crease angle values will be clamped by
   the Min and Max angles and their corresponding property values.

.. figure:: /images/render_freestyle_parameter-editor_line-style_modifiers_properties_color-crease-angle-example.png
   :width: 430px

   Crease Angle modifier demo by T.K.
   `File:Render_freestyle_modifier_crease_angle.blend
   <https://wiki.blender.org/uploads/b/b4/Render_freestyle_modifier_crease_angle.blend>`__.
