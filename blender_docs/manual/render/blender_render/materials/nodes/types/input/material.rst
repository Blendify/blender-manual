
*************
Material Node
*************

.. admonition:: Reference
   :class: refbox

   | Panel:    :doc:`Node Editor </editors/node_editor/editor>` -->
               :doc:`Material Nodes </render/blender_render/materials/nodes/index>`
   | Menu:     :kbd:`Shift-A` --> Input --> Material


.. figure:: /images/render_bi_material-node.jpg

   Material node.


The Material node is used to add a material to the node program.
Materials can be anything from pure shading to fully layered with textures.
It inputs the main attributes of a material (color, alpha and normal vector) into the map.


Output
======

Materials can output color (which includes shading and any textures assigned to it), alpha,
and the final normal calculated from any textures it has.

Color
   value of the color, combined by the node.
Alpha
   value of the alpha, combined by the node.
Normal
   direction of the normal, combined by the node.


Input
=====

Materials can take inputs for colors, inputs for diffuse color and specularity color,
a value for reflectivity, and a normal.


Color
   The base color of the paint. Can be set

   - manually by :kbd:`LMB` clicking on the color swatch applet next to the socket,
     choosing a color using the control panel that pops up, and pressing :kbd:`Return`
   - based on an Active Material which is specified using the material panels, or
   - plugged in from an RGB color generator.
Spec
   The color that is reflected as you get perpendicular to the light source reflecting off the surface.
   The color can be

   - plugged in from another node or...
   - set manually by :kbd:`LMB` clicking on and using the color swatch applet.
Refl:
   The degree to which the material reflects light and gives off its color.
   The value can be provided by another node or set manually.
Normal
   The lighting condition.


Controls
========

Material field
   You can browse and select materials here.
Diffuse toggle
   Turn on/off Diffuse Color.
Specular toggle
   Turns on/off Specularity calculation.
Invert Normal toggle
   Inverts the material input normal when activated
   (which, of course, is a combination of the 3D normal given to it by the 3D object plus the normal input point).


.. note:: Normal Override

   The normal input socket does not in any way blend the source normal with the underlying geometry.
   Any plugged in Geometry here overrides the Normal lighting conditions.


Using the Material Node with Specularity
========================================

.. figure:: /images/render_bi_material-node-specular.jpg
   :width: 250px

   Material Node using Specularity.


To make a material node actually generate a color,
you have to specify at least a basic input color, and optionally a specularity color.
The specularity color is the color that shines under intense light.

For example, consider the mini-map to the right. The base color, a dark blue,
is connected from an RGB color generator node to the *Color* input socket.
The specular color, yellow, is connected to the *Spec* input.
Under *Normal* lighting conditions on a flat surface,
this material will produce a deep blue color and,
as you approach a spot perpendicular to the light,
you will see the yellow specular color mix in.

.. note:: Enable Spec

   To see specularity, you have to enable it by clicking the blue Spec button
   located just below the material color swatch in the node.

