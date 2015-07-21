
*************
Skin Modifier
*************

The Skin modifier uses vertices and edges to create a skinned surface,
using a per-vertex radius to better define the shape.
The output is mostly quads, although some triangles will appear around intersections.

It is a quick way to generate base meshes for sculpting and/or smooth organic shapes with
arbitrary topology.

.. note::

   Faces in the original geometry are ignored by the Skin modifier.

Options
=======

.. figure:: /images/skin-ui.jpg
   :width: 300px

   Skin modifier UI.


Create Armature
   Create an armature on top of the object - each edge becomes a bone.

   .. note::

       If the root vertex has more than one adjacent edge,
       an extra bone will be created to serve as the root.

   This function does the following:


   #. A new armature object is added with bones matching the input mesh.
      The active selection is switched to the new armature.
   #. Weight groups are added to the input mesh. The Skin modifier propagates these weights to the output as well.
   #. An Armature modifier is added directly below the Skin modifier.
      Note that the Armature modifier is being applied after the
      Skin modifier because it should only deform the output,
      whereas if it were above the Skin modifier it might change the resulting topology.

Branch Smoothing
   A branch point is a vertex with three or more connected edges.
   These areas tend to produce more complicated topology, some of which may overlap.
   The *Branch Smoothing* setting relaxes the surface around these points,
   with the side effect of shrinking the surface.

Smooth Shading
   Output faces with smooth shading rather than flat shading.
   The smooth/flat shading of the input geometry is not preserved.

Selected Vertices
   Mark/Clear Loose
      By default, a branch vertex (vertex with three or more connected edges)
      will generate extra edge loops along adjacent edges in order to keep the output tight.
      Branches can be made loose by clicking *Mark Loose*, which will allow the output to stretch between
      all adjacent vertices. This can be disabled again by clicking *Clear Loose* with the vertex selected.
   Mark Root
      Marking a vertex as root causes that vertex to be used for calculating rotations for connected limbs.
      Root vertices also affect the armature output; they will be used as the origin for the root bones.

      Roots are shown in the 3D View with a red dashed circle around the vertex.

      Each set of connected vertices should have one root node.
      *Mark Root* enforces the one-root per set rule, so it is not necessary to manually unmark roots.
   Equalize Radii
      Makes the skin radii of selected vertices equal on each axis.

Symmetry Axes
   The Symmetry Axes checkboxes are used to keep the output topology symmetrical in their respective axes.
   In other words, using it avoids merging triangles across an axis unless the triangles form a symmetric quad.

   .. note::

      These symmetry axes checkboxes do not add geometry flipped across an axis.
      For that, the Mirror modifier should be used, typically placed above the Skin modifier.

Usage
=====

Add the Skin modifier to a mesh. Disable *Limit selection to visible* in the 3D view so that you can see
the vertices inside the new geometry.

The skin modifier uses ordinary vertices and edges as input.
All of the regular Edit Mode tools (such as extrude, subdivide, grab, scale, and rotate) can be used when building
a skinned mesh.

The radius of selected vertices can be adjusted in the *Transform* panel of the *Properties* region (:kbd:`N`)


Examples
========

.. figure:: /images/Skin-header-00.jpg

   Fig1: Simple creature, made with only the Skin modifier.


- In the modifiers menu, add a *Skin* modifier.
- :kbd:`Tab` into edit mode and start extruding.
- Try to sketch results similar to *Fig. 1*, through extruding the vertices of the object.
- Use :kbd:`Ctrl-A` to change the size of the different regions within the creature.
- Use *Mark Loose* at regions like the neck, to merge these faces more together.
- To get smoother results, activate *Smooth Shading* and add a :doc:`subsurf </modifiers/generate/subsurf>`
  (Shortcut: :kbd:`Ctrl-3`) to the object.


External links
==============

- `Skin Modifier Development at Blender Nation
  <http://www.blendernation.com/2011/03/11/skin-modifier-development/>`__ --
  An early demonstration of the skin modifier by Nicholas Bishop (March 2011)
- Ji, Zhongping; Liu, Ligang; Wang, Yigang (2010).
  `B-Mesh: A Fast Modeling System for Base Meshes of 3D Articulated Shapes
  <http://www.math.zju.edu.cn/ligangliu/CAGD/Projects/BMesh/>`__,
  Computer Graphics Forum 29(7), pp. 2169-2178. -- The work this modifier is based on
  (`direct link to PDF <http://www.math.zju.edu.cn/ligangliu/CAGD/Projects/BMesh/Paper/BMesh.pdf>`__)
- `Related thread on Blender artists
  <http://blenderartists.org/forum/showthread.php?209551-B-mesh-modeling-tools-papers-better-than-zsfere>`__


