
..
   TODO

   Some of the text here is overly verbose and reads like a tutorial,
   data-blocks are more of a concept to explain.
   Tips on copying data can go elsewhere ~ ideasman42.


**********
Datablocks
**********

The base unit for any Blender project is the data-block.
Examples of data-blocks include:
meshes, objects, materials, textures, node-trees, scenes, texts, brushes and even screens.

For clarity, bones, sequence strips and vertex groups are **not** data-blocks,
they belong to armature, scene and mesh types respectively.

Some common characteristics:

- They're the primary contents of the ``.blend`` file.
- They can link to each other, for reuse and instancing.
  *(child/parent, object/object-data, with modifiers and constraints too).*
- Their names are unique.
- They can be added/removed/edited/duplicated.
- They can be linked between files
  *(only enabled for a limited set of data-blocks)*
- They can have their own animation data.
- They can have custom properties.


When doing more complex projects managing data-blocks becomes more important,
especially when inter-linking ``.blend`` files.


.. figure:: /images/Doc26-datablocks.jpg
   :width: 400px

   Datablocks view


Users (Garbage Collection)
==========================

It's good to be aware of how Blender,
handles data-blocks life-time, when they are freed and why.

Blender follows the general rule that data which isn't used, will be freed.

Its common to add and remove a lot of data while working,
this has the advantage of not having to manually manage every single data-block.

This works by skipping zero user data-blocks when writing ``.blend`` files.

While this is acceptable as default behavior,
there are times when you want to save a data-block even when its unused
*(typically for re-usable asset libraries).* see `Fake User`_.


Fake User
---------

Since zero user data-blocks aren't saved.
There are times when you want to force the data to be kept irrespective of its users.

If you're building a ``.blend`` file to serve as a library of things that you intend to link-to from *other* files,
you'll need to make sure that they don't accidentally get deleted from the library file.

Do this by giving the data-blocks a *Fake User*,
by pressing the *F* button next to the name of the data-block.
This prevents the user count from ever becoming zero: therefore,
the data-block won't be deleted.
(since Blender doesn't keep track of how many other files link to this one.)

Users (Sharing)
===============

Many data-blocks can be shared among other data-blocks,

Examples where sharing data is common.

- Sharing textures among materials.
- Sharing meshes between objects (instances).
- Sharing animated actions between objects, for example to make all the lights dim together.


Copying and Linking Objects Between Scenes
==========================================

Sometimes you may want to link or copy objects between scenes. This is possible by first selecting objects you want
to link or copy and then using the *Make Links* and *Make Single User* items found in
*Object* menu in the 3D viewport header. Use *Make Links* to make links between scenes.
To make a plain copy, you first make a link and then use *Make Single User* to make a stand-alone copy of
the object in your current scene.
Further information on working with scenes can be found :doc:`here </data_system/scenes>`.


Appending or Linking Across Files
=================================

The content of one ``.blend`` file is easily accessed and put into your current file by using
:menuselection:`File --> Append` or :menuselection:`File --> Link`
To find out more about how to copy or link objects across ``.blend`` files,
see :doc:`linked libraries </data_system/linked_libraries>`.


Copying and Linking
===================

It is possible to copy or link most of Blender's data-block.

See:

- :doc:`Adding scenes </data_system/scenes>`
- :doc:`Object duplication </modeling/objects/duplication>`


When an *ObData* data-block is used (linked) by more than one object,
a small button with its number of linked objects (users) shows up next to its name
*(also visible for materials, textures, images)*.
If you click on it, you create a single-user copy of this data-block for the current object.


Removing Datablocks
===================

As covered in `Users (Garbage Collection)`_, data-blocks are typically removed when they're no longer used.

There are some exceptions to this however.

Scenes, text, can be removed directly.

Other data-blocks such as groups and actions can be *Unlinked* from the *Outliner* context menu.

.. tip::

   Some data (images especially) is hard to keep track of,
   especially since image views are counted as users.

   For data-blocks that can be unlinked - hold :kbd:`Shift` while pressing on the *X* button,
   This force-clears the user-count, so the data-block will be removed on reload.

