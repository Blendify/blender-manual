
*************
Configuration
*************

Here are some preferences that you may wish to set initially.
The full list and explanation of the user preferences are documented in the section
:doc:`User Preferences </preferences/index>`.


Language
========

At :menuselection:`File --> User Preferences --> System`, enable *International Fonts* to choose the
``Language`` and what to translate from ``Interface``, ``Tooltips`` and ``New Data``.

See :ref:`prefs-system-international` for details.


Input
=====

If you have a compact keyboard without a separate number pad enable
:menuselection:`File --> User Preferences --> Emulate Numpad`.

If you don't have a middle mouse button you can enable
:menuselection:`File --> User Preferences --> Emulate 3 Button Mouse`.

See :doc:`/preferences/input` for details.


File and Paths
==============

At :menuselection:`File --> User Preferences --> File`
you can set options such as what external ``Image Editor`` to use,
such as GIMP or Krita, and the Animation Player.

The ``Temp`` directory sets where to store files such as temporary renders and auto-saves.

.. tip::

   The ``//`` at the start of each path in Blender means the directory of the currently opened blend-file,
   used to reference relative paths.

If you trust the source of your blend-files, you can enable *Auto Run Python Scripts*.
This option is meant to protect you from malicious Python scripts that someone can include inside a Blender file.
This would not happen by accident,
and most users leave this option on to automatically run scripts often used in advanced rigs
(such as ``Rigify`` that controls the skeleton of a human rig).

See :doc:`/preferences/file` for details.
