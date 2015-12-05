
.. TODO/Review: {{review|text=wrong place In 2.4 this page is here Manual/3D interaction/Navigating/3D View Options|
   fixes=[[User:Fade/Doc:2.6/Manual/3D_interaction/Navigating/3D_View_Options|X]]}}.


************
Introduction
************

The *3D View* is where you perform most of the object modeling and scene creation.
Blender has a wide array of tools and options to support you in efficiently working with your
mouse, keyboard and numpad.


3D Window Header
================

The *3D View* window is comprised of a workspace and a header.
The header is shown at the bottom or top of the workspace, and can be hidden if desired.
The header shows you a menu and the current mode, as explained below.


.. figure:: /images/editor_3dview-header.jpg
   :width: 600px

   3D View header.


View Menu
---------

.. figure:: /images/editor_3dview-view-menu.jpg
   :width: 300px

   The View menu.


Properties Panel
   Toggles the *Properties* side panel, which allows you to tweak many 3D view settings:

   - :doc:`Transform </editors/3dview/transform/introduction>`
   - :doc:`Grease Pencil </interface/grease_pencil/introduction>`
   - :doc:`Display & View Panels </editors/3dview/display>`
   - :doc:`Background Images </editors/3dview/background_images>`
   - :doc:`Transform Orientations </editors/3dview/transform/transform_control/transform_orientations>`
Tool Shelf
   Toggles the *Tool Shelf* (:kbd:`T`), which appears on the left side of the 3d view,
   and allows you to perform various operations, depending on the type of object selected, and the mode you are in.
:doc:`Camera </editors/3dview/navigate/camera_view>`
   Switches the view to the current camera view.
:doc:`Viewing angles </editors/3dview/navigate/3d_view>`:
   These commands change the view to the default Top/Bottom, Front/Back, or Left/Right views.

   - Top (:kbd:`Numpad7`)
   - Bottom (:kbd:`Ctrl-Numpad7`)
   - Front (:kbd:`Numpad1`)
   - Back (:kbd:`Ctrl-Numpad1`)
   - Right (:kbd:`Numpad3`)
   - Left (:kbd:`Ctrl-Numpad3`)
:doc:`Cameras Menu </editors/3dview/navigate/camera_view>`:
   *Set Active object as camera*
   *Active camera*
:ref:`Perspective/Orthographic View <3dview-projections>`
   These commands change the projection of the 3D view
:doc:`Navigation Menu </editors/3dview/navigate/3d_view>`
   This sub-menu contains commands for rotating and panning the view.
   Using these commands through the menu is not that efficient. However, like all Blender menus,
   the much more convenient keyboard shortcuts are listed next to the commands.
:doc:`Align View </editors/3dview/navigate/3d_view>`
   This submenu allows you to align the 3D view in certain ways.

   - *Align to selected*
   - *Center cursor and view all*
   - *Align active camera to view*
   - *View Selected*
   - *Center View to cursor*

:ref:`Clipping Border... <3dview-clip_border>`
   Allows you to define a clipping border to limit the 3D view display to a portion of 3D space.
:doc:`Zoom Border... </editors/3dview/navigate/3d_view>`
   Allows you to define the area you want to zoom into.
:doc:`Show all Layers </editors/3dview/layers>`
   Makes all of the display layers visible.
:ref:`Global View/Local View <3dview-local_view>`
   Global view shows all of the 3D objects in the scene. Local view only displays the selected objects.
   This helps if there are many objects in the scene, that may be in the way.
   Accidentally pressing :kbd:`NumpadSlash` can happen rather often if you're new to Blender,
   so if a bunch of the objects in your scene seem to have mysteriously vanished, try turning off local view.
:doc:`View Selected </editors/3dview/navigate/3d_view>`
   Zooms the 3D view to encompass all the *selected* objects.
:ref:`View All <3dview-view_all>`
   Zooms the 3D view to encompass *all* the objects in the current scene.
:doc:`Play Back Animation </animation/index>`
   Plays back the animation from the current frame.
:doc:`Duplicate area in new window </interface/window_system/arranging_frames>`
   Clones the current 3D view in a new window
:doc:`Quad View </interface/window_system/arranging_frames>`
   Toggles a four pane 3D view, each showing a different angle of the scene.
:doc:`Toggle Full Screen </interface/window_system/arranging_frames>`
   Maximizes the *3D View* window to fill the full screen area.


Select Menu
-----------

This menu contains tools for selecting objects.

:doc:`Read more about Selecting </editors/3dview/selecting>`


Object Menu
-----------

This menu appears when in Object Mode. In edit mode,
it will change to the appropriate menu with editing tools.

:doc:`Read more about Objects </editors/3dview/transform/introduction>`


Mode List
---------

.. figure:: /images/editor_3dview-mode.jpg

   The Mode drop-down list.


Blender has several modes of operation.


Object Mode
   mode allows you to work with objects as a whole.
Edit Mode
   Allows you to modify the shape of the object.
:ref:`Sculpt Mode <painting_sculping-index>`
   In this mode your cursor becomes a tool to shape the object

The cursor becomes a brush in:

- :ref:`painting_vertex-index` mode
- :ref:`painting_weight-index` mode
- :ref:`painting_texture-index` mode.


ViewPort Shading List
---------------------

Allows you to change the way 3D objects are displayed in the viewport.

- Bounding Box
- Wireframe
- Solid
- Texture
- Material
- Rendered

:doc:`Read more about 3D view options </editors/3dview/shading>`


Pivot Point Selector
--------------------

.. figure:: /images/PivotSelection.jpg

   Pivot point selector.


When rotating or scaling an object or group of vertices/edges/faces,
you may want to shift the pivot point (the transformation center) in 3D space.
Using this selector, you can change the pivot point to the location of the:

- Active Element
- Median Point *the average center spot of the selected items*
- Individual Origins
- 3D Cursor
- Bounding Box Center

Use the *Object Center* to switch between transforming the entire objects,
or just the position of the objects

:doc:`Read more about Pivot Points </editors/3dview/transform/transform_control/pivot_point/index>`


Transform (Manipulator) Selectors
---------------------------------

These handy selectors allow you to rotate or move objects by grabbing
(clicking with your mouse) their controls and moving your mouse in the axis.

:doc:`Read more about Transform Manipulators </editors/3dview/transform/transform_control/manipulators>`


Layer Selector
--------------

Layers are well documented in the :doc:`Layers page </editors/3dview/layers>`.


Lock to Scene
-------------

By default, the "lock" button to the right of the layer buttons is enabled.
This means that in this view, the active layers and camera are those of the whole scene
(and those used at render time). Hence, all 3D views locked this way will share the same
active layers and camera - when you change them in one view,
all locked others will immediately reflect these changes.

But if you disable this "lock" button,
you then can specify different active layers and camera, specific to this view.
This might be useful if you don't want to have your working areas (views)
cluttered with the whole scene, and still have an ancillary complete view
(which is unlocked with e.g. all layers shown).
Or to have several views with different active cameras. Remember that you can use
(:kbd:`Ctrl-Numpad0` to make the active object the active camera.

:doc:`Read more about Scenes </data_system/scenes>`


Snap to Mesh
------------

This "magnet" button controls the snapping tools that help with transforming and modeling
objects.

:doc:`Read more about Snapping </editors/3dview/transform/transform_control/snap>`


Render Buttons
--------------

The Render Buttons render an OpenGL version of the 3D view.

The first button renders a still image of the Objects in the 3D view without displaying the
grid, axes, etc. It uses the same *Draw* mode as the 3D view,
so it's rather useful if someone asks to see the wireframe of an Object you're working on.

The second button will render an animation of the 3D View,
making it useful for making preview renders of animations. The animation will be saved in the
folder and format specified in the *Output* panel of the *Render* context.


