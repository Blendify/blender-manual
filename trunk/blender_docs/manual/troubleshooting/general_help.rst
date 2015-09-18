
..    TODO/Review: {{review}} .

***********
Help system
***********

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`Help`


Blender has a range of built-in and web-based Help options.


General Web-based Help Options
==============================

.. tip:: Browser and Internet Connection

   Some forms of Help start up your web browser and access the Blender Foundation's web servers.
   In order to do this, you must have configured a default web browser for your Operating System,
   and have a connection to the Internet.


.. figure:: /images/basics-help_menu.jpg

   Help menu


- :doc:`This is a link for the Official Blender Manual </contents>`,
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


Scripting Options
=================

- `Python API Reference <http://www.blender.org/documentation/250PythonDoc>`__ -
  Python application programming interface (API).
- *Operator Cheat Sheet* -
  Creates the ``OperatorList.txt`` text-block, which you can access in the *Text Editor*.
  You can also use Blender Search to generate the file. The lists the available Python operators.

  .. figure:: /images/basics-help-info-operator-cheat-sheet.jpg

     Info Window - Operator Cheat Sheet


Diagnostics Options
===================

Access :menuselection:`Help --> System Info`

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


- *Toggle System Console* - Reveals the command window that contains Blender's *stdout* messages.
  Can be very useful for figuring out how the UI works, or what is going wrong if you encounter a problem.
  Even more information is available here, if you invoke Blender as *blender -d*.
  This menu item only shows up on Windows.

  - In all Operating Systems, to see this information, simply run *blender* from the command-line.
  - On Linux, if you ran Blender from the GUI, you can see the output in *~/.xsession-errors*
  - On Mac OS X, you can open Console.app (in the Utilities folder in Applications) and check the Log there.


- *Info Window Log* - This is not exactly a Help menu, but it is related.
  If you mouseover the line between the Info window and the 3D then click and drag the Info window down a bit,
  you can see the stream of Python calls that the UI is making when you work.
  This can be useful in creating scripts.


.. figure:: /images/basics-help_info_log.jpg

   The Info Window Log after adding a Cube


Legacy Version Support
======================

FCurve/Driver fix
   Sometimes, when you load .blend's made from older versions of Blender (2.56 and previous),
   the Function Curves and Shapekey Drivers will not function correctly due to updates in the animation system.
   Selecting this option updates the FCurve/Driver data paths.
TexFace to Material Convert
   Convert old Texface settings into material. It may create new materials if needed.


Splash Screen
=============

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


Other Help Options
******************

Here we explain the two new features added for Blender,
*Blender Search* and the recoded *Tooltips*.

Blender Search
==============

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Hotkey:   :kbd:`Spacebar`


.. figure:: /images/basics-help-search-keyword-render.jpg

   Blender Search - Render


The Blender Search feature, called the *Search Menu*,
Activate by pressing :kbd:`Spacebar`, Blender will present you with a search pop-up,
no matter at which Blender Editor your Mouse pointer is located
(except the *Text Editor* Window and *Python console*),
and a field for you to type in.
Just type what you need and Blender will present you a list of available options.
You can click on the appropriate function for you, or search through them using your keyboard,
type :kbd:`Return` to accept, or :kbd:`Esc` to leave.
Clicking outside of the Blender Search Window or taking the Mouse pointer away,
will also leave Blender Search.

The Image at the right shows Blender Search when we type the word *Render* inside the field.
If you continue typing,
your search keywords will refine your search and if no named operator can be found,
the small Pop Up Window for the Blender Search will stay blank.


.. admonition:: How it works
   :class: refbox

   Every Blender Internal Operator can use a defined name, some of them are predefined names for the user.
   For example, the *Render* command is a named Python call,
   the appropriate Operator is ``Python: bpy.ops.render.render()`` , but for the user, it is called Render.
   All of those *user* names that were previously attributed for
   Python operators can searched for using *Blender Search*.


Tooltips
========

.. figure:: /images/basics-help-tooltip-render-engine.jpg

   The Mouse pointer was Stopped for a while over the Render Engines List in the Info Window.
   The normal Tooltip is in white and the Python operator is displayed in grey


The *Tooltips* in Blender were completely recoded,
and every time you hover your Mouse over a Button, a Command,
Numeric Fields or things that are related to Operators, staying for a while,
it will show you not only the normal Tooltip, but also the specific related operator.
Those operators are useful for lots of tasks, from Python Scripts to Keymaps.
In the example Image at the right, we pointed our Mouse over the Info Window,
specifically over the list of the Render engines available, waited for a while,
and the Tooltip with the appropriate operator was shown. In our example,
it shows the Tooltip *Engine to Use for Rendering* in white, and ``Python: RenderSettings.engine`` in grey,
which is the Operator associated with the function.


