.. index:: pair: Modifier; Edge Split

*******************
Edge Split Modifier
*******************

The Edge Split modifier splits edges within a mesh.
The edges to split can be determined from the edge angle (i.e. angle between faces forming this edge),
and/or edges marked as sharp.

Splitting an edge affects vertex normal generation at that edge, making the edge appear sharp.
Hence, this modifier can be used to achieve the same effect as :ref:`Auto Smooth <auto-smooth>`,
making edges appear sharp when their angle is above a certain threshold.
It can also be used for manual control of the smoothing process,
where the user defines which edges should appear smooth or sharp
(see :doc:`Mesh Smoothing </modeling/meshes/editing/smoothing>` for other ways to do this).
If desired, both modes can be active at once.

The output of the Edge Split modifier is available to export scripts,
making it quite useful for creators of game content.


Options
=======

.. figure:: /images/reference-panels-modifier-edgesplit.jpg

   Edge Split modifier.


Edge Angle
   When enabled, edges will be split if the angle between its
   two adjacent faces is greater than the *Split Angle*.

   Split Angle
      On 0: all edges are split. On 180: no edges are split.

Sharp Edges
   When enabled, edges will be split if they were marked as sharp using :menuselection:`Edge Specials --> Mark Sharp`
   (Menu shortcut: :kbd:`Ctrl-E` in Edit Mode).

.. note::

   :term:`Non-manifold` edges (edges shared by more than two faces) will always be split.


Examples
========

.. figure:: /images/modifier-edgesplit-example01.jpg

   Edge Split modifier output with From Marked As Sharp selected.

.. figure:: /images/edge_split_to_improve_smooth_shading.jpg

   (From Left to right): Flat Shading, Smooth Shading, Smooth Shading with Edge Split.

.. note::

   Splitting edges can also be performed manually in Edit Mode using:
   :menuselection:`Edge Specials --> Edge Split` (Menu shortcut: :kbd:`Ctrl-E`).
