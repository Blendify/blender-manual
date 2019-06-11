
************
Introduction
************

Rendering is the process of turning a 3D scene into a 2D image.
Blender includes three render engines with different strengths:

- :doc:`Eevee </render/engines/eevee/index>` is a physically based realtime renderer.
- :doc:`Cycles </render/engines/cycles/index>` is a physically based path tracer.
- :doc:`Workbench </render/engines/workbench/index>` is designed for layout, modeling and previews.

More renderers from third-party developers are available as
:doc:`add-ons </editors/preferences/addons>`.
Each renderer has its own render settings to control render quality and performance.

What the render looks like is defined by :doc:`cameras </render/cameras>`,
:doc:`lights </render/lights>` and :doc:`shaders </render/shaders/index>`.
These are shared between Eevee and Cycles, however some features are only supported in one or the other.

Renders can be split up into :doc:`layers and passes </render/layers/index>`, which can then
be :doc:`composited </compositing/index>` together for creative control, or to combine
with real footage.

Blender supports interactive 3D viewport rendering for all render engines, for quick iteration
to get the lights and shading right. Once this is done, the final quality image or animation can
be rendered and :doc:`output </render/output/index>` to disk.
