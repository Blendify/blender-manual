
************
Startup File
************

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`File --> Save Startup File`
   | Hotkey:   :kbd:`Ctrl-U`


Saves the current file as the default Blender file ``startup.blend``.
This file is loaded every time Blender is opened or a new file is generated (:menuselection:`File --> New`).

It contains the default :doc:`startup scene </editors/3dview/startup_scene>` included with Blender.
This startup scene can be replaced by your own customized setup.

To change the startup scene, make all of the desired changes to the current scene or
current file and :menuselection:`File --> Save Startup File`.


Saving the ``startup.blend`` still stores user preferences in the file.
Only if a ``userpref.blend`` exists, it uses the preferences from that file.

ToDo: Restore :ref:`factory-settings`.
