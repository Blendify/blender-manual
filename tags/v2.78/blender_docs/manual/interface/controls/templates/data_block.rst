.. _ui-data-block:

***************
Data-Block Menu
***************

A set of menu buttons used to link :doc:`/data_system/data_blocks` to each other.
Data-blocks are items like meshes, objects, materials, textures, and so on.
If data-blocks are linked the data will be updated across all of the users when edited. 

.. figure:: /images/interface_data-block.jpg
   :align: right

   The Data-Block menu with a search input.


Type
   Shows an icon. Opens up the following pop-up menu.

   List
      A list of data-block available in the current blend-file or link in to select an item from.
      The menu may show a preview besides the items and
      a search box to search the items in the list by name.
Name
   Displays the internal name of the linked Data-Block, which can be edited as a regular text field.
   If a name already is in assigned Blender will add a digit to the name like ".001".
User count
   Displays the number of users of the data. Clicking on it to make it a single-user copy,
   with it linked only to the active object/object's data.
Fake User ``F``
   Keeps the data-block saved in the blend-file, even if it has no real users.
New/Add ``+``
   Creates a new data-block or duplicates the current data-block and applies it.
Open file
   Opens the :doc:`File Browser </editors/file_browser/introduction>`.
Unlink data-block ``X``
   Clears the link.

Sometimes there is a :ref:`list <ui-list-view>` of applied data-blocks
(such as a list of materials used on the object).


Data-Block Types
----------------

.. image source: Scene tab --> Active keying set panel --> ID-block (sound replaced)

.. figure:: /images/data_system_id-types.png

   Data-blocks types with their icon.


Preview
=======

.. figure:: /images/interface_data_block_preview.png

   The Data-Block menu with preview.

In the Tool Shelf is a version of the data-block menu with a bigger preview.


.. _ui-data-id:

Data ID
=======

.. figure:: /images/interface_data_id.png

   The Data ID.

A Data ID is a text field with a data-block type icon, which opens a gray pop-up to select a data-block.
In some Data IDs there is an :doc:`/interface/controls/buttons/eye_dropper` available through the pipette icon on the right side.
