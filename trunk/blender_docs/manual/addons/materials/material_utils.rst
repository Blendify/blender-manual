
******************
Material Utilities
******************

Introduction
============

- Materials Utils/Specials is designed to help with Batch Materials tasks.
- The add-on works in either Blender Internal render or Cycles render modes.
- Common Tasks are available from the shift/q menu & also the Materials Specials menu.


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Material then Material Utilities to enable the script.


Add-ons Preferences
  Choose the default settings for the addons actions here.


Interface
=========

Located in the 3D View :kbd:`Shift-Q` hotkey.

Located in the :menuselection:`Properties editor --> Material Properties --> Specials`.

.. figure:: /images/addons_materials_mat_utils.jpg
   :align: right
   :width: 350px


Instructions
============

Assign Material:
  Assign a material to the current selection. List of all materials and search for a material by name.

Select By Material:
  In Edit or Object mode you can select based on material.
  Faces with chosen material will become selected. all objects with a chosen material will be selected in object mode.

Copy Material to Selected:
  Copy the material from the active object to selected objects.

Clean Slots:
  Clean Material Slots: For all selected objects, removes all empty and unused material slots (not assigned to any polygons).
  Due to Blender's current limitations, available only in Object Mode (the option will be grayed out in Edit Mode).
  Remove Material Slots: Removes All material slots of the active object.

Replace Material:
  Replace a material by name. Lets your replace one material by another.
  Optionally for all objects in the blend, otherwise for selected editable objects only.
  An additional option allows you to update object selection, to indicate which objects were affected and which not.

Set Fake User:
  Lets you set all the materials to have a fake user. This is very useful when saving materials for use later.

Specials:
  Advanced utils, Merge base names, Texface to Material (available only for BI), Converters and New Material Settings.
  Slot to Top/Slot to Bottom: Move the slot to top or bottom of the stack.

Further comprehensive documentation can be found in the co-author's
`Github repository <https://github.com/ChrisHinde/MaterialUtilities/blob/master/README.md>`__.


.. admonition:: Reference
   :class: refbox

   :Category:  Material
   :Description: Menu of material tools (assign, select..) in the 3D View.
   :Location: 3D View :kbd:`Shift-Q`
   :File: materials_utils folder
   :Author: MichaleW, ChrisHinde
   :Maintainer: MichaleW, ChrisHinde
   :License: GPL 3+
   :Support Level: Community
   :Note: This add-on is bundled with Blender.
