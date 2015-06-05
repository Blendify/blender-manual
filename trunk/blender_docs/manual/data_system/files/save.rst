
************
Saving Files
************

.. admonition:: Reference
   :class: refbox

   | Editor:   Info
   | Menu:     File

There are a number of slightly different methods you can use to save your blend file to your hard drive:

Save (:kbd:`Ctrl-S`, :kbd:`Ctrl-W`)
   Save an existing blend file over itself.
Save As (:kbd:`Ctrl-Shift-S`, :kbd:`F2`)
   Choose a file to save the blend to.
Save Copy (:kbd:`Ctrl-Alt-S`)
   Choose a file to save the blend to, but return to editing the original file upon completion.
   This can be used to save backups of the current working state without modifying the original file.

If the file name doesn't end with ``.blend``, the extension is automatically appended.
If a file with the same given name already exists, the text field will turn red as a warning.


.. figure:: /images/File-savewindow.jpg


Save Versions
=============

Depending on the number of
:doc:`Save Versions </getting_started/basics/undo_and_redo#save_and_auto_save>` you have set,
all existing files with the same name will be rotated to a ``.blend#`` file extension,
where ``#`` is ``1``, ``2``, ``3``, etc.

So, if you were working on ``MyWork.blend``, and saved it,
the existing ``MyWork.blend`` is renamed to ``MyWork.blend1``, and a new ``MyWork.blend`` is saved.
This way, you have hot backups of old saved versions in case you need to massively undo changes,
or accidentally saved over the wrong file.

.. tip::

   Use the **plus**/**minus** buttons to the right of the file name,
   or :kbd:`NumpadPlus`/:kbd:`NumpadMinus` to increase/decrease a number at the end of the file name
   (e.g. changing ``file_01.blend`` to ``file_02.blend``).


Options
=======

The save options appear at the bottom of the sidebar.

Compress File
   When enabled, the saved file will be smaller, but take longer to save and load.
Remap Relative
   This option remaps :doc:`relative paths </data_system/files/relative_paths>`
   (such as linked libraries and images) when saving a file in a new location.
Save Copy
   This option saves a copy of the actual working state, but does not make the saved file active.
Legacy Mesh Format
   Save the blend file, but ignore faces with more than 4 vertices ("ngons")
   so that older versions of Blender (before 2.63) can open it.
