
******************
Collection Manager
******************

.. figure:: /images/addons_interface_collection_manager.png
   :align: center

This add-on adds new functionality for the management of collections via the 3D Viewport.


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Interface then Collection Manager to enable the script.


Description
===========

Features:
---------

- Interactive treeview display of collections in an auto-sized popup window in the 3D View.
- View Layer integration and management.
- Add, rename, and remove collections and sub-collections.
- Active collection is synced to treeview selection.
- Simple display and modification of the relationship of objects with collections.
- Restriction Toggle state with advanced manipulation.
- Filtering display of collections (filter by name, filter by selected objects).
- Phantom Mode – All visibility changes made in this mode will be discarded when it’s disabled.


Shortcuts: (3D View -> Object Mode only)
----------------------------------------

:kbd:`M` - Call up the the main Collection Manager window

- **Expansion Operator**

  - :kbd:`LMB` - Expand/Collapse children.
  - :kbd:`Shift-LMB` - Expand/Collapse children and descendants.

- **Set Object Operator**

  - :kbd:`LMB` - Move object(s) to collection.
  - :kbd:`Shift-LMB` - Add/Remove object(s) to/from collection.

- **Local RTOs**

  - :kbd:`LMB` - Toggle collection RTO on/off
  - :kbd:`Shift-LMB` - Isolate the collection's RTO, preserving parents if need be. Click again to restore the previous state.
  - :kbd:`Ctrl-LMB` - Toggles the RTOs of the collection and it's children on/off.

- **Global RTOs**

  - :kbd:`LMB` - Enable the RTO for all collections. Click again to restore the previous state.
  - :kbd:`Shift-LMB` - Invert the RTO's state on all collections.


Other Functions:
----------------

- **View layer options (from left to right)**

  - Enable/Disable rendering of this view layer.
  - Select a view layer.
  - Current view layer name (click to edit).
  - Add a new view layer.
  - Delete the view layer.

- **Filter displayed RTOs**

  - choose which RTOs are shown in the UI

- **Filtering (from left to right)**

  - Invert filtering (inverts the collections shown above so that what is shown is hidden and what was hidden is shown)
  - Filter collections by selected objects (show only collections that contain the selected objects)

- **Phantom Mode**

  - Enabling Phantom Mode saves the current state of your RTOs and allows you to edit them without fear of losing your current state.  When finished, disabling Phantom Mode will restore the saved state.  **Note:** You will be unable to edit anything other than the collections' RTOs while in Phantom Mode.

.. figure:: /images/addons_interface_collection_manager_anatomy.png
   :align: center

.. admonition:: Reference
   :class: refbox

   :Category:  Interface
   :Description: Collection management system.
   :Location: 3D Viewport
   :File: collection_manager folder
   :Author: imaginer (Ryan Inch)
   :Maintainer: imaginer
   :License: GPL
   :Support Level: Community
   :Note: This add-on is bundled with Blender.
