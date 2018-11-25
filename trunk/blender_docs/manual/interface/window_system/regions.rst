.. _bpy.types.Region:

*******
Regions
*******

An area is subdivided into regions.


Main Region
===========

At least one region is always visible.
It is called the Main region and is the most prominent part of the editor.

Each editor has a specific purpose, so the main region and the
availability of additional regions are different between editors.  See
specific documentation about each editor in the :doc:`Editors
</editors/index>` chapter.  Different types of regions are shown using
3D View editor as an example in picture below.

.. figure:: /images/interface_window-system_regions_3d-view.png
   :align: center

   Regions of default 3D View editor after showing Side bar and
   running Add Cube operator. Header (green), Main region (yellow), Tool bar (blue),
   Side bar (red) and Operator panel (pink).


.. _ui-region-header:
.. _bpy.types.Header:

Header
======

A header is a small horizontal strip with a lighter gray background,
which sits either at the top or bottom of the area.
All editors have a header acting as a container for menus and commonly used tools.
:ref:`Menus <ui-header-menu>` and buttons will change with the editor type and
the selected object and mode.

.. figure:: /images/modeling_meshes_introduction_3d-view-header-object-mode.png

   The Header of the 3D View editor.

All hotkeys you press will affect the contents of the editor where mouse pointer is located.


Tool Bar
========

The *Tool bar* (on the left side of editor area) contains
the tool settings.  :kbd:`T` toggles the visibility of Tool bar.


Operator Panel
--------------

The *Operator panel* is a region on 3D View that shows tool options
when tools (operators) are run. Operator panel shows properties of
the :ref:`last operator <ui-redo-last>` executed.


Side Bar
========

The *Side bar* (on the right side of editor area) 
contains :ref:`Panels <ui-panels>`
with settings of objects within the editor and the editor itself.
:kbd:`N` toggles the visibility of Side bar.


Arranging
=========

Scrolling
---------

A region can be scrolled vertically and/or horizontally by dragging it with the :kbd:`MMB`.
If the region has no zoom level, it can be scrolled by using the :kbd:`Wheel`,
while the mouse hovers over it.


Changing the Size and Hiding
----------------------------

Resizing regions works by dragging their border, the same way as
:doc:`/interface/window_system/areas`.

.. tip::

   Expand the Tool bar to show icons on two columns instead of
   one. Expand Tool bar more to show icons with titles.

To hide a region resize it down to nothing.
A hidden region leaves a little plus sign (see picture below).
By :kbd:`LMB` on the plus sign, the region will reappear.

.. list-table:: Hiding and showing the Header.

   * - .. figure:: /images/interface_window-system_regions_headers-hide.png

     - .. figure:: /images/interface_window-system_regions_headers-show.png
