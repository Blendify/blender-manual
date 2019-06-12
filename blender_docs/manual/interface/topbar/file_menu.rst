*********
File Menu
*********

The options to manage files are:

New :kbd:`Ctrl-N`
   Clears the current scene and loads the selected application template.
Open :kbd:`Ctrl-O`
   :ref:`Open <files-blend-open>` a blend-file.
Open Recent :kbd:`Shift-Ctrl-O`
   Displays a list of :ref:`recently <other-file-open-options>` saved blend-files to open.
Revert
   Reopens the current file to its last saved version.
Recover
   Recover Last Session
      This will load a blend-file that Blender automatically saves just before exiting.
      So this option enables you to :doc:`recover </troubleshooting/recover>`
      your last work session, e.g. if you closed Blender by accident.
   Recover Auto Save
      This will open an automatically saved file
      to :doc:`recover </troubleshooting/recover>` it.
Save :kbd:`Ctrl-S`
   :ref:`Save <files-blend-save>` the current blend-file.
Save As :kbd:`Shift-Ctrl-S`
   Opens the File Browser to specify file name and location of :ref:`save <files-blend-save>`.
Save Copy
   :ref:`Saves <files-blend-save>` a copy of the current file.
Link
   Links data from an external blend-file (library) to the current scene.
   The edition of that data is only possible in the external library.
   *Link* and *Append* are used to load in only selected parts from another file.
   See :doc:`Linked Libraries </files/linked_libraries>`.
Append :kbd:`Shift-F1`
   Appends data from an external blend-file to the current scene.
   The new data is copied from the external file, and completely unlinked from it.
Data Previews
   Refresh Data-Block Previews
      Ensure data-block previews are available and up-to-date to be saved in .blend file.
      Previews only exist for some types like materials and textures.
   Batch-Generate Previews
      Generate previews for selected .blend files.
   Clear Data-Block Previews
      Clear previews for supported data-block types.
   Batch-Clear Previews
      Clear previews for selected .blend files.
Import
   Blender can use information stored in a variety of other format files which are created by
   other graphics programs. See :doc:`Import/Export </files/import_export>`.
Export
   Normally you save your work in a blend-file,
   but you can export some or all of your work to a format that can be processed by other graphics programs.
   See :doc:`Import/Export </files/import_export>`.
External Data
   External data, like texture images and other resources,
   can be stored inside the blend-file (packed) or as separate files (unpacked).
   Blender keeps track of all unpacked resources via a relative or absolute path.
   See :ref:`pack or unpack external Data <pack-unpack-data>`.

   Automatically Pack Into .blend
      This option activates the file packing.
      If enabled, every time the blend-file is saved, all external files will be saved (packed) in it.
   Pack All Into .blend
      Pack all used external files into the blend-file.
   Unpack Into Files
      Unpack all files packed into this blend-file to external ones.
   Make All Paths Relative
      Make all paths to external files :ref:`files-blend-relative_paths` to current blend-file.
   Make All Paths Absolute
      Make all paths to external files absolute. Absolute ones have full path from the system's root.
   Report Missing Files
      This option is useful to check if there are links to unpacked files that no longer exist.
      After selecting this option, a warning message will appear in the Info editor's header.
      If no warning is shown, there are no missing external files.
   Find Missing Files
      In case you have broken links in a blend-file, this option will help you to fix the problem.
      A File Browser will show up. Select the desired directory (or a file within that directory),
      and a search will be performed in it, recursively in all contained directories.
      Every missing file found in the search will be recovered.
      Those recoveries will be done as absolute paths,
      so if you want to have relative paths you will need to select *Make All Paths Relative*.

      .. note::

         Recovered files might need to be reloaded. You can do that one by one, or
         you can save the blend-file and reload it again, so that all external files are reloaded at once.
Defaults
   .. _startup-file:

   This menu manages the startup-file, used to store the default scene,
   work-space and interface displayed at startup and when opening creating a new file.

   Initially this contains the :doc:`startup scene </editors/3dview/startup_scene>` included with Blender.
   This can be replaced by your own customized setup.

   Save User Settings
      Saves the current blend file as the startup-file.
    Load Factory Settings
      Restores the default startup file and preferences.

   .. seealso:: :ref:`prefs-menu`.
Quit :kbd:`Ctrl-Q`
   Closes Blender and the file is saved into ``quit.blend``.
