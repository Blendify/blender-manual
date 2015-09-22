
**************
Relative Paths
**************

Many Blender files reference external images or other linked .blend files.
A path tells Blender where to look for these files.
If the external files are moved, the blend file that references them won't look right.

When you specify one of these external files, the default option is to make the path relative.
Blender stores a partial path evaluated relative to the directory location of the referencing blend file.
This choice helps when you need to reorganize folders or move your files.

With a relative path you can move the .blend file to a new location provided
the externally linked files are moved along with it.
For example you could send someone a folder that contains a .blend file
and a sub-folder of external images that it references.

Most file selection windows provide a *Relative Path* check box,
or when you type in a path into a text field, use a double slash prefix (``//``) to make it so.

Relative paths is the default but this can be changed in the
:doc:`File Preferences Tab </preferences/file>`
of the User Preferences Editor.

.. note::
   You can't enter relative paths into a new *untitled* blend file.
   Save it before linking to external files.

.. hint::

   If it's necessary to relocate a blend file relative to its linked resources,
   use Blender's File :doc:`Save As</data_system/files/save>`
   function which has an option to *Remap Relative* file links.

