
********************
Keymap Customization
********************

Keys
====


Available Keys
--------------

When customizing keymsps its useful to use keys which wont conflict with Blender's default keymap.

Here are keys which aren't used and aren't likely to be used in the future.

F-Keys (F5..F10)
   These F-Keys (including modifier combination)
   have been intentionally kept free for users to bind their own krys to.
OS-Key *(also known as Windows-Key, Cmds or Super)*
   Blender doesn't use this key for any bindings.

   *macOS* is an exception, where a few macOS shortcuts are bound to Cmd (cut/copy/paste/preferences).
Modifier Double Click
   Binding modifier keys as primary keys is supported,
   to avoid conflicts with regular usage you can bind them to double click.


Multi-Action Keys
-----------------

Click/Drag
^^^^^^^^^^

It's possible to configure a single key to perform multiple operations
using *Click* event instead of *Press*, Then you may bind *Drag* to a separate action.

This is useful for mixing actions where one uses a drag event, eg:
Toggle a setting using with tap, drag to open a pie menu showing all options related to the setting.


Click/Tweak
^^^^^^^^^^^

Unlike click/drag, this only works for the mouse buttons,
but has the advantage that tweak events can be directional.

To use this, events in this keymap must use *Click* instead of *Press*,
then you can bind *Tweak* actions to the mouse buttons.

This is used in the default keymap in the 3D Viewport,
:kbd:`Alt-MMB` draging in different directions rotates the view.


Common Operations
=================

This section lists useful generic operations which can be used.


Key Bindings for Pop-ups
------------------------

Menus and panels can be assigned key shortcuts,
even if they're only accessible from submenus elsewhere.

Open a Popup Menu (``wm.call_menu``)
   Open any menu on key press.
Open a Pie Menu (``wm.call_menu_pie``)
   Open any pie-menu on key press.
Open a Panel (``wm.call_panel``)
   Open a popup panel (also known as a popover).


Menu Identifier
^^^^^^^^^^^^^^^

To find the ``name`` of a menu,
enable the preference :menuselection:`Interface --> Display --> Python Tooltips`.

Then hover the cursor over the menu item, for submenus you will need to use the back arrow
to prevent the submenu from opening and gaining focus.


Panel Identifier
^^^^^^^^^^^^^^^^

Currently there is no way to find a panel identifier,
besides looking into the Pyhton source code, search for the panel title,
the identifier will use the convention ``{CATEGORY}_PT_{name}``.


Key Bindings for Properties
---------------------------

There are many properties you might want to bind a keys with.
To avoid having to define operators for each property,
there are generic operators for this purpose:

Operators for adjusting properties begin with ``wm.context_*``.

Some of these include:

- ``wm.context_toggle`` toggle a boolean property.
- ``wm.context_cycle_enum`` cycle an enum property forwards or backwards.
- ``wm.context_menu_enum`` show a popup menu for an enum property.
- ``wm.context_pie_enum`` show a pie menu for an enum property.
- ``wm.context_scale_float`` scale a number *(use for increasing / decreasing brush size for eg)*.
- ``wm.context_toggle_enum`` toggle between two options of an enum.
- ``wm.context_modal_mouse`` moving the cursor to interactively change a value.

See `bpy.ops.wm <https://docs.blender.org/api/current/bpy.ops.wm.html>`__ for a complete list.

Each of these operators has a ``data_path`` setting to refrence the property to change.

To find the ``data_path`` basic Python knowledge is needed.

For example, you can use the Python console to access a boolean property you wish to map to a key::

   bpy.context.object.show_name

To bind this to a key, add a new keymap item using the operator ``wm.context_toggle``
with ``data_path`` set to ``object.show_name`` (notice the ``bpy.context`` prefix is implicit).

See `bpy.context <https://docs.blender.org/api/current/bpy.context.html>`__
for other context attributes.

The Python API documentation can be used to find properties
or you may use the Python consoles auto-complete to inspect available properties.
