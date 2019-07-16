.. _bpy.types.LineStyleGeometryModifier_GuidingLines:

*************
Guiding Lines
*************

The *Guiding Lines* modifier replaces a stroke by a straight line connecting both of its ends.

.. figure:: /images/render_freestyle_parameter-editor_line-style_modifiers_geometry_guiding-lines.png

Offset
   Offset the start and end points along the original stroke, before generating the new straight one.

This modifier will produce reasonable results when strokes are short enough,
because shorter strokes are more likely to be well approximated by straight lines.
Therefore, it is recommended to use this modifier together with one of the splitting options
(by 2D angle or by 2D length) from the *Strokes* panel.

.. figure:: /images/render_freestyle_parameter-editor_line-style_modifiers_geometry_guiding-lines-example.png
   :width: 430px

   Guiding Lines modifier Demo by T.K.
   `File:Toycar_Guiding_Line.zip <https://wiki.blender.org/wiki/File:Toycar_Guiding_Line.zip>`__.
