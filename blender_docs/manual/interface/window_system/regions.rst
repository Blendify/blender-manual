
*******
Regions
*******

An Editor is subdivided into regions.


Main Region
===========

At least one region is always visible.
It is called the main region and is the most prominent part of the editor.


Each editor has a specific purpose, so the main region and
the availability of additional regions are different between editors.
See specific documentation about each editor in the
:doc:`Editors </editors/index>` chapter.

.. _ui-region-header:

Header
======

A header is a small horizontal strip with a lighter gray background, 
which sits either at the top or bottom of the area.
All editors have a header acting as a container for menus and commonly used tools.


.. figure:: /images/interface-window_system-headers-header_example.jpg

   The Header of the 3D View editor.


If you move the mouse over an area,
the header of its editor changes to a slightly lighter shade of gray.
This means that it is "focused".
All hotkeys you press will now affect the contents of this editor.


.. move to Editor introduction?

Editor Type Selector
--------------------

:kbd:`LMB` clicking on the first icon at the left side of a header allows changing the Editor type.
Every area in Blender may contain any type of editor,
allowing you to customize your window layout to your own work flows.


.. move to menu buttons?

Menus and Buttons
-----------------

Most headers exhibit a set of menus, located immediately next
to the first *Editor Type* selector.

Menus allow you to directly access many features and commands,
so just look through them to see what is there.
All Menu entries show the relevant shortcut keys, if any.

Menus and buttons will change with *Editor Type* and the selected object and mode.
They only show the actions that can be performed.


Collapsing Menus
^^^^^^^^^^^^^^^^

Sometimes its helpful to gain some extra horizontal space in the header by collapsing menus,
this can be accessed from the header context menu,
simply right click on the header and enable set it to collapsed.

.. list-table::

   * - .. figure:: /images/header_menu_expand.jpg
          :width: 320px

          Right-click on any of the header menus.

     - .. figure:: /images/header_menu_collapsed.jpg
          :width: 320px

          Access the menu from the collapsed icon.


Tool Shelf
==========

The *Tool Shelf* by default on the left side contains the tool settings.
:kbd:`T` toggles the visibility of Tool Shelf Region.


Operator panel
--------------

The Operator panel is a region thats part of the Tool Shelf containing only one panel.
It displays the inputs of the last operator executed.


Properties Region
=================

The *Properties Region* is by default on the right side.
It contains :ref:`Panels <ui-panels>`
with settings of objects within the editor and the editor itself.
:kbd:`N` toggles the visibility of Properties Region.


Arranging
=========

Scrolling
---------

A region can be scrolled vertically and/or horizontally by dragging it with the :kbd:`MMB`.
If the region has no zoom level, it can be scrolled by using the :kbd:`Wheel`,
while the mouse hovers over it.


Changing the Size and Hiding
----------------------------

Resizing regions works the same way as :doc:`/interface/window_system/areas`
by dragging its border.

To hide a region scale it down to zero.
A hidden region leaves a little plus sign (see picture).
By :kbd:`LMB` on this, the region will reappear.

The Tool Shelf and Properties region have a shortcut assigned to
toggle between hide and show.

.. list-table:: Hiding and showing the Header.

   * - .. figure:: /images/interface-window_system-headers-hide.png

     - .. figure:: /images/interface-window_system-headers-show_02.png


Position
--------

To flip a region from one side to the opposite press :kbd:`F5`, 
while the Region is  under the mouse pointer.

The header can also be flip by :kbd:`RMB` on it and
select the appropriate item from the pop-up menu.
If the header is at the top, the item text will read "Flip to Bottom",
and if the header is at the bottom the item text will read "Flip to Top".
