.. _bpy.types.Library:
.. _files-linked_libraries:

****************
Linked Libraries
****************

These functions help you reuse materials, objects and other :doc:`data-blocks </files/data_blocks>`
loaded from another blend-file.
You can build libraries of common content and share them across multiple referencing files.


Append and Link
===============

.. admonition:: Reference
   :class: refbox

   :Editor:    Topbar
   :Mode:      All Modes
   :Menu:      :menuselection:`File --> Append or Link`
   :Hotkey:    :kbd:`F4`, :kbd:`A` or :kbd:`L`

*Link* creates a reference to the data in the source file such that
changes made there will be reflected in the referencing file the next time it is reloaded.
But linked data is not editable (to some extent, see :ref:`object-proxy`).

*Append* makes a full copy of the data into your blend-file, without keeping any reference to original one.
You can make further edits to your local copy of the data,
but changes in the external source file will not be reflected in the referencing file.

In the :doc:`File Browser </editors/file_browser>`,
navigate to the external source blend-file and select the data-block you want to reuse.

.. tip::

   Blend-files can also be linked/appended by dragging and dropping blend-files into the Blender window.


Options
-------

Relative Path
   Available only when linking, see :ref:`files-blend-relative_paths`.
Select
   Makes the object *Active* after it is loaded.
Active Collection
   The object will be added to the active collection of the active view layer.
   Otherwise, it will be added to a new collection in the active view layer.
Instance Collections
   This option instantiates the linked collection as an object, adding it to the active scene.
   Otherwise, the linked collection is directly added to the active view layer.
Fake User
   Defines the appended data-block as :ref:`Protected <data-system-datablock-fake-user>`.
Localize All
   Appends also all indirectly linked data, instead of linking them.

When you link an object, it will be placed in your scene at the 3D cursor position.
Many other data types, cameras, curves, and materials for example,
must be linked to an object before they become visible.

Newly added collections types are available in :menuselection:`Add --> Collection Instance` in the 3D View.

Look in the *Outliner*, with display mode set to *Blender File*, to see all your linked and appended data-blocks.

.. note::

   Appending data you already have linked will add objects/collections to the scene,
   but will keep them linked (and un-editable).

   This is done so existing relationships with linked data remain intact.


.. _bpy.ops.outliner.lib_operation:

Library Reload & Relocate
=========================

From the context menu of the library items in the *Outliner*'s *Blender File* view,
you can reload and relocate a whole library.

Reloading is useful if you changed something in the library blend-file and want to see those changes
in your current blend-file without having to re-open it.

Relocating allows you to reload the library from a new file path.
This can be used to either fix a broken linked library
(e.g. because the library file was moved or rename after linking from it),
or to switch between different variations of a same set of data, in different library files.


Broken Library
--------------

While loading a blend-file, if Blender cannot find a library,
it will create placeholder data-blocks to replace missing linked ones.

That way, references to the missing data is not lost, and by relocating the missing library,
the lost data can be automatically restored.


.. _bpy.ops.object.make_local:

Make Local
==========

.. admonition:: Reference
   :class: refbox

   :Editor:    3D View
   :Mode:      Object Mode
   :Menu:      :menuselection:`Object --> Relations --> Make Local...`

.. admonition:: Reference
   :class: refbox

   :Editor:    Outliner
   :Menu:      :menuselection:`Context menu --> ID Data --> Make Local`

Makes the selected or all external objects local to the current blend-file.
Links to the original library file will be lost,
but it will make those data-blocks fully editable, just like the ones directly created in that blend-file.


Options
-------

The operation available from the *Outliner*'s context menu has no options, and only affects the selected data-block.

The operation available from the *3D View* only directly affects selected objects,
but it can also make local the objects' dependencies:

Type
   Optionally unlinks the object's Object Data and Material Data.

   Selected Objects, + Object Data, + Materials, All (i.e. including all scenes)


Known Limitations
=================

For the most part linking data will work as expected, however,
there are some corner cases which are not supported.


Circular Dependencies
---------------------

In general, dependencies should not go in both directions.

Attempting to link or append data which links back to the current file will likely result in missing links.


Object Rigid Body Constraints
-----------------------------

When linking objects *directly* into a blend-file, the *Rigid Body* settings
**will not** be linked in since they are associated with their scene's world.

As an alternative, you could link in the entire scene and set it as a :ref:`Background Set <scene-background-set>`.


.. _files-linked_libraries-known_limitations-compression:

Compression & Memory Use
------------------------

Linking to blend files with compression enabled may significantly increase memory usage while loading files.

Reading data on demand isn't supported with compression
*(this only impacts load time, once loaded there is no difference in memory use)*.
