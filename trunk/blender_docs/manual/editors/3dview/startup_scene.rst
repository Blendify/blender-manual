
*************
Startup Scene
*************

After closing the splash the startup scene is displayed in the 3D View,
if no other blend-file was loaded. A customized startup scene
can be saved as a part of the :doc:`startup file </data_system/files/startup_file>`.

.. figure:: /images/editors_3dview_startup_scene.png

   The Startup scene.


Elements
========

Cube
   The gray cube in the center of the scene is a :doc:`mesh </modeling/meshes/index>` object.
   Because the cube is selected it is drawn with an orange outline.

   Object Origin
      The :doc:`Origin of the object </editors/3dview/object/editing/transform/origin>` is displayed as
      an orange dot and it marks the cube's (relative) position.
   Transformation Widget
      This :doc:`widget </editors/3dview/object/editing/transform/control/manipulators>`
      is composed out of a white circle and three colored (red, green, and blue) arrows.
      It is used to move entities (e.g. the cube) in the scene.
Lamp
   The circle with a thin line to the bottom is a light source illuminating the cube.
   Lights in: :doc:`Blender Internal </render/blender_render/lighting/lights/index>`,
   :doc:`Cycles </render/cycles/lamps>`.

Camera
   The pyramid with a big triangle pointing upward is the camera used as point of view for rendering.
   Cameras in :doc:`Blender Internal </render/blender_render/camera/index>`, :doc:`Cycles </render/cycles/camera>`.
3D Cursor
   The :doc:`3D cursor </editors/3dview/3d_cursor>`, a cross with a red and white circle,
   is used for placing objects in the scene.
Grid Floor
   The gray squares forming a floor mark the zero height of the world.
   The red and green lines are the axis of the world coordinate system.
   They meet at the origin, which is also the position of the *Cube*.
   The Grid Floor settings are in the :doc:`Display panel </editors/3dview/display/panels>`.

.. figure:: /images/editors_3dview_startup_scene_single.png

   The elements of the startup scene.


Overlays
========

The visibility and settings of the overlays can be set in the :doc:`User Preferences </preferences/interface>`.

View Name
   If the viewport camera is not aligned, the view is named "User" plus
   the perspective of the viewport camera.
Playback FPS
   Displays the Frames Per Second screen rate, while playing an animation back.
Mini Axis
   Shows the axes of world coordinate system as plain lines with name.
Object Info
   Shown in brackets is the current frame. Followed by the name of the :ref:`active object <object-active>`.
   And optionally the selected :doc:`shape key </animation/shape_keys/index>` and
   in brackets (<>) the :doc:`/animation/markers` name on the current frame.
   The color of the Object Info is set by the :ref:`animation-state-colors` (keyframe only).


.. (todo) rendering the startup scene
