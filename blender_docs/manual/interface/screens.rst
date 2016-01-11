
*******
Screens
*******

.. figure:: /images/Scene-SR_Layout_Dropdown25.jpg
   :align: right

   Layout Dropdown


Blender's flexibility with windows lets you create customized working environments for
different tasks such as modeling, animating, and scripting.
It is often useful to quickly switch between different environments within the same file.

To do each of these major creative steps, Blender has a set of pre-defined *screens*,
that show you the types of windows you need to get the job done quickly and efficiently.
*Screens* are essentially pre-defined window layouts.
If you are having trouble finding a particular screen,
you can use the search function at the bottom of the list (pictured right).

**Default Screens available**

:3D View Full: A full screen 3D view, used to preview your scene.
:Animation: Making actors and other objects move about, change shape or color, etc.
:Compositing: Combining different parts of a scene
   (e.g. background, actors, special effects) and filter them (e.g. color correction).
:Default: The default layout used by Blender for new files. Useful for modeling new objects.
:Game Logic: Planning and programming of games within Blender.
:Motion Tracking: Used for motion tracking with the movie clip editor.
:Scripting: Documenting your work and/or writing custom scripts to automate Blender.
:UV Editing: Flattening a projection of an object mesh in 2D to control how a texture maps to the surface.
:Video Editing: Cutting and editing of animation sequences.

Screens can be selected in the *Info Window* header that is at the top of the
layout for preset screens. This is often confused for a menu bar by those new to Blender;
however it is simply a window showing only its *header*.

To cycle between screens use :kbd:`Ctrl-Right` and :kbd:`Ctrl-Left`.


.. figure:: /images/ConceptScreens25.jpg
   :align: center

   Screen and Scene selectors

.. hint::

   By default, each screen layout 'remembers' the last :doc:`scene </data_system/scenes>`
   it was used on. Selecting a different layout will switch to the layout **and** jump to that scene.
   
   All changes to windows, as described in :doc:`Editor Types </editors/index>`, are saved within one screen.
   Changes to one screen, wont affect others.


Configuring your Screens
========================

Adding a new Screen Type
------------------------

.. |addview-button| image:: /images/Interface-Screens-AddView-Button25.jpg

Click on the "Add" button(|addview-button|) and a new frame layout will be
created based on your current layout.


Deleting a Screen
-----------------

.. |deleteview-button| image:: /images/Interface-Screens-DeleteView-Button25.jpg

You can delete a screen by using the *Delete Data-Block* button
(|deleteview-button|). See *Screen and Scene selectors* above.


Rearranging a Screen
--------------------

Use the :doc:`window controls </interface/window_system/arranging_frames>`
to move frame borders, split and consolidate windows.
When you have a layout that you like, press :kbd:`Ctrl-U` to update your User defaults.
Be aware that all of the current scenes become part of those defaults,
so consider customizing your layouts with only a single, simple scene.

The properties window has a special option: pressing :kbd:`RMB` on its background will
allow you to arrange its panels horizontally or vertically. Of the two,
vertically-arranged panels have greater support.


Overriding Defaults
-------------------

When you save a .blend file, the screen layouts are also saved in it. When you open a file,
enabling the *Load UI* checkbox in the file browser indicates that Blender should
use the file's screen layouts (overriding your defaults in the process).
Leaving the *Load UI* checkbox disabled tells Blender to use the current layout.


Additional Layouts
------------------

As you become more experienced with Blender, consider adding some other screen layouts to suit
your workflow as this will help increase your productivity. Some examples could include:

Modeling
   Four 3D windows (top, front, side and perspective), Properties window for Editing
Lighting
   3D windows for moving lights, UV/Image Window for displaying Render Result,
   Properties window for rendering and lamp properties and controls
Materials
   Properties window for Material settings, 3D window for selecting objects, Outliner,
   Library script (if used), Node Editor
   (if using :doc:`Node based materials </render/blender_render/materials/nodes/index>`)
Painting
   UV/Image Editor for texture painting image,
   3D window for painting directly on object in UV Face Select mode,
   three mini-3D windows down the side that have background
   reference pictures set to full strength, Properties window


.. hint:: Reuse your Layouts

   If you create a new window layout and would like to use it for future ``.blend`` files,
   you can save it for later reuse, see :doc:`/preferences/startup_file`.
