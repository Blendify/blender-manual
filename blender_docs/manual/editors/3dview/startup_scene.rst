.. this file has many potential placements: interface, data/scenes, 3d view, info editor, user preferences

*************
Startup Scene
*************

After closing the splash the startup scene is displayed in the 3D View,
if no other blend-file was loaded.

.. figure:: /images/editors_3dview_startup_scene.png

   The Startup scene.


Elements
========

Cube
   The gray cube in the center of the scene is a :doc:`mesh </modeling/meshes/index>` object.
   Because the cube is selected it is drawn with an orange outline.
   
   Object Origin
      The Origin of the object is displayed as an orange dot and it marks the cubes (relative) position.
   Transformation Widget
      This widget is composed out of a white circle and three colored (red, green, and blue) arrows.
      It is used to move the cube in the scene.
Lamp
   The circle with a thin line to the bottom is a light source illuminating the cube.
Camera
   The pyramid with a big triangle pointing upward is the camera used as point of view for rendering.
3D Cursor
   The cross with a red and white circle used for positioning objects in the scene.
Grid Floor
   The gray squares forming a floor mark the zero height of the world.
   The red and green lines are the axis of the world coordinate system.
   They meet at the origin, which is also the position of the *Cube*.


Overlay
=======

View Name
   If the viewport camera is not aligned the view is named "User" plus
   the perspective of the viewport camera.
Playback FPS
   Displays the Frames Per Second screen rate, while playing an animation back.
Mini Axis
   Shows the axes of world coordinate system as plain lines with name.
Object Info
   Shown in brackets is the current frame. Followed by the name of the active object. 

.. object info color (keyframe, ?)

.. saving the startup scene, rendering the startup scene
