
*****
UDIMs
*****

.. _bpy.ops.image.tile:
.. _bpy.types.UDIMTiles:

UDIM Tiles
==========

UDIM Tile List
   List all UDIM tiles associated with the main index (``1000`` tile).
   Double clicking on the tile name allows you to alter the tiles *Label*

Add Tile (Plus Icon)
   Adds new UDIM tiles to the group.

   Number
      The starting tile index number.
      UDIMs must start with the ``1001`` tile and typically increase in incremental order.
   Count
      The number of tiles to add.
   Label
      An optional label can be used instead of the index number.
      These labels are shown in the 2D Viewport.
   Fill
      Occupy the UDIM tile with a generated image; see *Fill Tile* below.

Remove Tile (Minus Icon)
   Deletes the selected UDIM tile from the group.
   If this tile is not saved and contains data, that data will be lost.

Fill Tile
   Occupy the UDIM tile with a :ref:`Generated image <image-generated>`.
   To fill a tile with an existing texture you first must:

   #. Create the desired tiles
   #. Save the image
   #. Replace the saved image file withe the desire texture by deleting the file
      and replacing it with a new image file, keeping the old file name.
      Or by opening the image in another application and modifying the contents of the image.

   .. warning::

      If a tile is not filled, it will not be saved with the image.
