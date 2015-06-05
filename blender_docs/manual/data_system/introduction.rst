
************
Introduction
************

Each ``.blend`` file contains a database.
This database contains all scenes, objects, meshes, textures, etc. that are in the file.

A file can contain multiple scenes and each scene can contain multiple objects.
Objects can contain multiple materials which can contain many textures.
It is also possible to create links between different objects.


Outliner
========

You can easily inspect the contents of your file by using the *Outliner* editor,
which displays all of the data in your .blend file.

The *Outliner* allows you to do simple operations on objects,
such as selecting, renaming, deleting, linking and parenting.

:doc:`Read more about the Outliner </editors/outliner>`

.. _pack-unpack-data:


Pack and Unpack Data
====================

Blender has the ability to encapsulate (incorporate)
various kinds of data within the .blend file that is normally saved outside of the ``.blend`` file.
For example, an image texture that is an external ``.jpg`` file can be
put "inside" the ``.blend`` file via :menuselection:`File --> External Data --> Pack into .blend file`.
When the .blend file is saved, a copy of that ``.jpg`` file is put inside the ``.blend`` file.
The ``.blend`` file can then be copied or emailed anywhere, and the image texture moves with it.

You know that an image texture is packed because you will see a little "Christmas present gift
box" displayed in the header.


Unpack Data
-----------

When you have received a packed file,
you can :menuselection:`File --> External Data --> Unpack into Files...`.
You will be presented with the option to create the original directory structure or put
the file in the ``//`` (directory where the .blend file is). Use "original locations"
if you will be modifying the textures and re-packing and exchanging .blend files,
so that when you send it back and the originator unpacks,
his copies of the textures will be updated.

