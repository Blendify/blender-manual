**********
Workspaces
**********

.. figure:: /images/interface_window-system_workspaces_screen.png
   :align: center

   Workspaces are located at the Top bar. Layout workspace is active by default.

*Workspaces* are essentially predefined window layouts. Blender's
flexibility with :doc:`Areas </interface/window_system/areas>` lets
you create customized workspaces for different tasks such as modeling,
animating, and scripting. It is often useful to quickly switch between
different workspaces within the same file.


Controls
========

Add ``+``
   Click on the *Add* button to add a new workspace
:kbd:`RMB`
   Shows the context menu, with options to duplicate, delete and reorder workspaces

General Workspaces
------------------

:Layout: General workspace to preview your scene and objects.
:Modeling: Modeling workspace, for modification of geometry by modeling tools.
:Sculpting: Sculpting workspace, for modification of meshes by sculpting tools.  
:UV Editing: Mapping of image texture coordinates to 3D surfaces.
:Texture Paint: Tools for coloring image textures in 3D view.
:Shading: Tools for specifying material properties for render engines.
:Animation: Tools for making properties of objects dependent on animation time.
:Rendering: Viewing and analysing rendering results.
:Compositing: Combining and post-processing of images and rendering information.
:Scripting: Programming workspace for scripting and automation of Blender.

Save and Override
=================

The workspaces are saved in the blend-file.
When you open a file, enabling the *Load UI* in the File Browser indicates that Blender should
use the file's screen layouts and overriding the current layout.
See :ref:`Load UI <file-load-ui>`.

A custom set of workspaces can be saved as a part of the :doc:`/data_system/files/startup_file`.
