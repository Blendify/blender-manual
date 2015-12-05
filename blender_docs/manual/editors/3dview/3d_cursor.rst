
*********
3D Cursor
*********

The 3D Cursor is simply a point in 3D space which can be used for a number of purposes

Placement
=========

There are a few methods to position the 3D cursor.


Direct Placement with the Mouse
-------------------------------

.. figure:: /images/3D_interaction_Transform-Control_Pivot-Point_3D-cursor_two-view-positioning.jpg
   :align: center

   Positioning the 3D cursor with two orthogonal views.


Using :kbd:`LMB` in the 3D area will place the 3D cursor directly under your mouse pointer.

For accuracy you should use two perpendicular orthogonal 3D views, i.e.
any combination of top (:kbd:`Numpad7`), front (:kbd:`Numpad1`) and side (:kbd:`Numpad3`).
That way you can control the positioning along two axes in one view and determine depth in the second view.

To place the 3D Cursor on the surface of geometry,
enable *Cursor Depth* in the :doc:`User Preferences </preferences/interface>`


Using the Snap Menu
-------------------

The *Snap* menu (:kbd:`Shift-S` or :menuselection:`Object/Mesh --> Snap`)
will allow you to snap the cursor in the following ways:


Cursor to Selected
   Snaps the cursor to the center of the current selection.
Cursor to Center
   Snaps the cursor to the origin of the scene (location 0,0,0).
Cursor to Grid
   Snaps the cursor to the nearest *visible* grid lines.
Cursor to Active
   Snaps the cursor to the *active* (last selected) object, edge, face or vertex.

The *Cursor to Selected* option is also affected by the current :ref:`pivot-point`. For example:

 - With the *Bounding Box Center* pivot point active,
   the *Cursor to Selected* option will snap the 3D cursor to the
   center of the bounding box surrounding the objects' centers.
 - When the *Median Point* pivot point is selected,
   *Cursor to Selected* will snap the 3D cursor to the
   `median <http://en.wikipedia.org/wiki/Median>`__ of the object centers.


Numeric Input
-------------

.. figure:: /images/3D_interaction_Transform-Control_Pivot-Point_3D-cursor_view-properties.jpg

   The 3D Cursor panel of the Properties shelf.


The 3D cursor can also be positioned by entering Numeric location values into the *3D cursor*
panel of the *Properties* shelf (:kbd:`N`).


.. Usage
.. =====

.. TODO: uses (placement of objects, moving objects, modeling tools...)
