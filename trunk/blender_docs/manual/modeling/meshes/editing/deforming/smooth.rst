
******
Smooth
******

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Panel:    *Mesh Tools* (*Editing* context)
   | Menu:     :menuselection:`Mesh --> Vertices --> Smooth vertex`
   | Hotkey:   :menuselection:`[ctrl][V] --> Smooth vertex`


This tool smooths the selected components by averaging the angles between faces.
After using the tool, options appear in the *Tool Shelf*:

Number of times to smooth
   The number of smoothing iterations
Axes
   Limit the effect to certain axes.

.. list-table::

   * - .. figure:: /images/SmoothVertex1.jpg
          :width: 200px

          Mesh before smoothing.

     - .. figure:: /images/SmoothVertex2.jpg
          :width: 200px

          Mesh after 1 smoothing iteration.

     - .. figure:: /images/SmoothVertex3.jpg
          :width: 200px

          Mesh after 10 smoothing iterations.


Laplacian Smooth
================

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Hotkey:   :menuselection:`[W] --> Laplacian Smooth`


See the :doc:`Laplacian Smooth Modifier </modeling/modifiers/deform/laplacian_smooth>` for details.

Laplacian smooth is uses an alternative smoothing algorithm that better preserves the overall
mesh shape. Laplacian smooth exists as a mesh operation and as a non-destructive modifier.


.. note::

   The :doc:`Smooth modifier </modeling/modifiers/deform/smooth>`, which can be limited to a *Vertex Group*,
   is a non-destructive alternative to the smooth tool.


.. note:: Real Smoothing versus Shading Smoothing

   Do not mistake this tool with the shading smoothing options described at
   :doc:`this page </modeling/meshes/smoothing>`, they do not work the same!
   This tool modifies the mesh itself, to reduce its sharpness, whereas *Set Smooth* / *AutoSmooth* and co.
   only control the way the mesh is shaded,
   creating an *illusion* of softness - but without modifying the mesh at all...

