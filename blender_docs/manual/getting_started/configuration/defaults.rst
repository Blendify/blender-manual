.. TODO: use substitutions, see: https://stackoverflow.com/questions/56557296
.. |menu| unicode:: U+2630

********
Defaults
********

There are two areas where Blender defaults are stored.

Preferences
   The :ref:`Preferences <prefs-menu>` file stores key-map, add-ons theme and other options.
Startup File
   The :ref:`Startup File <startup-file>` stores the scene, Workspaces and interface which is displayed at startup
   and when loading a new file (:menuselection:`File --> New`).


Saving Defaults
===============

The user preferences are automatically saved when changed.

Changing the default startup file when Blender starts can be done via
:menuselection:`File --> Defaults --> Save Startup File`
See :ref:`Startup File <startup-file>`.


Loading Factory Settings
========================

You can revert your own customizations to Blender's defaults:

Preferences
   The :ref:`Preferences <prefs-menu>` Load Factory Settings.
Startup File & Preferences
   :menuselection:`File --> Defaults --> Load Factory Settings`.

.. note::

   After loading the factory settings, the preferences wont be auto-saved.

   See :ref:`prefs-menu` for details.
