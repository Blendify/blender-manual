
************
Saving Files
************

.. admonition:: Reference
   :class: refbox

   | Editor:   Info
   | Menu:     File

There are a number of slightly different methods you can use to save your blend-file to your hard drive:

Save :kbd:`Ctrl-S`, :kbd:`Ctrl-W`
   Save an existing blend-file over itself.
Save As :kbd:`Ctrl-Shift-S`, :kbd:`F2`
   Choose a file to save the blend-file to.
Save Copy :kbd:`Ctrl-Alt-S`
   Choose a file to save the blend-file to, but return to editing the original file upon completion.
   This can be used to save backups of the current working state without modifying the original file.

If the file name does not end with ``.blend``, the extension is automatically appended.
If a file with the same given name already exists,
the text field will turn red as a warning that the file will be overwritten.

.. figure:: /images/data_system_files_save_file-browser_save.jpg

.. tip::

   Use the *plus* or *minus* buttons to the right of the file name,
   or :kbd:`NumpadPlus`, :kbd:`NumpadMinus` to increase/decrease a number at the end of the file name
   (e.g. changing ``file_01.blend`` to ``file_02.blend``).


Options
=======

The save options appear in the operator panel.

Compress File
   When enabled, the saved file will be smaller, but take longer to save and load.
Remap Relative
   This option remaps :doc:`relative paths </data_system/files/relative_paths>`
   (such as linked libraries and images) when saving a file in a new location.
Save Copy
   This option saves a copy of the actual working state but does not make the saved file active.
Legacy Mesh Format
   Save the blend-file, but ignore faces with more than four vertices ("n-gons")
   so that older versions of Blender (before 2.63) can open it.


.. seealso::

   :ref:`Auto Save <troubleshooting-file-recovery>`
