
***************
  Introduction
***************

Blender's User Interface is based on `OpenGL
<http://en.wikipedia.org/wiki/OpenGL>`__.
Thus its look and feel is consistent over all platforms.
The interface can be customized to match specific tasks using Screen Layouts,
which can then be named and saved for later reuse.

Blender also makes heavy use of keyboard shortcuts to speed up work and allows customization of the
:doc:`keymap <input_devices>`.

User Interface Principles
=========================

.. figure:: /images/getting_started_basics_interface_introduction_03.jpg


Non Overlapping
   The UI is designed to allow you to view all relevant options and tools at a glance
   without pushing or dragging Editors around.
   You can also open multiple Blender windows from one instance of Blender
   and distribute these windows over multiple monitors (see image above).

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

The Blender window is organized into one or more *Areas* with each area
containing an *Editor*. Editors are divided into a `Header`_ and one or more
`Regions`_. Regions can have smaller structuring elements like `Panels`_ with
buttons, controls and widgets placed within them.

The composition of various Areas with predefined Editors in them is
called a *Screen Layout*. By default Blender starts up with a layout of
5 Editors as shown in the image below.

.. figure:: /images/getting_started_basics_interface_introduction_02.png

   Blender's default Screen Layout with 5 Editors: Info (1), 3D View
   (2), Outliner (3), Properties (4) and Timeline (5)


Anatomy of an Editor
====================

In general an Editor provides a way to view and modify your work through
a specific part of Blender.

The image below shows the 3D View as an example for an Editor.

.. figure:: /images/getting_started_basics_interface_introduction_04.png

   The 3D View

Editors are consistently organized into following parts:


Regions
-------

At least one Region of an Editor is always visible. It’s called the
Main Region and is the most prominent part of the Editor. In the
3D View above this is marked with a green frame.

Beside that there can be more Regions available. In the 3D View above
these are the *Toolshelf* (toggle visibility with :kbd:`T`) on the
left side and the *Properties* (toggle visibility with :kbd:`N`) on
the right side. They’re marked with red frames. Additional Regions
mostly show context-sensitive content.

Each Editor has a specific purpose, so the Main Region and the
availability of additional regions are different between Editors.
See specific documentation about each editor in the
:doc:`Editors </editors/index>` chapter.

.. list-table:: Useful Hotkeys
   :widths: 15 85

   * - :kbd:`T`
     - Toggle visibility of Toolshelf Region
   * - :kbd:`N`
     - Toggle visibility of Properties Region
   * - :kbd:`F5`
     - Flip the Region under the mouse pointer to the opposite side


Header
------

A Header is a small horizontal part of an Editor and sits either at the
top or bottom of the Area the Editor is in. It acts as a container for
menus and commonly used tools. Like additional Regions the Header can
be hidden.

In the 3D View above the Header is marked with a purple frame.

.. list-table:: Useful Hotkeys
   :widths: 15 85

   * - :kbd:`F5`
     - Move Header from Top to Bottom (mouse pointer must be over it)

See: :doc:`Headers </getting_started/basics/interface/window_system/headers>` for details.


Panels
======

.. figure:: /images/getting_started_basics_interface_introduction_06.png
   :align: right

The smallest organizational unit in the user interface is a panel,
which can be collapsed to hide its contents by clicking on its header.
This is where the buttons, menus, checkboxes, etc. are located.

Panels are usually found in the side regions of an Editor,
but also make up most of the :doc:`Properties Editor </editors/properties/index>`'s main region.

In the image on the right there are 3 Panels: **Transform**, **Edit**
and **History**. The Edit Panel is expanded and the other 2 Panels are
collapsed. Note that you can change the order of Panels
by clicking on the handle in the upper right corner of a Panel's title.

See: :doc:`Panels </getting_started/basics/interface/panels>` for details.


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
