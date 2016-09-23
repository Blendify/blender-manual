
*****
Menus
*****

Blender uses a variety of different menus for accessing options, tools and selecting Data-Blocks.


Shortcuts
=========

- Arrow keys can be used to navigate.
- Each menu item has an underlined character which can be pressed to activate it.
- Number keys or num-pad can be used to access menu items.
  (Where :kbd:`1` is the first menu item, :kbd:`2` the second... etc.
  For larger menus :kbd:`Alt-1` the 11th... up to :kbd:`Alt-0` the 20th)
- Press :kbd:`Return` to activate the selected menu item.
- Press :kbd:`Esc` to cancel the menu.

.. _ui-header-menu:

Header Menus
============

.. figure:: /images/interface_menu_button.png
   :align: right

   The Info Editor menu buttons.

Most :ref:`headers <ui-region-header>` exhibit a set of menus, located immediately next
to the first *Editor Type* selector.
Header menus are used to configure the editor and access tools.
All Menu entries show the relevant shortcut keys, if any.


Collapsing Menus
----------------

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

 
Pop-Up Menus
============

.. figure:: /images/interface_popup-menu.jpg
   :align: right

   The Viewport Shading pop-up menu.

Pop-up menus are overlay menus used to display options.
They are spawned by menu buttons and buttons showing up and down triangles on the right or
after a key input at the mouse position.

For example, the *Viewport Shading* button will produce a pop-up menu
with the available shading options.

Numerical selection
   You can use the number keys or :kbd:`Numpad` to input an item in the list to select.
   For example, :kbd:`Numpad-1` will select the first item and so on.

Pop-ups can be moved by dragging there title.


Context Menu
============

Context menus are pop-ups opened with the :kbd:`RMB`.
Only the common options are listed below.

*Single* set or gets the value of the button under the mouse pointer.
*All* on the other hand includes all combined buttons.

Reset All/Single to Default Value(s)
   Replaces the current value by the default :kbd:`Backspace`.
Unset
   ..
Copy Data Path
   ..
Copy To Selected
   Copies the properties to the selected object. A use case is if the Properties editor context is pinned.
Online Manual
   See :ref:`help-manual-access`.
Online Python Reference
   Context-sensitive access to the 
   `Python API Reference <https://www.blender.org/api/blender_python_api_current/>`__.
Edit Source
   For UI development -- points at the code line where the element is defined.
Edit Translation
   For UI development -- points at the translation code line.

.. seealso::

   :doc:`/interface/common_shortcuts`.

   .. move paragraph there?


Pie Menus
=========

A pie menu is a menu, whose items are spread radially around the mouse.
Pie menus has to be activated in the User Preferences through
:menuselection:`Add-ons --> UI --> Pie Menus Official`.

.. figure:: /images/interface_pie-menu.jpg
   :width: 350px

   The shade pie menu.


Interaction
-----------

The pie menu is spawned by a key press.

.. rubric:: 3D View

- :kbd:`Tab` Interaction Mode
- :kbd:`Z` Shade and solid or smooth shading
- :kbd:`Q` View directions and perspective or ortho. and camera
- :kbd:`Tab-Shift-Ctrl` Snapping
- :kbd:`.` Pivot
- :kbd:`Ctrl-Space` Manipulator

.. rubric:: Movie Clip Editor

- :kbd:`W` Clip Setup
- :kbd:`Q` Marker Setup
- :kbd:`E` Tracking
- :kbd:`Shift-S` Solving
- :kbd:`Shift-W` Scene Reconstruction
- :kbd:`OS-A` Playback Operators

.. rubric:: Grease Pencil

- :kbd:`D-Q` Main tools menu (context sensitive)
- :kbd:`D-W` Quick Settings

Releasing the key without moving the mouse will keep the menu open and
the user can then move the mouse pointer towards the direction of a pie menu item and select it by clicking.
Releasing the key after moving the mouse towards a pie menu item will cause the menu to close and
the selected menu item to activate.

An open disc widget at the center of the pie menu shows the
current direction of the pie menu. The selected item is also highlighted.
A pie menu will only have a valid direction for item selection,
if the mouse is touching or extending beyond the disc widget at the center of the menu.

Pie menu items support key accelerators, which are the letters underlined on each menu item.
Also number keys can be used to select the items.

If there are sub-pies available, it is indicated by a plus icon.

See :ref:`Pie menu settings <prefs-pie-menu>`.
