
***********
Help System
***********


Tooltips
========

.. figure:: /images/ui_tooltip_example.png

   The Mouse pointer was Stopped for a while over the Render Engines List in the Info Window.

When hovering your cursor over a button or setting,
it will show you the *Tooltip*, and related details depending on the button type,
such as the key-shortcut for a tool.

The *Python:* text, included last may be of interest to you if you're an animator
or interested in automating tasks.


Context Sensitive Manual Access
===============================

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :kbd:`RMB`, :menuselection:`Online Manual`
   | Hotkey:   :kbd:`Alt-F1`

You may want to access help for a tool or area from within Blender.

Use the key-shortcut, or right-click menu to visit pages from this reference manual within Blender.
This opens a web-page relating to the button under the cursor, supporting both tool and value buttons.

.. note::

   We don't currently have 100% coverage,
   you may see an alert in the info header if some tools don't have a link to the manual.

   Other times buttons may link to more general sections of the documentation.


Help Menu
=========

Blender has a range of built-in and web-based Help options.


General Web-based Help
----------------------

.. tip:: Browser and Internet Connection

   Some forms of Help start up your web browser and access the Blender Foundation's web servers.
   In order to do this, you must have configured a default web browser for your Operating System,
   and have a connection to the Internet.


.. figure:: /images/basics-help_menu.jpg

   Help menu


- :doc:`This is a link for the Official Blender Manual </contents>` -
  which you are now reading.
- `Release Log <http://www.blender.org/development/release-logs/>`__ -
  The release notes on the Web for the current Blender version.
- `Blender Website <http://www.blender.org/>`__ -
  The *blender.org* home page.
- `Blender e-Shop <http://www.blender3d.org/e-shop/>`__ -
  The Blender e-Store, where you can buy Training DVD's, books, t-shirts and other products.
- `Developer Community <http://www.blender.org/community/get-involved/>`__ -
  The *blender.org* "Get Involved" page. This is the launch page for Blender software development,
  bug tracking, patches and scripts, education and training, documentation development and functionality research.
- `User Community <http://www.blender.org/community/user-community/>`__ -
  Lists of many different support venues here.
- `Report a Bug <https://developer.blender.org/maniphest/task/create/?project=2&type=Bug>`__
  The Blender Bug Tracker page.

  Note: in order to Report a Bug, you must register at the website.


Scripting Reference
-------------------

- `Python API Reference <http://www.blender.org/documentation/250PythonDoc>`__ -
  Python application programming interface (API).
- *Operator Cheat Sheet* -
  Creates the ``OperatorList.txt`` text-block, which you can access in the *Text Editor*.
  You can also use Blender Search to generate the file. The lists the available Python operators.

  .. figure:: /images/basics-help-info-operator-cheat-sheet.jpg

     Info Window - Operator Cheat Sheet


System Info
-----------

Access :menuselection:`Help --> System Info`

This diagnostic tool extracts system information which can be useful to include in bug reports,
or inspecting Blender's configuration.

Creates a ``system-info.txt`` text block, which you can access in the Blender *Text Editor*.
The text lists various key properties of your system and Blender, which can be useful in diagnosing problems.

To read the Text, switch to the Blender *Text Editor* Window,
using the :doc:`Editor type Selector </editors/index>`, and then,
clicking on the button *Browse Text to be Linked* of the Text Editor, your text block will be shown in the Editor.
The ``system-info.txt`` will be in your list of Text-blocks.


The text file contains sections:

Blender
   This section of the info.txt shows you the Blender version, flags used when Blender was compiled,
   day and time when Blender was compiled, build system, and the path in which Blender is running.
Python
   The Python version you are using, showing the paths of the Python programming language paths.
Directories
   The Blender directories setup for ``scripts``, ``user scripts``, ``datafiles``, ``config``,
   ``scripts (internal)``,
   ``autosave`` directory and ``temp dir``.
   Those directories are configured using the :doc:`User Preferences </preferences/file>` Editor Window.
OpenGL
   This section will show you the version of OpenGL that you are using for Blender, the name of the manufacturer,
   version, vendor and a list with your card capabilities or OpenGL software capabilities.


.. figure:: /images/basics-help-info-window-system_info.jpg

   Info Window - Info.txt


Info Window Log
---------------

This is not exactly a Help menu, but it is related.
If you mouse-over the line between the Info window and the 3D then click and drag the Info window down a bit,
you can see the stream of Python calls that the UI is making when you work.
This can be useful in creating scripts.

.. figure:: /images/basics-help_info_log.jpg

   The Info Window Log after adding a Cube


Legacy Version Support
----------------------

FCurve/Driver fix
   Sometimes, when you load .blend's made from older versions of Blender (2.56 and previous),
   the Function Curves and Shapekey Drivers will not function correctly due to updates in the animation system.
   Selecting this option updates the FCurve/Driver data paths.
TexFace to Material Convert
   Convert old Texface settings into material. It may create new materials if needed.


Splash Screen
-------------

Access this by clicking on the Blender icon in the Info Window's header.

This displays the image where you can identify package and version.
At the top-right corner, you can see the Version and SVN (Subversion) revision (See Fig: Blender Splash Screen).
For example, in our Splash Screen, you can see the version **2.66.0** and the revision number **r54697**.
This can be useful to give to support personnel when diagnosing a problem.

There are some Internet Based Help options that are also present in the Blender
*Splash Screen*.
They are presented as the same links you will find at the *Help* Menu.


.. figure:: /images/ui_splash_screen_only.jpg

   Blender Splash Screen, Blender Version 2.66

