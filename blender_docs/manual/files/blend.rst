
***********
Blend Files
***********


.. _files-blend-open:

Opening Files
=============

.. figure:: /images/data-system_files_open_file-browser-open.png

   The File Browser.


Usage
-----

.. admonition:: Reference
   :class: refbox

   :Menu:      :menuselection:`Info Editor --> File --> Open`
   :Hotkey:    :kbd:`Ctrl-O` or :kbd:`F1`

The upper text field displays the current directory path,
and the lower text field contains the selected filename.

.. warning:: For Linux and macOS Users

   When exiting you are **not** asked to save unsaved changes to the scene you were previously working on.
   So take care to save your work.

   On MS-Windows, there is a :ref:`prefs-save-load` option to warn on exit.


Options
-------

.. _file-load-ui:

Load UI
   When *Load UI* is checked, it loads the screen layout saved inside each blend-file,
   replacing the current layout. Otherwise the file screen layout is ignored.

   .. tip::

      If you want to work on the blend-file using your own defaults, start a fresh Blender,
      then open the File Browser and turn off the *Load UI* button, and then open the file.

Trusted Source
   When enabled, Python scripts and drivers that may be included in the file will be run automatically.
   Enable this only if you created the file yourself,
   or you trust that the person who gave it to you did not include any malicious code with it.
   See :doc:`Python Security </advanced/scripting/security>` to configure default trust options.


.. _other-file-open-options:

Other File Open Options
-----------------------

From the *File* menu, you can also open files with the following tools:

Open Recent
   Lists recently used files. Click on one to load it in.
Recover Last Session
   This will load the ``quit.blend`` file Blender automatically saved just before exiting.
   This option enables you to recover your last work session if, for example, you closed Blender by accident.
Recover Auto Save
   This will allow you to open an automatically saved file to recover it.

.. seealso::

   :ref:`Auto Saves <troubleshooting-file-recovery>`


.. _files-blend-save:

Saving Files
============

.. admonition:: Reference
   :class: refbox

   :Menu:      :menuselection:`File --> Save`

There are a number of slightly different methods you can use to save your blend-file to your hard drive:

Save :kbd:`Ctrl-S`
   Save an existing blend-file over itself.
Save As :kbd:`Shift-Ctrl-S`
   Choose a file to save the blend-file to.
Save Copy
   Choose a file to save the blend-file to, but return to editing the original file upon completion.
   This can be used to save backups of the current working state without modifying the original file.

.. warning::

   If a file with the same given name already exists,
   the text field will turn red as a warning that the file will be overwritten.

.. figure:: /images/editors_file-browser_introduction_editor.png

.. tip::

   Use the *plus* or *minus* buttons to the right of the file name,
   or :kbd:`NumpadPlus`, :kbd:`NumpadMinus` to increase/decrease a number at the end of the file name
   (e.g. changing ``file_01.blend`` to ``file_02.blend``).


Options
-------

The save options appear in the operator panel.

Compress File
   When enabled, the saved file will be smaller, but take longer to save and load.
Remap Relative
   This option remaps :ref:`files-blend-relative_paths`
   (such as linked libraries and images) when saving a file in a new location.
Save Copy
   This option saves a copy of the actual working state but does not make the saved file active.

.. seealso::

   :ref:`Auto Save <troubleshooting-file-recovery>`


.. _files-blend-relative_paths:

Relative Paths
==============

Many blend-files reference external images or other linked blend-files.
A path tells Blender where to look for these files.
If the external files are moved, the blend-file that references them will not look right.

When you specify one of these external files, the default option is to make the path relative.
Blender stores a partial path evaluated relative to the directory location of the referencing blend-file.
This choice helps when you need to reorganize folders or move your files.

With a relative path, you can move the blend-file to a new location provided
the externally linked files are moved along with it.
For example, you could send someone a folder that contains a blend-file
and a sub-folder of external images that it references.

When relative paths are supported, the File Browser provides a *Relative Path* checkbox,
when entering the path into a text field, use a double slash prefix (``//``) to make it so.

Relative paths are the default but this can be changed
in the :doc:`File </editors/preferences/file_paths>` tab of the Preferences Editor.

.. note::

   You cannot enter relative paths into a new *untitled* blend-file.
   Save it before linking to external files.

.. hint::

   If it is necessary to relocate a blend-file relative to its linked resources,
   use Blender's File :ref:`Save As <files-blend-save>`
   function which has an option to *Remap Relative* file links.
