.. _getting-started_installing-config-directories:

***********************
Configuring Directories
***********************

There are three different directories Blender may use,
their exact locations are operating system dependent.

LOCAL
   Location of configuration and runtime data (for self-contained bundle)
USER
   Location of configuration files (normally in the user's home directory).
SYSTEM
   Location of runtime data for system wide installation (may be read-only).

For system installations both **SYSTEM** and **USER** directories are needed.

For locally extracted Blender distributions, the user configuration and data runtime data are
kept in the same sub-directory, allowing multiple Blender versions to run without conflict,
ignoring the **USER** and **SYSTEM** files.


Platform Dependent Paths
========================

Here are the default locations for each system:

.. note::
   The path ``./|BLENDER_VERSION|/`` is relative to the Blender executable &
   used for self-contained bundles distributed by official blender.org builds.


Linux
-----

LOCAL
   .. parsed-literal:: ./|BLENDER_VERSION|/
USER
   .. parsed-literal:: $HOME/.config/blender/|BLENDER_VERSION|/
SYSTEM
   .. parsed-literal:: /usr/share/blender/|BLENDER_VERSION|/

.. note::
   The **USER** path will use ``$XDG_CONFIG_HOME`` if its set:

   .. parsed-literal:: $XDG_CONFIG_HOME/blender/|BLENDER_VERSION|/


macOS
-----

LOCAL
   .. parsed-literal:: ./|BLENDER_VERSION|/
USER
   .. parsed-literal:: /Users/$USER/Library/Application Support/Blender/|BLENDER_VERSION|/
SYSTEM
   .. parsed-literal:: /Library/Application Support/Blender/|BLENDER_VERSION|/

.. note::

   macOS stores the Blender binary in ``./blender.app/Contents/MacOS/blender``,
   so the local path to data & config is:

   .. parsed-literal:: ./blender.app/Contents/MacOS/|BLENDER_VERSION|/


MS-Windows
----------

LOCAL
   .. parsed-literal:: .\\\ |BLENDER_VERSION|\\
USER
   .. parsed-literal:: %USERPROFILE%\\AppData\\Roaming\\Blender Foundation\\Blender\\\ |BLENDER_VERSION|\\
SYSTEM
   .. parsed-literal:: %USERPROFILE%\\AppData\\Roaming\\Blender Foundation\\Blender\\\ |BLENDER_VERSION|\\


Path Layout
===========

This is the path layout which is used within the directories described above.

Where ``./config/startup.blend`` could be ``~/.blender/|BLENDER_VERSION|/config/startup.blend`` for example.

``./autosave/ ...``
   Autosave blend-file location. (Windows only, temp directory used for other systems).

   Search order: ``LOCAL, USER``.

``./config/ ...``
   Defaults & session info.

   Search order: ``LOCAL, USER``.

``./config/startup.blend``
   Default file to load on startup.

``./config/userpref.blend``
   Default preferences to load on startup.

``./config/bookmarks.txt``
   File Browser bookmarks.

``./config/recent-files.txt``
   Recent file menu list.

``./datafiles/ ...``
   Runtime files.

   Search order: ``LOCAL, USER, SYSTEM``.

``./datafiles/locale/{language}/``
   Static precompiled language files for UI translation.

``./scripts/ ...``
   Python scripts for the user interface and tools.

   Search order: ``LOCAL, USER, SYSTEM``.

``./scripts/addons/*.py``
   Python add-ons which may be enabled in the User Preferences include import/export format support,
   render engine integration and many handy utilities.

``./scripts/addons/modules/*.py``
   Modules for add-ons to use (added to Python's sys.path).

``./scripts/addons_contrib/*.py``
   Another add-ons directory which is used for community maintained add-ons (must be manually created).

``./scripts/addons_contrib/modules/*.py``
   Modules for ``addons_contrib`` to use (added to Python's sys.path).

``./scripts/modules/*.py``
   Python modules containing our core API and utility functions for other scripts to import
   (added to Python's ``sys.path``).

``./scripts/startup/*.py``
   Scripts which are automatically imported on startup.

``./scripts/presets/{preset}/*.py``
   Presets used for storing user defined settings for cloth, render formats etc.

``./scripts/templates_py/*.py``
   Example scripts which can be accessed from :menuselection:`Text Editor --> Templates --> Python`.

``./scripts/templates_osl/*.py``
   Example OSL shaders which can be accessed from
   :menuselection:`Text Editor --> Templates --> Open Shading Language`.

``./python/ ...``
   Bundled Python distribution.

   Search order: ``LOCAL, SYSTEM``.


.. _temp-dir:

Temporary Directory
===================

The temporary directory is used to store various files at runtime
(including render layers, physics cache, copy-paste buffer and crash logs).

The temporary directory is selected based on the following priority:

- User Preference (see :ref:`prefs-file-paths`).
- Environment variables (``TEMP`` on MS-Windows, ``TMP`` & ``TMP_DIR`` on other platforms).
- The ``/tmp/`` directory.
