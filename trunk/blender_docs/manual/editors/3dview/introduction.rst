..    TODO/Review: {{review}} .

.. _3dview-editor:

************
Introduction
************

This is work in progres!

3D Cursor
   .. figure:: /images/Icon-library_3D-Window_3D-cursor.jpg

   Can have multiple functions.
   For example, it represents where new objects appear when they are first created,
   or it can represent where the center of a rotation will be.

3D Transform Manipulator
   .. figure:: /images/Icon-library_3D-Window_3D-transform-manipulator.jpg
      :width: 50px

   Is a visual aid in transforming objects (grab/move, rotate and scale).
   Objects can also be transformed using the keyboard shortcuts: (:kbd:`G` / :kbd:`R` / :kbd:`S`);
   :kbd:`Ctrl-Spacebar` will toggle the manipulator visibility

Cube Mesh
   By default, a new installation of Blender will always start with a Cube *Mesh*
   sitting in the center of Global 3D space (in the picture above, it has been moved).
   After a while, you will most likely want to change the "Default" settings;
   this is done by :doc:`configuring Blender </preferences/index>` as you would want it
   on startup and then saving it as the "Default" using :kbd:`Ctrl-U` (*Save Default Settings*).

Light (of type Lamp)
   .. figure:: /images/Icon-library_3D-Window_light-lamp.jpg

   By default, a new installation of Blender will always start with a *Light*
   source positioned somewhere close to the center of Global 3D space.


Camera
   .. figure:: /images/Icon-library_3D-Window_camera.jpg
      :width: 50px

   By default,
   a new installation of Blender will always start with a *Camera*
   positioned somewhere close to the center of Global 3D space and facing it.


3D Editor Header
----------------

.. figure:: /images/Icon-library_3D-Window_header.jpg
   :width: 640px

   3D Window Header


This is the header for the 3D window. All windows in Blender have a header,
although in some cases they may be located at bottom of the window.

Read more about :doc:`Blender headers </getting_started/basics/interface/window_system/headers>`


Window/Editor Type Selector
   .. figure:: /images/Icon-library_3D-Window_Editor-type.jpg

   Allows you to change the :doc:`type of Window </editors/index>`.
   This option can be found in every window header.
   For example, if you want to see the *Outliner* window you would click and select it.


3D Transform manipulator options
   .. figure:: /images/Icon-library_3D-Window_3D-transform-manipulator-options.jpg

   Access to the :doc:`manipulator </getting_started/basics/transformations/transform_control/manipulators>`
   widget is also possible by clicking the coordinate system icon on the toolbar.
   The translation/rotation/scale manipulators can be displayed by clicking each
   of the three icons to the right of the coordinate system icon.
   :kbd:`Shift-LMB` -clicking an icon will add/remove each manipulator's visibility.


Viewport Shading
   .. figure:: /images/Icon-library_3D-Window_header-viewport-shading.jpg

   Blender renders the 3D window using `OpenGL <http://en.wikipedia.org/wiki/OpenGL>`__.
   You can select the type of
   :ref:`Viewport shading <view_shading>`
   that takes place by clicking this button and selecting from a variety of shading
   styles including simple bounding boxes and complex textures.
   It is recommended that you have a powerful graphics card if you are going to use the Textured style.


Layers
   .. figure:: /images/Icon-library_3D-Window_header-layers.jpg

   Blender :doc:`Layers </getting_started/basics/navigating/layers>`
   are provided to help distribute your objects into functional groups.
   For example, one layer may contain a water object and another layer
   may contain trees, or one layer may contain cameras and lights.
   To de-clutter the view you can turn layers on and off.

