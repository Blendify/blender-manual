.. |pivot-icon| image:: /images/scene-layout_object_editing_transform_control_pivot-point_menu.png

.. _pivot-point-index:

###############
  Pivot Point
###############

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode and Edit Mode
   :Header:    |pivot-icon| :menuselection:`Pivot Point`

When rotating or scaling an object or group of vertices/edges/faces,
you may want to shift the :term:`pivot point` to make it easier to manipulate an object.
Using this selector in the header of any 3D View, you can change the location of the pivot point.

.. figure:: /images/scene-layout_object_editing_transform_control_pivot-point_popover.png


Pivot Types
===========

.. toctree::
   :maxdepth: 2

   bounding_box_center.rst
   3d_cursor.rst
   individual_origins.rst
   median_point.rst
   active_element.rst


.. _bpy.types.ToolSettings.use_transform_pivot_point_align:

Affect Only
===========

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode and Pose Mode
   :Header:    :menuselection:`Pivot Point --> Affect Only`

Locations
   When this option is enabled, the transformation will change the positions
   of the object's origins, but will not affect the object itself.

   In the examples below, a comparison of the scaling and rotation of objects,
   when *Location* is enabled (middle) and disabled (right).

   .. figure:: /images/scene-layout_object_editing_transform_control_pivot-point_index_rotate.png

      Rotation example.

   .. figure:: /images/scene-layout_object_editing_transform_control_pivot-point_index_scale.png

      Scaling example.
