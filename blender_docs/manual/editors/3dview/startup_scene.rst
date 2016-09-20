.. this file a many potential placements: interface, data/scenes, 3d view, info editor, user preferences

*************
Startup Scene
*************

After closing the splash the startup scene is loaded in the 3D View.

.. figure:: /images/editors_3dview_startup_scene.png

   The Startup scene.

Elements
========

Cube
   The gray cube in the center of the scene is a :doc:`mesh </modeling/meshes/index>`.
   Because the cube is selected is is drawn with a orange outline.
   
   Transformation Widget
      It is composed of an orange dot marking the cubes position, a white circle around it,
      and three colored (red, green, and blue) arrows. It is used to move the cube in the scene.
Lamp
   The circle with a thin line to the bottom is a light source illuminating the cube.
Camera
   The pyramid with a big triangle pointing upward is the camera used as point of view for rendering.
3D Cursor
   The cross with a red and white circle used for positioning objects in the scene.
Grid floor
   The gray squares mark the floor at zero height of the scene.
   The red and green lines mark the axis of the coordinate system.
   They meet at the origin, which is also the position of the *Cube*.

Overlay
=======

Viewport Camera Perspective
   ..

.. scene axis widget, orientation
   - X axis red.
   - Y axis green.
   - Z axis blue.

Active Object
   ..

.. saving the startup scene, rendering the startup scene
