
*************
Render Layers
*************

This section covers only the Render Layer settings appropriate for the Blender Render engine.
For the engine-independent settings, see :doc:`this section </render/post_process/layers>`.

Light Override
   Enter the name of a light group, and the scene will be lit with only those lights.

   Examples of where this might be used:

   - Using multiple Render Layers with different light group overrides
     adds the possibility to tweak light intensity and color in the compositor,
     i.e. to avoid re-renders.
   - Speed up a draft render by using only a few lights instead of all of them.


Include Options
===============

Each render layer has its own set of features which can be enabled/disabled for the whole layer.
This could be used to save render time and gives control over the passes:

Z-mask
   Activates masking with the selected Mask Layers. Only render what is in *front* of the solid Z values.

   Negate
      Only render what is *behind* the solid Z values.
All Z
   Z-values are computed for everything in view, not just those things that are rendered. When disabled,
   objects not included in the render have no ("infinite") z value.
Solid
   Solid faces are rendered. All normal meshes are solid faced.
Halo
   Halo materials are rendered.
Z-Transparency
   Transparency may be Z-based or Ray-traced. If Z-based, enabling *Z-transparency* renders
   transparent areas with the z-value of what is behind the transparent area.
Sky
   Turning on Sky renders the sky, as defined in your material world settings. Otherwise,
   a black alpha transparent background is rendered.
Edge
   If Edge is enable in the Post Processing panel, objects in this Render Layer are given an outline edge.
   Turning on Edge pulls in the Edge settings from the Render tab, and adds an outline to the objects.
   Edges also have to be enabled on the Render tab.
Strand
   Strands are strings of static particles that are colored as part of the material settings;
   they look like strands of hair or grass.
Freestyle
   Render the Freestyle strokes on this layer.
