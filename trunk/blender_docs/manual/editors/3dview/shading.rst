
*******
Shading
*******

Shading Modes
=============

There are several shading modes available in the 3D View,
which are different ways to show data and colors of your objects.


.. figure:: /images/Viewport-shading-menu.jpg

   A 3D view's draw mode button.

.. TODO these are old

Textured
   Displays UV image textured models with OpenGL lighting.
   Neither procedural textures or non UV-mapped textures will be shown.
Shaded
   Approximates all textures and lighting at each vertex, and blends from one to the next.
   Much less accurate than using the render engine to check textures, but much faster.
   Note that if you have no lighting in your scene, everything will remain black.
Solid
   This is the default drawing mode where surfaces are drawn as solid colors, with built-in OpenGL lighting.
   This draw mode is not dependent on scene light sources and can be configured in the *Solid OpenGL lights*
   group of controls from the *System & OpenGL* tab of the *User Preferences* window.

   :doc:`Read more about System Configuration </preferences/system>`
Wireframe
   Objects only consist of lines that make their shapes recognizable (e.g. the edges of meshes or surfaces).
Bounding Box
   Objects aren't drawn at all. Instead,
   this mode shows only the rectangular boxes that correspond to each object's size and shape.

You can switch between these draw modes by:

- Using the *Draw type* drop-down list in the 3D views' header (see *A 3D view's draw mode button*).
- Pressing :kbd:`D` to pop-up the *Draw mode* menu.
- Using the :kbd:`Z` -based shortcuts as detailed below:


.. list-table::
   Draw modes and Z-based shortcuts:

   * - Switches between *Wireframe* and *Solid* draw modes
     - :kbd:`Z`
   * - Switches between *Wireframe* and *Shaded* draw modes.
     - :kbd:`Shift-Z`
   * - Switches between *Solid* and *Textured* draw modes.
     - :kbd:`Alt-Z`
   * - Switches to the *Textured* draw mode.
     - :kbd:`Shift-Alt-Z`


Shading Panel
=============

The shading panel in the Properties Region controls the way objects in the 3D view are shaded.

Textured Solid
   Display face assigned textures in solid view.
Matcap
   A quick way to apply shader presets, (overriding regular materials)
   which can help visualize your models while editing or sculpting,
   without having to setup complex materials first.
Backface Culling
   Only show faces pointing towards the view.

   This can be useful to find faces flipped the wrong way,
   or to preview how a model may look when exported to an external rendering engine.
   As many of them use single sided drawing.
Depth of Field
   Uses the camera depth settings to preview focal blur in the view-port,

   *Only visible in a camera view*

   .. TODO example image!
Ambient Occlusion
   This setting applies realtime soft-shadows to the objects in the view
   which can help you see the shape of the models.

   Typically such effects are rendered at higher quality,
   but this is a quick real-time preview which can help when modeling or sculpting.

   .. TODO example image!
