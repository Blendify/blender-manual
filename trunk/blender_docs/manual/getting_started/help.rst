  
***********
Help System
***********

Blender has a range of built-in and web-based help options.


Tooltips
========

.. figure:: /images/ui_tooltip_example.png

   The Mouse pointer was Stopped for a while over the Render Engines List in the Info Editor.


When hovering your cursor over a button or setting,
it will show you the *Tooltip*, and related details depending on the button type,
such as the key-shortcut for a tool.

The *Python:* text included last may be of interest to you if you're an animator
or automating tasks, see :ref:`scripting-index`.


Context Sensitive Manual Access
===============================

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :kbd:`RMB`, :menuselection:`Online Manual`
   | Hotkey:   :kbd:`Alt-F1`


You may want to access help for a tool or area from within Blender.

Use the key-shortcut, or right-click menu to visit pages from this reference manual within Blender.
This opens a webpage relating to the button under the cursor, supporting both tool and value buttons.

.. note::

   We don't currently have 100% coverage,
   you may see an alert in the info header if some tools don't have a link to the manual.

   Other times buttons may link to more general sections of the documentation.


.. _help-menu:

Help Menu
=========

In the Info Editor headers *Help* menu is a group of web links.
The same links can also be found in the :ref:`splash`.

.. tip:: Browser and Internet Connection

   Some forms of Help start up your web browser and access the Blender Foundation's web servers.
   In order to do this, you must have configured a default web browser for your Operating System,
   and have a connection to the Internet.

.. figure:: /images/getting_started-help_menu.png
   :width: 165px
   :align: right

   Help Menu.


- :doc:`This is a link for the Official Blender Manual </contents>` -
  which you are now reading.
- `Release Log <https://wiki.blender.org/index.php/Dev:Ref/Release_Notes/>`__ -
  The release notes on the Web for the current Blender version.
- `Blender Website <https://www.blender.org/>`__ -
  The *blender.org* home page.
- `Blender Store <https://store.blender.org/>`__ -
  The Blender Store, where you can buy Training DVD's, books, t-shirts and other products.
- `Developer Community <https://www.blender.org/get-involved/>`__ -
  The *blender.org* "Get Involved" page. This is the launch page for Blender software development,
  bug tracking, patches and scripts, education and training, documentation development and functionality research.
- `User Community <https://www.blender.org/support/user-community/>`__ -
  Lists of many different support venues.
- `Report a Bug <https://developer.blender.org/maniphest/task/create/?project=2&type=Bug>`__
  The Blender Bug Tracker.

  Note: in order to Report a Bug, you must register at the website.


Scripting Reference
-------------------

- `Python API Reference <https://www.blender.org/api/blender_python_api_current/>`__ -
  Python application programming interface (API).
- *Operator Cheat Sheet* - Creates the ``OperatorList.txt`` text-block, which you can access in the *Text Editor*.
  You can also use Blender Search to generate the file. The lists the available Python operators.


.. _help-system_info:

Save System Info
----------------

Access :menuselection:`Help --> Save System Info`


This extracts system information which can be useful to include in bug reports,
inspecting the configuration or diagnosing problems.

You will be prompted to save a text file ``system-info.txt``.

The text file contains sections:

Blender
   This section shows you the Blender version, details about the build configuration,
   and the path in which Blender is running.
Python
   The Python version you are using, showing the paths of the Python programming language paths.
Directories
   Paths used for scripts, data-files, presets and temporary files.

   Those directories are configured using the :doc:`User Preferences </preferences/file>` Editor.
OpenGL
   This section shows the OpenGL version, the name of the manufacturer,
   and lists the capabilities of your hardware & driver.


Info Editor Log
---------------

This is not exactly a Help menu, but it is related.
If you mouse-over the line between the Info Editor and the 3D then click and drag the Info Editor down a bit,
you can see the stream of Python calls that the UI is making when you work.
This can be useful for creating scripts.

.. figure:: /images/getting_started_help_python.png

   The Info Editor Log after adding a Cube.
