
******
Guides
******

.. admonition:: Reference
   :class: refbox

   :Mode:      Draw Mode
   :Header:    :menuselection:`Guides`

Guides are drawing aids that make it easier to create different types of strokes.
The Guides can be activated with the button next to the selector (grid icon).


Guide Types
===========

.. figure:: /images/grease-pencil_modes_draw_guides-selector.png
   :align: right

   Guide selector activated in the 3D View header.

Circular
   Constrains the drawing of new strokes to form rings from the selected reference point.

Radial
   Constrains the drawing of new strokes to form rays from the selected reference point.

Parallel
   Constrains the drawing of new strokes to form parallel lines.

   Angle
      Angle direction of the parallel lines.

Grid
   Constrains the drawing of new strokes to form parallel horizontal or vertical lines.


Common Options
--------------

Use Snapping
   When enabled, snap the drawn strokes to an angle or spacing.

   Spacing
      Guide spacing.

Reference Point
   Determines the origin point to use for the creation of the lines.
   Applies only for *Circular* and *Radial* guides.

   Cursor
      Use the cursor as a reference point.

   Custom
      Use a custom location as a reference point.

      Custom Location
         X, Y Z

   Object
      Use an object as a reference point.

      Object
         An :ref:`Data ID menu <ui-data-id>` to select the object (usually an empty),
         which location will be used as a reference point.


Examples
========

.. list-table:: Examples of strokes using different types of Guides.

   * - .. figure:: /images/grease-pencil_modes_draw_guide-circular.png
          :width: 200px

          Circular Guides.

     - .. figure:: /images/grease-pencil_modes_draw_guide-radial.png
          :width: 200px

          Radial Guides.

     - .. figure:: /images/grease-pencil_modes_draw_guide-parallel.png
          :width: 200px

          Parallel Guides (30° Angle).

     - .. figure:: /images/grease-pencil_modes_draw_guide-grid.png
          :width: 200px

          Grid Guides.
