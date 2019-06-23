.. |pivot-icon| image:: /images/editors_3dview_object_editing_transform_control_pivot-point_menu.png

.. _pivot-point-index:

###############
  Pivot Point
###############

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode and Edit Mode
   :Header:    Pivot Point

.. figure:: /images/editors_3dview_object_editing_transform_control_pivot-point_index_modes.png
   :align: right

   Pivot Point modes.

When rotating or scaling an object or group of vertices/edges/faces,
you may want to shift the :term:`pivot point` to make it easier to manipulate an object.
Using this selector in the header of any 3D View, you can change the location of the pivot point.


Pivot Types
===========

.. toctree::
   :maxdepth: 2

   bounding_box_center.rst
   3d_cursor.rst
   individual_origins.rst
   median_point.rst
   active_element.rst


Only Origins
============

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode and Pose Mode

|pivot-icon|

*Only Origins* is located inside the Pivot Point control of the 3D View.
When this option is enabled, the transformation will change the positions
of the object's origins, but will not affect the object itself.

In the examples below, a comparison of the scaling and rotation of objects,
when *Only Origins* is enabled (middle) and disabled (right).

.. figure:: /images/editors_3dview_object_editing_transform_control_pivot-point_manipulate-center-points_rotate.png

   Rotation example.

.. figure:: /images/editors_3dview_object_editing_transform_control_pivot-point_manipulate-center-points_scale.png

   Scaling example.
