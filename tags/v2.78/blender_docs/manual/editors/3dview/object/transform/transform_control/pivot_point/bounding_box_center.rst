.. |pivot-icon| image:: /images/editors_3dview_header-pivot-point.jpg

*******************
Bounding Box Center
*******************

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode and Edit Mode
   | Menu:     Select from the |pivot-icon| icon in the 3D View header.
   | Hotkey:   :kbd:`,`


The bounding box is a rectangular box that is wrapped as tightly as possible around the selection.
It is oriented parallel to the world axes. In this mode the pivot point lies at the center of the bounding box.
You can set the pivot point to bounding box with :kbd:`,` or via the menu in the editors header.
The image below shows how the Object's Bounding Box size is determined by the size of the Object.

.. figure:: /images/editors_3dview_transform_control-pivot_point-bounding_box_center-bounding-box-demo.jpg

   Relationship between an Object and its Bounding Box.


In Object Mode
==============

In *Object Mode*, the bounding box is wrapped around the Object and transformation
takes place relative to the location of the Object center (indicated by the yellow circle).
The image below shows the results of using the Bounding Box as the pivot point in a number of
situations.

For example, images A (before rotation)
and B show rotation when the Object center is in its default position, while images C
(before rotation) and D shows the result when the Object center has been moved.
Image E shows that when multiple Objects are selected,
the pivot point is calculated based on the Bounding Box of all the selected Objects.

.. figure:: /images/editors_3dview_transform_control-pivot_point-bounding_box_center-object-rotation.jpg

   The grid of four images on the left (ABCD) shows the results of Object rotation
   when the pivot point is set to Bounding Box.
   The image to the right (E) shows the location of the Bounding Box pivot point when multiple Objects are selected.
   The pivot point is shown by a yellow circle.


In Edit Mode
============

This time it is the Object Data that is enclosed in the bounding box.
The bounding box in *Edit Mode* takes no account of the Object(s) centers,
only the center of the selected vertices.

.. figure:: /images/editors_3dview_transform_control-pivot_point-bounding_box_center-edit-mode-rotation.jpg

   The effects of rotation in different mesh selection modes when the bounding box is set as the pivot point.
   The pivot point is shown by a yellow circle.
