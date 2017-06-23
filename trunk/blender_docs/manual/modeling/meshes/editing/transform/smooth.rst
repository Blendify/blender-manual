.. _bpy.ops.mesh.vertices_smooth:

******
Smooth
******

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Mesh Tools --> Deform: Smooth Vertex`
   | Menu:     :menuselection:`Mesh --> Vertices --> Smooth Vertex`

This tool smooths the selected components by averaging the angles between faces.
After using the tool, options appear in the *Tool Shelf*:

Number of times to smooth
   The number of smoothing iterations
Axes
   Limit the effect to certain axes.

.. list-table::

   * - .. figure:: /images/smoothvertex1.png
          :width: 200px

          Mesh before smoothing.

     - .. figure:: /images/smoothvertex2.png
          :width: 200px

          Mesh after one smoothing iteration.

     - .. figure:: /images/smoothvertex3.png
          :width: 200px

          Mesh after ten smoothing iterations.


Laplacian Smooth
================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Specials --> Laplacian Smooth`


See the :doc:`Laplacian Smooth Modifier </modeling/modifiers/deform/laplacian_smooth>` for details.

Laplacian smooth is uses an alternative smoothing algorithm that better preserves the overall
mesh shape. Laplacian smooth exists as a mesh operation and as a non-destructive modifier.

.. note::

   The :doc:`Smooth Modifier </modeling/modifiers/deform/smooth>`, which can be limited to a *Vertex Group*,
   is a non-destructive alternative to the smooth tool.

.. note:: Real Smoothing versus Shading Smoothing

   Do not mistake this tool with the shading smoothing options described at
   :doc:`this page </modeling/meshes/editing/smoothing>`, they do not work the same!
   This tool modifies the mesh itself, to reduce its sharpness, whereas *Set Smooth* / *AutoSmooth* and co.
   only control the way the mesh is shaded,
   creating an *illusion* of softness, but without modifying the mesh at all...
