.. _bpy.types.SceneRenderLayer:
.. _bpy.types.RenderLayer:
.. _render-layers:

***********
View Layers
***********

Renders can be separated into layers, to composite them back together afterwards.

Some example usages are applying compositing effects to characters separately,
blurring the background and foreground layers separately for depth of field,
or rendering different lighting variations of the same scene.

Using View Layers can also save you from having to re-render your entire image each time you change something,
allowing you to instead re-render only the layer(s) that you need.


Layer List
==========

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Properties editor --> Scene --> Scene`

.. figure:: /images/render_post-process_layers_list.png

   Layer list.

This is a list of all the View Layers in the current scene.

Only layers which are enabled (checkbox on right is ticked) will be rendered.
If the pin icon at the bottom right of the list is enabled, only the active (highlighted) layer will be rendered.

View Layers can be added and removed using the ``+`` and ``-`` buttons on the right,
and existing layers can be renamed by double-clicking on their name.


Layer Panel
===========

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Properties editor --> Scene --> Layer`

.. figure:: /images/render_post-process_layers_panel.png

   Layer panel.

The Layer Panel shows the settings of the active Render Layer from the list above.

You can select multiple layers using :kbd:`Shift-LMB`.

Scene
   The Scene Layers, showing which are currently visible and will be rendered.
Layer
   The Scene Layers which are associated with the active Render Layer.
   Objects in those Scene Layers will be rendered in that Render Layer.
   When an object is in the Scene Layers but not the Render Layer,
   it will still cast shadows and be visible in reflections, so it is still indirectly visible.
Mask Layer
   Objects on these will mask out other objects appearing behind them.
   This can be used for compositing objects into footage,
   to take into account objects in front of the virtual objects blocking the view from the camera.
Material Override
   Overrides all material settings to use the Material chosen here.

   Examples of where this might be used:

   - To check lighting by using a plain diffuse material on all objects.
   - Render a wireframe of the scene.
   - Create a custom render pass such as an anti-aliased matte or global coordinates.

.. seealso::

   Additional options shown in this panel are different for each render engine. See these options for:

   - :doc:`Cycles </render/layers/passes>`


Usage
=====

Each Render Layer has an associated set of :doc:`Scene Layers </scene_layout/object/properties/relations/layers>`.
Objects which are on one of the associated Scene Layers are shown in that Render Layer,
as long as that Scene Layer is also visible.

.. warning::

   Only the objects in visible Scene Layers will be rendered.
   So, if only Scene Layer 1 is visible and your Render Layer set specifies to render only Layers 2 and 3,
   nothing will be rendered.

.. TODO2.8 integrate content below with content above.


*************
Cycles Layers
*************

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`View Layers --> Layer`

This section covers only the Render Layer settings appropriate for the Cycles renderer.
For the engine-independent settings,
see :ref:`this section <render-layers>`.


View Layer
==========

Exclude
   Scene layers are shared between all render layers;
   however, sometimes it is useful to leave out some object influence for a particular render layer.


Filter
======

Use Environment
   Disables rendering the *Environment* render pass in the final render.
Use Ambient Occlusion
   Disables rendering the *Ambient Occlusion* render pass in the final render.
Use Surfaces
   Disables rendering object materials in the final render.
Use Hair
   Disables rendering hair strands in the final render.
Use Freestyle
   Todo 2.8.


Override
========

Material
   Overrides all materials in the render layer.
Samples
   View layer samples to override the scene samples.
   Controlled by the :ref:`layer samples <render-cycles-integrator-layer-samples>` in the sampling panel.
