
..    TODO/Review: {{review|partial=X|text = elaborate, rna}} .


**********
Datablocks
**********

The base unit for any blender project is the data-block. Examples of data-blocks include:
meshes, objects, materials and textures. Be it a simple sphere floating over a plane,
or a full featured film, a project is defined by the data-blocks it contains,
the properties set for those data-blocks, and the way the data-blocks link to each other.
Datablocks can reside within as many ``.blend`` files as needed for good project organization.


.. figure:: /images/Doc26-datablocks.jpg
   :width: 400px

   Datablocks view


Copying and Linking Datablocks
==============================

It is possible to copy or link most of Blender's data-block.


To copy a *Scene* data-block,
use *Scene* list found in the header of *User Preferences* window.
The list is to the right of the menus and window workspace list.
Select *ADD NEW* to make a copy of the current scene.
Select *Full Copy* from the list that opened to make a copy.
The current scene will be **fully** copied to the new scene.

Instead of copying **everything**,
you can link data-blocks by selecting *Link Objects*,
to use the same *Object* data-blocks linked into the two scenes,
or *Link ObData*,
to create separated objects sharing the same *ObData* data-blocks (meshes, curves,
materials, etc.). Note that if you select *Link Objects*,
in fact you copy nearly nothing,
as *Object* data-blocks are parent of all *ObData* data-blocks:
nearly all modifications (object location, mesh geometry, ...)
in a scene will be reflected in the other ones linked this way as well.
As for *Link ObData*, it creates a "real" copy of the objects,
but not of their child datalocks: the locations,
scales and rotations of the objects will be specific to a scene,
but neither their forms nor their materials, textures, ..., will be
(as defined by *ObData* data-blocks).


Copying and Linking Object Datablocks
-------------------------------------

Full copy
   :kbd:`Shift-D` is used to make normal copy of the selected objects.
   The object and some of it's child data-blocks will really be duplicated, the other children are just linked;
   you can define the attributes to be duplicated in
   *User Preferences* --> *Edit Methods*, button group *Duplicate with object:*.

Linked copy
   :kbd:`Alt-D` makes a linked copy.
   All data-blocks but the object one are linked.


Copying and Linking other Datablocks
------------------------------------

When an *ObData* data-block is used (linked) by more than one object,
a small button with its number of linked objects (users) shows up next to its name,
in its settings window (*Editing* context for meshes, curves, cameras, ...,
*Shading* context, *Material* sub-context for materials, etc.).
If you click on it, you create a copy of this data-block for the current object.


Unlinked Datablocks
===================

A data-block can become unlinked.
For example a material data-block will be unlinked if the object it was linked to is deleted.
If a data-block is unlinked, by default it will be deleted from the ``.blend`` file when Blender is closed.
To keep an unlinked data-block in a .blend file,
click the "F" button to the right of the object's name in the Objects and Links panel.

