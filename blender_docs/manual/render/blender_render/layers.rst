
*************
Render Layers
*************

This section covers only the Render Layer settings appropriate for the Blender Render engine.
For the engine-independent settings, see :doc:`this section </render/post_process/layers>`.

Light Override
   Enter the name of a light group, and the scene will be lit with only those lights.

   Examples of where this might be used:

   - Using multiple Render Layers with different light group overrides can
     allow you to tweak light intensity and color in the compositor (avoiding re-renders).
   - Speed up a draft render by using only a few lights instead of all of them.


Include Options
===============

Each render layer has its own set of features which can be enabled/disabled to save time and
give you control when working with passes:

Zmask
   Only render what's in front of the solid Z values.

   Negate
      Only render what's Behind the solid Z values.
All Z
   Z-values are computed for everything in view, not just those things that are rendered. When disabled,
   objects not included in the render have no ("infinite") z value.
Solid
   Solid faces are rendered. All normal meshes are solid faced.
Halo
   Halo materials are rendered.
ZTransp
   Transparency may be Z-based or Ray-traced. If Z-based,
   enabling *Ztra* renders transparent areas with the z-value of what is behind the transparent area.
Sky
   Turning on Sky renders the sky, as defined in your material world settings. Otherwise,
   a black alpha transparent background is rendered.
Edge
   If Edge is enable in the Output panel, objects in this Render Layer are given an outline edge.
   Turning on Edge pulls in the Edge settings from the Output tab, and adds an outline to the objects.
   Edges also have to be enabled on the Output tab.
Strand
   Strands are strings of static particles that are colored as part of the material settings;
   they look like strands of hair or grass.
Freestyle
   Render the Freestyle strokes on this layer.
