
***********
Duplication
***********

There are two types of object duplication,
being `Duplicate`_ and `Linked Duplicates`_ which instance their Object Data.


Duplicate
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit and Object Modes
   | Menu:     :menuselection:`Object --> Duplicate`
   | Hotkey:   :kbd:`Shift-D`


This will create a visually-identical copy of the selected object(s).
The copy is created at the same position as the original object and
you are automatically placed in *Grab* mode. See the examples below.

This copy is a new object, which shares some data-blocks with the original object
(by default, all the Materials, Textures, and F-Curves), but which has copied others,
like the mesh, for example. This is why this form of duplication is sometimes called "shallow link",
because not all data-blocks are shared; some of them are "hard copied"!

.. tip::

   You can choose which types of data-block will be linked or copied when duplicating:
   in the :ref:`User Preferences <prefs-editing-duplicate-data>`.


Examples
--------

.. figure:: /images/modeling-duplicate-example.png

   The mesh ``Cone.006`` of object ``Cone.002`` is being edited.
   The mesh's Unique data-block ID name is highlighted in the Outliner.


The cone in the middle has been (1) link duplicated to the left and (2) duplicated to the right.

- The duplicated right cone is being edited, the original cone in the middle remains unchanged.
  The mesh data has been copied, not linked.
- Likewise, if the right cone is edited in object mode, the original cone remains unchanged.
  The new object's transform properties or data-block is a copy, not linked.
- When the right cone was duplicated, it inherited the material of the middle cone.
  The material properties were linked, not copied.

See above if you want separate copies of the data-blocks normally linked.


Linked Duplicates
=================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Object --> Duplicate Linked`
   | Hotkey:   :kbd:`Alt-D`


You also have the choice of creating a *Linked Duplicate* rather than a *Duplicate*;
this is called a deep link.
This will create a new object with **all** of its data linked to the original object.
If you modify one of the linked objects in *Edit Mode*,
all linked copies are modified. Transform properties (object data-blocks) still remain copies,
not links, so you still can rotate, scale, and move freely without affecting the other copies.
Reference Expl. :ref:`Duplicate Example <expl-object-link-duplicate>` for the discussions below.

Linked
   In the *Duplicate Objects* Operator panel the *Linked* checkbox is checked unlike with *Dublicate*.

.. hint::

   If you want to make changes to an object in the new linked duplicate independently of the original object,
   you will have to manually make the object a "single-user" copy by :kbd:`LMB`
   the number in the *Object Data* panel of the Properties editor. (See :ref:`ui-data-block`.)

.. seealso:: 

   :ref:`data-system-datablock-make-single-user` for unlinking data-blocks.


.. _expl-object-link-duplicate:

Examples
--------

.. figure:: /images/modeling-duplicate-linked-example.png

   The object ``Cone.001`` was linked duplicated.
   Though both these cones are separate objects with unique names,
   the single mesh named Cone, highlighted in the Outliner, is shared by both.


The left cone is a *Linked Duplicate* of the middle cone (using :kbd:`Alt-D`).

- As a vertex is moved in *Edit Mode* in one object, the same vertex is moved in the original cone as well.
  The mesh data are links, not copies.
- In contrast, if one of these two cones is rotated or rescaled in object mode, the other remains unchanged.
  The transform properties are copied, not linked.
- As in the previous example, the newly created cone has inherited the material of the original cone.
  The material properties are linked, not copied.

A common table has a top and four legs. Model one leg,
and then make linked duplicates three times for each of the remaining legs.
If you later make a change to the mesh, all the legs will still match.
Linked duplicates also apply to a set of drinking glasses,
wheels on a car... anywhere there is repetition or symmetry.


.. seealso:: Linked Library Duplication

   :doc:`Linked Libraries </data_system/linked_libraries>` are also a form of duplication.
   Any object or data-block in other blend-files can be reused in the current file.

.. hint::

   If you want transform properties (i.e. object data-blocks) to be "linked",
   see the page on :doc:`parenting </editors/3dview/object/properties/relations/parents>`.
