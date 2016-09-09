
************
Introduction
************

Vertex Painting is a simple way of painting color onto an object,
by directly manipulating the color of vertices, rather than textures,
and is fairly straightforward.

When a vertex is painted,
the color of the vertex is modified according to the rules of the 'brush'. The color of all
visible planes and edges attached to the vertex are then modified with a gradient to the color
of the other connected vertices. (Note that the color of non-visible faces are not modified).

Vertex colors can be painted by first going into Edit Mode, then switching to *Vertex Paint Mode*;
however, it will not show up in the render unless you check *Vertex Color Paint* in the
:doc:` Materials Options </render/blender_render/materials/properties/options>` panel.

.. figure:: /images/materials_vertexpaint0.jpg

   Vertex Painting Mode.

.. figure:: /images/vertexpaintmat.jpg

   Check this box.
