
************
Introduction
************

Python is an interpreted, interactive,
object-oriented programming language. It incorporates modules, exceptions, dynamic typing,
very high level dynamic data types, and classes.
Python combines remarkable power with very clear syntax.

Python scripts are a powerful and versatile way to extend Blender functionality.
Most areas of Blender can be scripted, including Animation, Rendering, Import and Export,
Object Creation and the scripting of repetitive tasks.

To interact with Blender, scripts can make use of the tightly integrated API
(Application Programming Interface).


General information
===================

Links that are useful while writing scripts.

- `Python.org <http://www.python.org/>`__
  - General information about Python.
- `Blender Python API <http://www.blender.org/documentation/250PythonDoc/>`__
  - Official API documentation. Use this for referencing while writing scripts.
- `API introduction <http://www.blender.org/documentation/blender_python_api_2_72_release/info_quickstart.html>`__
  - A short introduction to get you started with the API. Contains examples.
- `CookBook <http://wiki.blender.org/index.php/Dev:2.5/Py/Scripts/Cookbook>`__
  - A section of handy code snippets (yet to be written)

Links that deal with distributing your scripts.

- `Sharing scripts <http://wiki.blender.org/index.php/Dev:Py/Sharing>`__
  - Information on how to share your scripts and get them included in the official Blender distribution.
- `Creating Add-ons <http://wiki.blender.org/index.php/Dev:2.5/Py/Scripts/Guidelines/Addons>`__
  - Add-ons are used to encapsulate and distribute scripts.
- `Extensions project <https://projects.blender.org/projects/bf-extensions/>`__
  - Project to maintain a central repository of extensions to Blender.


Getting Started - Manual links
==============================

The following links take you from the basics to the more advanced
concepts of Python scripting for Blender.


- :doc:`Text Editor </editors/text_editor>`
- :doc:`Python Console </editors/python_console>`


Getting Started - External links
================================

The following pages are not located on this wiki,
but contain a lot of good information to start learning how to write scripts for Blender.


- `Introductory tutorial by Satish Goda
  <http://sites.google.com/site/satishgoda/blender/learningblender25/introduction-to-blender-python-api>`__
  - Takes you from the beginning and teaches how to do basic API manipulations.
- `Ira Krakow's video tutorials <http://www.youtube.com/watch?v=vmhU_whC6zw>`__
  - First video in a series of video tutorials.
- `Quickstart guide <http://en.wikibooks.org/wiki/Blender_3D:_Blending_Into_Python/2.5_quickstart>`__
  - A quickstart guide for people who already have some familiarity with Python and Blender.
- `Examples thread <http://blenderartists.org/forum/showthread.php?t=164765>`__
  - A forum thread containing many short working script examples.
- `Introduction to Python
  <http://cgcookie.com/blender/2011/08/26/introduction-to-scripting-with-python-in-blender/>`__
  - A one hour video tutorial introducing Python and the Blender API.


Extending Blender
=================

Add-ons
-------

Add-ons are scripts you can enable to gain extra functionality within Blender,
they can be enabled from the user preferences.

Outside of the Blender executable,
there are literally hundreds of add-ons written by many people:


- Officially supported add-ons are bundled with Blender.
- Other **Testing** add-ons are included in development builds but not official releases,
  many of them work reliably and are very useful but are not ensured to be stable for release.

An Overview of all add-ons is available in this wiki in the
`Scripts Catalog <http://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts>`__
and in the `Extensions tracker <https://projects.blender.org/projects/bf-extensions/>`__.


Scripts
-------

Apart from add-ons there are also scripts you can use to extend Blenders functionality:

- Modules: Utility libraries for import into other scripts.
- Presets: Settings for Blender's tools and key configurations.
- Startup: These files are imported when starting Blender.
  They define most of Blender's UI, as well as some additional core operators.
- Custom scripts: In contrast to add-ons they are typically intended for one-time execution via the
  :doc:`text editor </editors/text_editor>`


Saving your own scripts
-----------------------

File location
^^^^^^^^^^^^^

All scripts are loaded from the ``scripts`` folder of the
:doc:`local, system and user paths </getting_started/installing_blender/directorylayout>`.

You can setup an additional search path for scripts in
:ref:`prefs-file_paths` (*User Preferences* --> *File Paths*).


Installation
^^^^^^^^^^^^

Add-ons are conveniently installed through Blender in the *User Preferences* -->
*Add-ons* window. Click the *Install from File...* button and select the
``.py`` or ``.zip`` file.

To manually install scripts or add-ons place them in the ``add-ons``,
``modules``,
``presets`` or ``startup`` directory according to their type.
See the description above.

You can also run scripts by loading them in the :doc:`text editor </editors/text_editor>` window.


