
***************
  Introduction
***************

When starting Blender, the splash screen appears.
On the left side are links to official web pages, and on the right are your most recently opened projects.

To close the splash screen start a new project, you can press :kbd:`Esc` or click anywhere
inside the Blender Window (except on the splash screen).

.. figure:: /images/blender_default_startup.png
   :align: center
   :width: 75%

   After closing splash screen, this is what the default Blender window looks like.

Blender's user interface is consistent across all platforms.
The interface can be customized to match specific tasks using Screen Layouts,
which can then be named and saved for later use.

Blender also makes heavy use of keyboard shortcuts to speed up work and allows customization of the
:doc:`keymap </interface/input_devices>`.


User Interface Principles
=========================

.. figure:: /images/getting_started_basics_interface_introduction_03.jpg

   This is an example of Blender's multiple window support.

Non Overlapping
   The UI is designed to allow you to view all relevant options and tools at a glance
   without pushing or dragging editors around.

Non Blocking
   Tools and interface options do not block the user from any other parts of Blender.
   Blender typically doesn't use pop-up boxes
   (requiring users to fill in data before running an operation).

Non Modal Tools
   Tools can be accessed efficiently without taking time to select between different tools.
   Many tools use consistent and predictable,
   mouse and keyboard actions for interaction.


Screen Elements
===============

.. figure:: /images/getting_started_basics_interface_introduction_05.png
   :align: right
   :width: 350

The Blender window is organized into one or more *Areas* with each area
containing an *Editor*. Editors are divided into a `Header`_ and one or more
`Regions`_. Regions can have smaller structuring elements like `panels`_ with
buttons, controls and widgets placed within them.

The composition of various Areas with predefined Editors in them is
called a *Screen Layout*. By default Blender starts up with a layout of
5 Editors as shown in the image below.

.. figure:: /images/getting_started_basics_interface_introduction_02.png

   Blender's default Screen Layout with 5 Editors: Info (1), 3D View
   (2), Outliner (3), Properties (4) and Timeline (5)


Components of an Editor
=======================

In general an editor provides a way to view and modify your work through
a specific part of Blender.

The image below shows the 3D View as an example of an editor.

.. figure:: /images/getting_started_basics_interface_introduction_04.png

   The 3D View

Editors are consistently organized into following parts:


Regions
-------

At least one region of an editor is always visible. It’s called the
main region and is the most prominent part of the editor. In the
3D View above this is marked with a green frame.

Aside from that there can be more regions available. In the 3D View above
these are the *Toolshelf* (toggle visibility with :kbd:`T`) on the
left side and the *Properties* (toggle visibility with :kbd:`N`) on
the right side. They’re marked with red frames. Additional regions
mostly show context-sensitive content.

Each editor has a specific purpose, so the main region and the
availability of additional regions are different between editors.
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

A header is a small horizontal part of an editor and sits either at the top or bottom of the area.
It acts as a container for menus and commonly used tools.
Much like additional regions the header can be hidden.

The 3D View above the header is marked with a purple frame.

.. list-table:: Useful Hotkeys
   :widths: 15 85

   * - :kbd:`F5`
     - Move Header from Top to Bottom (mouse pointer must be over it)

See: :doc:`Headers </interface/window_system/headers>` for details.


Panels
======

.. figure:: /images/getting_started_basics_interface_introduction_06.png
   :align: right

The smallest organizational unit in the user interface is a panel,
which can be collapsed to hide its contents by clicking on its header.
This is where the buttons, menus, checkboxes, etc. are located.

Panels are usually found in the side regions of an editor,
but also make up most of the :doc:`Properties Editor </editors/properties/index>`'s main region.

In the image on the right there are 3 panels: **Transform**, **Edit**
and **History**. The edit panel is expanded and the other 2 panels are
collapsed. Note that you can change the order of panels
by clicking on the handle in the upper right corner of a panel's title.

See: :doc:`panels </interface/panels>` for details.


Tabs
====

.. figure:: /images/getting_started_basics_interface_introduction_07.png
   :align: right

The Toolshelf has been further structured
into a set of context sensitive vertical tabs.

In the image to the right you can see the tabs: **Tools**, **Create**, etc.
The **Tools** tab is currently selected, showing a set of panels containing various tools.


Pinning
-------

Often it is desirable to view panels from different
tabs at the same time. This has been solved
by making panels pinnable.

A pinned panel remains visible regardless of which tab has been selected.
You can pin a panel by :kbd:`Shift` clicking its header, or by right clicking on the header and choosing *Pin*.

Shown in the image above is an example of the *Mesh Options* pinned in the tools tab.

