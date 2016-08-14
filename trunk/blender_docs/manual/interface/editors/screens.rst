
*******
Screens
*******

.. figure:: /images/scene-sr_layout_dropdown25.jpg
   :align: right

   Layout Dropdown.


*Screens* are essentially pre-defined window layouts.
Blender's flexibility with areas lets you create customized working environments for
different tasks such as modeling, animating, and scripting.
It is often useful to quickly switch between different environments within the same file.

If you are having trouble finding a particular screen,
you can use the search function at the bottom of the list (pictured right).

.. rubric:: Default Screens available

:3D View Full: A full screen 3D View, used to preview your scene.
:Animation: Making actors and other objects move about, change shape or color, etc.
:Compositing: Combining different parts of a scene
  (e.g. background, actors, special effects) and filter them (e.g. color correction).
:Default: The default layout used by Blender for new files. Useful for modeling new objects.
:Game Logic: Planning and programming of games within Blender.
:Motion Tracking: Used for motion tracking with the movie clip editor.
:Scripting: Documenting your work and/or writing custom scripts to automate Blender.
:UV Editing: Flattening a projection of an object mesh in 2D to control how a texture maps to the surface.
:Video Editing: Cutting and editing of animation sequences.

Screens can be selected in the *Info Editor* header that is at the top of the
layout for preset screens. 

To cycle between screens use :kbd:`Ctrl-Right` and :kbd:`Ctrl-Left`.

.. _fig-ui-screen-scene:

.. figure:: /images/interface_screen-scene-selector.jpg
   :align: center

   Screen and Scene selectors.

.. hint::

   By default, each screen layout 'remembers' the last :doc:`scene </data_system/scenes>`
   it was used on. Selecting a different layout will switch to the layout **and** jump to that scene.

   All changes to areas, as described in :doc:`Editor Types </editors/index>`, are saved within one screen.
   Changes to one screen, won't affect others.


Configuring your Screens
========================

Adding a new Screen Type
------------------------

Click on the "Add" button (``+``) and a new frame layout will be
created based on your current layout.


Deleting a Screen
-----------------

You can delete a screen by using the *Delete Data-Block* button (``X``).
See Fig. :ref`fig-ui-screen-scene` above.


Rearranging a Screen
--------------------

Use the :doc:`area controls </interface/editors/arranging_areas>`
to move frame borders, split and consolidate areas.
When you have a layout that you like, press :kbd:`Ctrl-U` to update your User defaults.
Be aware that all of the current scenes become part of those defaults,
so consider customizing your layouts with only a single, simple scene.

The Properties editor has a special option: pressing :kbd:`RMB` on its background will
allow you to arrange its panels horizontally or vertically. Of the two,
vertically-arranged panels have greater support.


Overriding Defaults
-------------------

When you save a blend-file, the screen layouts are also saved in it. When you open a file,
enabling the *Load UI* checkbox in the file browser indicates that Blender should
use the file's screen layouts (overriding your defaults in the process).
Leaving the *Load UI* checkbox disabled tells Blender to use the current layout.


Additional Layouts
------------------

As you become more experienced with Blender, consider adding some other screen layouts to suit
your workflow as this will help increase your productivity. Some examples could include:

Modeling
   Four 3D Views (top, front, side and perspective), Properties editor for Editing
Lighting
   3D Views for moving lights, UV/Image editor for displaying Render Result,
   Properties editor for rendering and lamp properties and controls
Materials
   Properties editor for Material settings, 3D View for selecting objects, Outliner,
   Library script (if used), Node Editor
   (if using :doc:`Node based materials </render/blender_render/materials/nodes/index>`)
Painting
   UV/Image Editor for texture painting image,
   3D View for painting directly on object in UV Face Select mode,
   three mini-3D Views down the side that have background
   reference pictures set to full strength, Properties editor


.. hint:: Reuse your Layouts

   If you create a new window layout and would like to use it for future blend-files,
   you can save it for later reuse, see :ref:`Saving User Settings <startup-file>`
