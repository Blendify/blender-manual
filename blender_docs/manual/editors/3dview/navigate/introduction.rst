.. TODO/Review: {{review|text=wrong place In 2.4 this page is here Manual/3D interaction/Navigating/3D View Options|
   fixes=[[User:Fade/Doc:2.6/Manual/3D_interaction/Navigating/3D_View_Options|X]]}}.

************
Introduction
************

The *3D View* is where you perform most of the object modeling and scene creation.
Blender has a wide array of tools and options to support you in efficiently working with your
mouse, keyboard and numpad.


Menus
=====

The *3D View* editor is comprised of a workspace and a header.
The header is shown at the bottom or top of the workspace, and can be hidden if desired.
The header shows you a menu and the current mode, as explained below.

.. figure:: /images/editors_3dview_header.png

   3D View header.


View Menu
---------

.. figure:: /images/editors_3dview-view-menu.jpg
   :width: 300px

   The View menu.


Properties region
   Toggles the *Properties* region, which allows you to tweak many 3D View settings:

   - :doc:`Transform </editors/3dview/transform/introduction>`
   - :doc:`Grease Pencil </interface/grease_pencil/introduction>`
   - :doc:`Display & View Panels </editors/3dview/display/panels>`
   - :doc:`Background Images </editors/3dview/display/background_images>`
   - :doc:`Transform Orientations </editors/3dview/transform/transform_control/transform_orientations>`

Tool Shelf
   Toggles the *Tool Shelf* :kbd:`T`, which appears on the left side of the 3D View,
   and allows you to perform various operations, depending on the type of object selected, and the mode you are in.
:doc:`Camera </editors/3dview/navigate/camera_view>`
   Switches the view to the current camera view.
:doc:`Viewing angles </editors/3dview/navigate/3d_view>`:
   These commands change the view to the default Top/Bottom, Front/Back, or Left/Right views.

   - Top :kbd:`Numpad7`
   - Bottom :kbd:`Ctrl-Numpad7`
   - Front :kbd:`Numpad1`
   - Back :kbd:`Ctrl-Numpad1`
   - Right :kbd:`Numpad3`
   - Left :kbd:`Ctrl-Numpad3`

:doc:`Cameras Menu </editors/3dview/navigate/camera_view>`:
   *Set Active object as camera*
   *Active camera*
:ref:`Perspective/Orthographic View <3dview-projections>`
   These commands change the projection of the 3D View
:doc:`Navigation Menu </editors/3dview/navigate/3d_view>`
   This sub-menu contains commands for rotating and panning the view.
   Using these commands through the menu is not that efficient. However, like all Blender menus,
   the much more convenient keyboard shortcuts are listed next to the commands.
:doc:`Align View </editors/3dview/navigate/3d_view>`
   This submenu allows you to align the 3D View in certain ways.

   - *Align to selected*
   - *Center cursor and view all*
   - *Align active camera to view*
   - *View Selected*
   - *Center View to cursor*

:ref:`Clipping Border <3dview-clip-border>`
   Allows you to define a clipping border to limit the 3D View display to a portion of 3D space.
:doc:`Zoom Border </editors/3dview/navigate/3d_view>`
   Allows you to define the area you want to zoom into.
:doc:`Show all Layers </editors/3dview/object/properties/relations/layers>`
   Makes all of the display layers visible.
:ref:`Global View/Local View <3dview-local-view>`
   Global view shows all of the 3D objects in the scene. Local view only displays the selected objects.
   This helps if there are many objects in the scene, that may be in the way.
   Accidentally pressing :kbd:`NumpadSlash` can happen rather often if you are new to Blender,
   so if a bunch of the objects in your scene seem to have mysteriously vanished, try turning off local view.
:doc:`View Selected </editors/3dview/navigate/3d_view>`
   Zooms the 3D View to encompass all the *selected* objects.
:ref:`View All <3dview-view-all>`
   Zooms the 3D View to encompass *all* the objects in the current scene.
:doc:`Play Back Animation </animation/index>`
   Plays back the animation from the current frame.
:doc:`Duplicate area in new window </interface/window_system/areas>`
   Clones the current 3D View in a new window.
:doc:`Quad View </interface/window_system/areas>`
   Toggles a four view 3D View, each showing a different angle of the scene.
:doc:`Toggle Full Screen </interface/window_system/areas>`
   Maximizes the *3D View* editor to fill the full screen area.


Select Menu
-----------

This menu contains tools for selecting objects.

:doc:`Read more about Selecting </editors/3dview/selecting>`


Add Menu
--------

This menu gives a list of different objects that can be added to a scene.
See :doc:`here </editors/3dview/object/types/index>` for an information on all the object types.


Object Menu
-----------

This menu appears when in Object Mode. In edit mode,
it will change to the appropriate menu with editing tools.

:doc:`Read more about Objects </editors/3dview/transform/introduction>`


.. rubric:: General Options

Mode List
   The Viewport has several modes of operation,
   for a full list modes see :doc:`here </editors/3dview/object/modes>`
Viewport Shading
   Allows you to change the way 3D objects are displayed in the viewport.

   :doc:`Read more about the different shading modes </editors/3dview/display/shading>`
Pivot Point Selector
   Used to change the reference point (or :term:`pivot point`) used by many mesh manipulation tools.

   :doc:`Read more about Pivot Points </editors/3dview/transform/transform_control/pivot_point/index>`
Manipulator Selector
   These handy selectors allow you to rotate or move objects by grabbing
   (clicking with your mouse) their controls and moving your mouse in the axis.

   :doc:`Read more about Transform Manipulators </editors/3dview/transform/transform_control/manipulators>`
Layer Widget
   Layers are well documented in the :doc:`Layers page </editors/3dview/object/properties/relations/layers>`.

Lock to Scene
   By default, the "lock" button to the right of the layer buttons is enabled.
   This means that in this view, the active layers and camera are those of the whole scene
   (and those used at render time). Hence, all 3D Views locked this way will share the same
   active layers and camera. When you change them in one view,
   all locked others will immediately reflect these changes.

   But if you disable this "lock" button, you then can specify different active layers and camera,
   specific to this view. This might be useful if you do not want to have your working areas (views)
   cluttered with the whole scene, and still have an ancillary complete view
   (which is unlocked with e.g. all layers shown).
   Or to have several views with different active cameras. Remember that you can use
   :kbd:`Ctrl-Numpad0` to make the active object the active camera.

   :doc:`Read more about Scenes </data_system/scenes/introduction>`

Snap to Mesh
   Controls the snapping tools that help with transforming and modeling objects.

   :doc:`Read more about Snapping </editors/3dview/transform/transform_control/precision/snap>`
Render Buttons
   The Render Buttons render an OpenGL version of the 3D View.
   See the :doc:`OpenGL Rendering </render/opengl>` page for more information.
