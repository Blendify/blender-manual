
*******
Display
*******

Display Panel
=============

Only Render
   Displays only items that will be rendered.

   This can be is useful to preview how animations look without being distracted by
   rigs, empties, lights & cameras.

   Useful to enable with :doc:`/render/opengl`.
Outline Selected
   If disabled, the pink outline around your selected objects in
   *Solid* / *Shaded* / *Textured* draw types will no longer be displayed.
All Object Origins
   If enabled, the center dot of objects will always be visible, even for non-selected ones
   (by default, unselected centers might be hidden by geometry in solid/shaded/textured shadings).
Relationship Lines
   Controls whether the dashed parenting, constraining, hooking, etc., lines are drawn.
Grid Floor
   If disabled, you have no grid in other views than the orthographic top/front/side ones.

   X Axis, Y Axis, Z Axis
      Control which axes are shown in other views than the orthographic top/front/side ones.
   Lines
      Controls the number of lines that make the grid in non-top/front/side orthographic views, in both directions.
   Scale
      Control the scale of the grid floor
   Subdivisions
      Controls the number of sub-lines that appear in each cell of the grid when you zoom in,
      so it is a setting specific to top/front/side orthographic views.
Toggle Quad View
   Toggles the four pane 3D view.
   :doc:`Read more about arranging frames </interface/window_system/arranging_frames>`


View Panel
==========

The *View Properties* panel lets you set other settings regarding the 3D view.
You can show it with the :menuselection:`View --> View Properties...` menu entry.

Lens
   Control the focal length of the 3d view camera in millimeters,
   unlike a :doc:`rendering camera </render/camera/index>`
Lock to Object
   By entering the name of an object in the *Object* field, you lock your view to this object, i.e.
   it will always be at the center of the view (the only exception is the active camera view, :kbd:`Numpad0`).
   If the locked object is an armature,
   you can further center the view on one of its bones by entering its name in the *Bone* field.
Lock to Cursor
   Lock the center of the view to the position of the 3D cursor

.. _view3d-lock_camera_to_view:

Lock Camera to View
   When in camera view, use this option to move the camera in 3D space, while continuing to remain in camera view.
Clip Start and Clip End
   Adjust the minimum and maximum distances to be visible for the view-port.

   .. note::

      A large clipping range will allow you to see both near and far objects, but reduces the depth precision.

      To avoid this:

      - increase the near clipping when working on large scenes.
      - decrease the far clipping when objects are not viewed at a distance.

      When perspective is disabled only the far Clip-End is used,
      very high values can still give artifacts.

      *This is not specific to blender, all OpenGL/DirectX graphics applications have these same limitations.*

      Examples:

      .. figure:: /images/Graphics_z_fighting_none.jpg

         Model with no clipping artifacts.

      .. figure:: /images/Graphics_z_fighting_example.jpg

         Model with clipping artifacts.

      .. figure:: /images/Graphics_z_fighting_example_editmode.jpg

         Mesh with artifacts in edit-mode.

Local Camera
   Active camera used in this view

Render Border
   Use a Render Border when not looking through a camera.
   Using :kbd:`Ctrl-B` to draw a border region will automatically enable this option.
