
***************
  Introduction
***************

Blender's User Interface is based on `OpenGL <http://en.wikipedia.org/wiki/OpenGL>`__
Thus its look and feel is consistent over all platforms.
The interface can be customized to match specific tasks using Screen Layouts,
which can then be named and saved for later reuse.

Blender also makes heavy use of keyboard shortcuts to speed up work and allows customization of the
:doc:`keymap <keyboard_and_mouse>`.
 
User Interface Principles
=========================

.. figure:: /images/getting_started_basics_interface_introduction_03.jpg
   :align: center
   :width: 100%


Non Overlapping
   The UI is designed to allow you to view all relevant options and tools at a glance
   without pushing or dragging Editors around.
   You can also open multiple Blender windows from one instance of Blender
   and distribute these Windows over multiple monitors (see image above).

Non Blocking
   Tools and interface options do not block the user from any other parts of Blender.
   Blender doesn't use pop-up boxes which require the user to fill in data before
   executing an operation.

Non Modal
   User input should remain as consistent and predictable as possible
   without changing commonly used methods (mouse, keyboard) on the fly.

Screen Elements
===============

.. figure:: /images/getting_started_basics_interface_introduction_05.png
   :align: right
   :width: 350

The Blender window is organized into Editors, 
which are composed of one `Main Region`_, one `Header`_ and usually two `Sidebars`_ which contain `Panels`_
of buttons, controls and widgets.

The composition of the various Editors is called a "Screen Layout".
By default Blender starts up with a layout of 5 editors (see below)

.. figure:: /images/getting_started_basics_interface_introduction_02.png
   :align: Center
   :width: 100%

   Blender's default Screen Layout contains 5 Editors


Anatomy of an Editor
====================

.. figure:: /images/getting_started_basics_interface_introduction_04.png
   :align: center
   :width: 100%

   The 3D View

In general, an Editor opens a view for editing content of a specific part of Blender.

Editors are consistently organized into following parts:


Sidebars
--------

(*Shown above in red*)

These are vertical areas on the sides of the Editor which can be shown/hidden
on demand by using hotkeys (see below).

On the left is the **Toolshelf** (displayed using :kbd:`T`) which contains functions that are performed in that Editor,
organized by a set of `Tabs`_. In the 3D View, the Toolshelf is split horizontally to contain the **Operator** region,
which contains optional properties of the last-performed action.

On the right is the **Properties** sidebar
(displayed using :kbd:`N`, not to be confused with the :doc:`Properties Editor </editors/properties>`) which contains
both static and context-sensitive options for the editor and the current selection.


Headers
-------

(*Shown above in purple*)

Headers are horizontal areas at the top or bottom of an Editor used
as containers for menus and commonly used tools.


Main Region
-----------

(*Shown above in green*)

This is the most prominent part of the Editor and where most interaction happens.

While both Headers and sidebars can be hidden, the main region will always be visible.

Each Editor has a specific purpose, so the main region of each Editor are all very different from each other.
See specific documentation about each editor in the :doc:`Editors </editors/index>` chapter.


Panels
======

.. figure:: /images/getting_started_basics_interface_introduction_06.png
   :align: right

The smallest organizational unit in the user interface is a panel,
which can be collapsed to hide its contents by clicking on its header.
This is where the buttons, menus, checkboxes, etc. are located.

.. tip::

   You can simultaneously show one panel and hide all others by holding :kbd:`Ctrl` and
   clicking on arrow to the left of the Panel title.

Panels are usually found in the sidebars of an Editor,
but also make up most of the :doc:`Properties Editor </editors/properties>`'s main region.

In the image on the right there are 3 Panels: **Transform**, **Edit** 
and **History**. The Edit Panel is expanded and the other 2 Panels are
collapsed. Note that you can change the order of Panels
by clicking on the handle in the upper right corner of a Panel's title.


Tabs
====

.. figure:: /images/getting_started_basics_interface_introduction_07.png
   :align: right

The Toolshelf has been further structured 
into a set of context dependent vertical Tabs.

In the image aside you can see the Tabs **Tools**, **Create**, etc.
The **Tools** Tab is currently selected, showing a set of Panels containing various tools.

Pinning
-------

Often it is desirable to view panels from different
tabs at the same time. This has been solved
by making panels pinnable. 

A pinned Panel remains visible regardless of which Tab has been selected.
You can pin a Panel by :kbd:`Shift` clicking its header, or by right clicking on the header and choosing *Pin*.

In the image above you can see the **Mesh Options** Panel which is from the Options Tab,
even though the Tools Tab is currently selected.
