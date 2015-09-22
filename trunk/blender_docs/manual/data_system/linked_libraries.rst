***************
Append and Link
***************

These functions help you reuse materials, objects and other :doc:`datablocks </data_system/datablocks>`
loaded from an external source ``.blend`` file.
You can build libraries of common content and share them across multiple referencing files.

*Link* creates a reference to the data in the source file such that
changes made there will be reflected in the referencing file the next time it is reloaded.

Where as *Append* makes a full copy of the data into your ``.blend``.
You can make further edits to your local copy of the data,
but changes in the external source file will not be reflected in the referencing file.


.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     *File* --> *Append or Link*
   | Hotkey:   :kbd:`Shift-F1`  or  :kbd:`Ctrl-Alt-O`

In the *File Browser* window
navigate to the external source ``.blend`` file
and select the data-block you want to reuse.

Options:

Relative Path
   Available only when linking, see :doc:`relative paths </data_system/files/relative_paths>`.
Select
   Makes the object *Active* after it is loaded.
Active Layer
   Enabled by default, the object is assigned to the visible layers in your scene.
   Otherwise, it is assigned to the same layers it resides on in the source file.
Instance Groups
   This option links the Group to an object, adding it to the active scene.

When you select an Object type, it will be placed in your scene at the cursor.
Many other data types - cameras, curves, and materials for example -
must be linked to an object before they become visible.

Newly added Group types are available in :menuselection:`Add --> Group Instances` in 3D View,
or for NodeTree groups, the same menu in the Node Editor.

Look in the Outliner, with display mode set to *Blender File*, to see all your linked and appended datablocks.
:kbd:`Ctrl-LMB` on a file name allows you to redirect a link to another file.

.. hint::

   You cannot move a linked object. Its position is defined in its source file.

   Use :menuselection:`Object --> Make Local --> Selected Objects` to make the position editable.

.. note::
   Appending data you already have linked, will add objects / groups to the scene,
   but will keep them linked (and un-editable).

   This is done so existing relationships with linked data remain intact.

.. _proxy_objects:

Proxy Objects
=============

Used with rigged models, proxy objects, allow specified bone layers to be linked back to the source file
while the remainder of the object and its skeleton are edited locally.

:kbd:`Ctrl-Alt-P` makes the active linked object into a local proxy, appending `_proxy` to its name.

Set the *Protected Layers* in the source file using using the Skeleton panel of the Armatures tab.
See :ref:`Armature Layers <armature_layers>`.
The bones in protected layers will have their position restored from the source file
when the referencing file is reloaded.

