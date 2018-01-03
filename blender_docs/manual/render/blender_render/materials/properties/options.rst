
*******
Options
*******

.. figure:: /images/render_blender-render_materials_properties_options_panel.png

   Material Options panel.

This panel provides a series of control options concerning how objects using this material
will appear in the rendered image. All controls are default "Off" unless otherwise stated.

Traceable
   Include this material and the geometry that uses it in ray-tracing calculations.
   See :doc:`Transparency </render/blender_render/materials/properties/transparency>` for details of ray-tracing.
Full Oversampling
   Force this material to render full shading and textures for all
   :doc:`anti-aliasing </render/blender_render/settings/antialiasing>` samples.
Sky
   Render this material with zero alpha, but with
   :doc:`sky background </render/blender_render/lighting/lamps/sun/sky_atmosphere>` in place (scanline only).
Use Mist
   Use :doc:`mist </render/blender_render/world/mist>` on this material (see "World Settings" for more details).
Invert Z depth
   Render material's faces with an inverted Z buffer (scanline only).
Z Offset
   Give faces an artificial Z offset for Z transparency.
Light Group
   Limit lighting to lamps in this
   :doc:`light group </render/blender_render/lighting/lights/in_other_contexts>`.
Exclusive
   Uses the :doc:`light group </render/blender_render/lighting/lights/in_other_contexts>` exclusively.
   These lamps will be excluded from other scene lighting.
Local
   When linked in, uses local
   :doc:`light group </render/blender_render/lighting/lights/in_other_contexts>` with the same name.
Face Textures
   Replace object's base color with color from
   :ref:`UV map <editors-uv-image-index>` image textures.
Face Textures Alpha
   Replace object's base alpha with alpha from
   :ref:`UV map <editors-uv-image-index>` image textures.
Vertex Color Paint
   Replace object's base color with
   :ref:`vertex paint <painting-vertex-index>`
   colors (multiply with 'texture face' face assigned textures).
Vertex Color Light
   Add :ref:`vertex paint <painting-vertex-index>`
   colors as additional lighting.
   (This can be used to produce good incandescence effects).
Object Color
   Modulate the result with a per object color.
   See :doc:`Object Display panel </editors/3dview/object/properties/display>`.
UV Project
   Use to ensure UV interpolation is correct for camera projections
   (use with :doc:`UV Project Modifier </modeling/modifiers/modify/uv_project>`).
Pass Index
   Index number for the Material Index render pass.
