
************************************
Recovering from mistakes or problems
************************************

Blender provides a number of ways for the user to recover from mistakes,
and reduce the chance of losing their work in the event of operation errors,
computer failures, or power outages.
There are two ways for you to recover from mistakes or problems:

At the :ref:`User Level <recover-options-for-actions>` (Relating to *Actions*)

- For your actions, there are options like *Undo*, *Redo* and an *Undo History*,
  used to roll back from mistakes under normal operation, or return back to a specific action.
- Blender also has new features like *Repeat* and *Repeat History*,
  and the new *Redo Last* which you can use in conjunction with the options listed.

At the :ref:`System Level <recover-options-for-files>` (Relating to *Files*)

- There are options to save your files like
  *Auto Save* that saves your file automatically over time, and *Save on Quit*,
  which saves your Blender file automatically when you exit Blender.

  .. note::

      In addition to these functions being enabled by default,
      the *Save on Quit* functionality cannot be disabled.


.. _recover-options-for-files:

Options for Files (System Level)
================================

Save and Auto Save
------------------

.. figure:: /images/basics-undo-and-redo-autosaveoptions.jpg
   :align: right

   Auto Save options


Computer crashes,
power outages or simply forgetting to save can result in the loss or corruption of your work.
To reduce the chance of losing files when those events occur,
Blender can use an *Autosave* function. The *File* tab of the
*User Preferences* window allows you to configure the two ways that Blender provides
for you to regress to a previous version of your work.

Save on Quit
   The function *Save on Quit* is enabled by default in Blender.
   Blender will always save your files when you quit the application under normal operation.
Save Versions
   This option tells Blender to keep the indicated number of saved versions of your file in your current working
   directory when you manually save a file.
   These files will have the extension: ``.blend1``, ``.blend2``, etc.,
   with the number increasing to the number of versions you specify. Older files will be named with a higher number.
   e.g. With the default setting of **2**, you will have three versions of your file: ``*.blend`` (your last save),
   ``*.blend1`` (your second last save) and ``*.blend2`` (your third last save).
Auto Save Temporary Files
   Checking this box tells Blender to *automatically* save a backup copy of your work-in-progress to the Temp
   directory (refer to the *File* panel in the *User Preferences* window for its location).
   This will also enable the *Timer (mins)*
   control which specifies the number of minutes between each Auto Save.
   The default value of the Blender installation is **5** (5 minutes). The minimum is **1**,
   and the Maximum is **60**
   (Save at every one hour).The Auto Saved files are named using a random number and have a ``.blend`` extension.


.. tip:: Compress Files

   The option to Compress files will try to compact your files whenever Blender is saving them. Large Scenes,
   dense Meshes, big Textures or lots of elements in your Scene will result in a big ``.blend`` being created.
   This option could slow down Blender when you quit,
   or under normal operation when Blender is saving your backup files. In fact,
   using this option you will trade processor time for file space.


Recovering Auto Saves
---------------------

Recover Last Session
   :menuselection:`File --> Recover Last Session` will open the ``quit.blend``
   that is saved into the *Temp* directory when you exit Blender.
   Note that files in your *Temp* directory are deleted when you reboot.


.. figure:: /images/basics-undo-display_file_date.jpg

   Blender File Browser


.. tip::

   When recovering files, you will navigate to your temporary folder.
   It is important, when browsing, to enable the detailed list view.
   Otherwise, you will not be able to figure out the dates of the auto-saved .blends.
   (See Figure: Blender File Browser)


Recover Auto Save
   :menuselection:`File --> Recover Auto Save...` allows you to open the Auto Saved file.
   After loading the Auto Saved version,
   you may save it over the current file in your working directory as a normal ``.blend`` file.


.. important::

   When recovering an Auto Saved file, you will lose any changes made since the last *Auto Save* was
   performed.Only **one** Auto Saved file exists for each project
   (i.e. Blender does not keep older versions -
   hence you won't be able to go back more than a few minutes with this tool).


Other options
-------------

Recent Files
   This setting controls how many recent files are listed in the :menuselection:`File --> Open Recent` sub-menu.

Save Preview Images
   Previews of images and materials in the *File Browser* window are created on demand.
   To save these previews into your ``.blend`` file, enable this option
   (at the cost of increasing the size of your ``.blend`` file).


