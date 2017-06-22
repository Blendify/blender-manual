.. _bpy.types.SceneRenderLayer:

******
Layers
******

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Properties editor --> Render Layers --> Layer`

This section covers only the Render Layer settings appropriate for the Blender Render engine.
For the engine-independent settings, see :doc:`this section </render/post_process/layers>`.

Exclude
   Scene layers are shared between all render layers;
   however, sometimes it is useful to leave out some object influence for a particular render layer.
   That is what this option allows you to do.
Material
   Overrides all materials in the render layer.
Samples
   Render layer samples to override the scene samples.
   Controlled by the :ref:`layer samples <render-cycles-integrator-layer-samples>` in the sampling panel.
Use Environment
   Disables rendering the *Environment* render pass in the final render.
Use AO
   Disables rendering the *Ambient Occlusion* render pass in the final render.
Use Surfaces
   Disables rendering object materials in the final render.
Use Hair
   Disables rendering hair strands in the final render.
