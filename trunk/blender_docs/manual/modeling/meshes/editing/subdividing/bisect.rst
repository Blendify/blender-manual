
******
Bisect
******

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Mesh Tools --> Add: Bisect`
   | Menu:     :menuselection:`Mesh --> Bisect`


The bisect tool is a quick way to cut a mesh in-two along a custom plane.

There are three important differences between this and the knife tool.


- The plane can be numerically adjusted in the operator panel for precise values.
- Cuts may remove geometry on one side.
- Cuts can optionally fill in the holes created,
  with materials and UVs & vertex-colors based on the surrounding geometry.

This means the bisect tool can cut off parts of a mesh without creating any holes.

.. list-table::

   * - .. figure:: /images/mesh_bisect.png
         :width: 300px

         Example of a common use of bisect.

     - .. figure:: /images/mesh_bisect_uv.jpg
          :width: 320px

          Example of bisect with fill option
