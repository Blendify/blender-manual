.. (todo) move orbit, pan, zoom?

************
Introduction
************

Navigating in the 3D space is done with the use of both mouse movement and keyboard shortcuts.

Orbit :kbd:`MMB`
   Rotate the view around the point of interest.
Pan :kbd:`Shift-MMB`
   Move the view up, down, left and right.
Zoom :kbd:`Ctrl-MMB`, :kbd:`Wheel`
   Move the camera forwards and backwards.


View Menu
=========

The view menu is located in the header of the 3D View.

.. figure:: /images/editors_3dview-view-menu.jpg
   :width: 300px

   The View menu.

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

   - Set Active object as camera
   - Active camera
:ref:`Perspective/Orthographic View <3dview-projections>`
   These commands change the projection of the 3D View
:doc:`Navigation Menu </editors/3dview/navigate/3d_view>`
   This sub-menu contains commands for rotating and panning the view.
   Using these commands through the menu is not that efficient. However, like all Blender menus,
   the much more convenient keyboard shortcuts are listed next to the commands.
:doc:`Align View </editors/3dview/navigate/3d_view>`
   This submenu allows you to align the 3D View in certain ways.

   - Align to selected
   - Center cursor and view all
   - Align active camera to view
   - View Selected
   - Center View to cursor

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
