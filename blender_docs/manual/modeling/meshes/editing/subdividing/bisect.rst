.. _bpy.ops.mesh.bisect:

******
Bisect
******

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Mesh Tools --> Add: Bisect`
   | Menu:     :menuselection:`Mesh --> Bisect`

The bisect tool is a quick way to cut a mesh in-two along a custom plane.

Plane Point, Plane Normal
   The plane can be numerically adjusted for precise values.
Fill
   Cuts can optionally fill in the holes created,
   with materials, UV maps, and vertex-colors based on the surrounding geometry.
Clear Inner, Clear Outer
   Cuts may remove geometry on one side.
Axis Threshold
   Cut along the straight plane or along the existing geometry below the distance from the plane.


Examples
========

.. list-table::

   * - .. figure:: /images/mesh_bisect.png
         :width: 300px

         Example of a common use of bisect.

     - .. figure:: /images/mesh_bisect_uv.jpg
          :width: 320px

          Example of bisect with fill option
