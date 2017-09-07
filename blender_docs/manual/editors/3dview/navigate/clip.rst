
********
Clipping
********

.. _3dview-clip-border:

View Clipping Border
====================

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`View --> Set Clipping Border`
   | Hotkey:   :kbd:`Alt-B`


Allows you to define a clipping border to limit the 3D View display to a portion of 3D space.
It can assist in the process of working with complex models and scenes.

Once activated with :kbd:`Alt-B`, you have to draw a rectangle with the mouse,
in the wanted 3D View. It becomes a clipping volume of four planes:

- A right-angled `parallelepiped <https://en.wikipedia.org/wiki/Parallelepiped>`__
  (of infinite length) if your view is orthographic.
- A rectangular-based pyramid (of infinite height) if your view is in perspective.

Once clipping is used, you will only see what's inside the volume you have defined.
Tools such as paint, sculpt, selection, transform-snapping, etc.
will also ignore geometry outside the clipping bounds.

To delete this clipping, press :kbd:`Alt-B` again.


Example
-------

.. list-table:: Region/Volume clipping.

   * - .. figure:: /images/editors_3dview_navigate_3d-view_clipping-border-1.png
          :width: 320px

          Selecting a region.

     - .. figure:: /images/editors_3dview_navigate_3d-view_clipping-border-2.png
          :width: 320px

          Region selected.

     - .. figure:: /images/editors_3dview_navigate_3d-view_clipping-border-3.png
          :width: 320px

          View rotated.

The *Region/Volume clipping* image shows an example of using the clipping tool with a cube.
Start by activating the tool with :kbd:`Alt-B` (upper left of the image).
This will generate a dashed cross-hair cursor.
Click with the :kbd:`LMB` and drag out a rectangular region shown in the upper right.
Now a region is defined and clipping is applied against that region in 3D space.
Notice that part of the cube is now invisible or clipped. Use the :kbd:`MMB` to rotate
the view and you will see that only what is inside the pyramidal volume is visible.
All the editing tools still function as normal but only within the pyramidal clipping volume.

The dark gray area is the clipping volume itself.
Once clipping is deactivated with another :kbd:`Alt-B`,
all of 3D space will become visible again.


Render Border
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`View --> Render Border...`
   | Hotkey:   :kbd:`Ctrl-B`, :kbd:`Ctrl-Alt-B`

Rectangular camera space clipping in and outside the Camera view.
ToDo.


.. seealso::

   :ref:`3dview-nav-zoom-border`.

.. (todo?) Remove redundant info for the 'View Clipping Border' functionality.
   Split the page and separate 'Render Border' and create text for this usage context.
