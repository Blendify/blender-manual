
..    TODO/Review: {{review}} .


*****************
Extending Blender
*****************

Unlike many programs you may be familiar with, Blender is not monolithic and static.
You can extend its functionality with :doc:`Python scripting </extensions/python>`
without having to modify the source and recompile


Add-ons
=======

Add-ons are scripts you can enable to gain extra functionality within Blender,
they can be enabled from the user preferences.

Outside of the Blender executable,
there are literally hundreds of add-ons written by many people:


- Officially supported add-ons are bundled with Blender.
- Other **Testing** add-ons are included in development builds but not official releases,
  many of them work reliably and are very useful but are not ensured to be stable for release.

An Overview of all add-ons is available in this wiki in the
`Scripts Catalog <http://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts>`__
and in the `Extensions tracker <https://projects.blender.org/projects/bf-extensions/>`__.


Scripts
=======

Apart from add-ons there are also scripts you can use to extend Blenders functionality:

- Modules: Utility libraries for import into other scripts.
- Presets: Settings for Blender's tools and key configurations.
- Startup: These files are imported when starting Blender.
  They define most of Blender's UI, as well as some additional core operators.
- Custom scripts: In contrast to add-ons they are typically intended for one-time execution via the
  :doc:`text editor </editors/text_editor>`


Saving your own scripts
=======================

File location
-------------

All scripts are loaded from the ``scripts`` folder of the
:doc:`local, system and user paths </getting_started/installing_blender/directorylayout>`.

You can setup an additional search path for scripts in
:ref:`preferences-file_paths` (*User Preferences* --> *File Paths*).


Installation
------------

Add-ons are conveniently installed through Blender in the *User Preferences* -->
*Add-ons* window. Click the *Install from File...* button and select the
``.py`` or ``.zip`` file.

To manually install scripts or add-ons place them in the ``add-ons``,
``modules``,
``presets`` or ``startup`` directory according to their type.
See the description above.

You can also run scripts by loading them in the :doc:`text editor </editors/text_editor>` window.


