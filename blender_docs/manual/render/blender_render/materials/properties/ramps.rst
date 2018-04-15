
***********
Color Ramps
***********

.. admonition:: Reference
   :class: refbox

   :Mode:      All Modes
   :Panel:     :menuselection:`Material --> Ramps`

On many real-world materials, like skin or metals,
the color of diffuse and specular reflections can differ slightly,
based on the amount of energy a surface receives or on the light angle of incidence.
The *Ramp Shader* options in Blender allow you to set a range of colors for a *Material*,
and define how the range will vary over a surface, and how it blends with the 'actual color'
(typically from a material or as output of a texture).

Ramps allow you to precisely control the color gradient across a material,
rather than just a simple blend from a brightened color to a darkened color,
from the most strongly lit area to the darkest lit area.
As well as several options for controlling the gradient from lit to shadowed,
ramps also provide 'normal' input,
to define a gradient from surfaces facing the camera to surfaces facing away from the camera.
This is often used for materials like some types of metallic car paint that change color based
on viewing angle.

Since texture calculations in Blender happen before shading,
the *Ramp Shader* can completely replace texture or material color. But by use of
the mixing options and Alpha values it is possible to create an additional layer of shading in
Blender materials.


Options
=======

.. figure:: /images/render_blender-render_materials_properties_ramps_panel.png

   Ramps panel.

For the first part of the color ramp option see :ref:`ui-color-ramp-widget`.

Input
   The input menu contains the following options for defining the gradient:

   Shader
      The value as delivered by the material's shader (*Lambert*, *Cook-Torrance*) defines the color.
      Here the amount of light does not matter for color, only the direction of the light.
   Energy
      As *Shader*, now also lamp energy, color, and distance are taken into account.
      This makes the material change color when more light shines on it.
   Normal
      The surface normal, relative to the camera, is used for the *Ramp Shader*.
      This is possible with a texture as well, but added for convenience.
   Result
      While all three previous options work per lamp, this option only works after shading calculations.
      This allows full control over the entire shading, including 'Toon' style results.
      Using alpha values here is most useful for tweaking a finishing touch to a material.
Blend
   A list of the various :term:`Color Blend Modes` are
   available for blending the ramp shader with the color from *Input*.
Factor
   This slider denotes the overall factor of the ramp shader with the color from *Input*.
