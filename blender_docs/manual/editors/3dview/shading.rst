*******
Shading
*******

Shading Modes
=============

.. figure:: /images/Viewport-shading-menu.jpg

   3D viewport shade button.

Shading refers to the way objects are drawn and lit in the 3D View.

Rendered
   An accurate representation using the selected *Render Engine* and lit with the visible scene lights.
Material
   A fast approximation of the applied material.
   Some effects, such as procedural textures may not be shown.
Textured
   Shows meshes with an image applied using the mesh's active UV Map.
   For Cycles materials, the image is the last one selected in the Node Editor.
   For other render engine's, the UV Map's applied face texture will be shown.
Solid
   The default drawing mode using solid colored surfaces and simple lighting.
Wireframe
   Objects appear as a mesh of lines representing the edges of faces and surfaces.
Bounding Box
   Shows only the rectangular boxes that outlines an object's size and shape.

Except for *Rendered*, these shading modes are not dependent on light sources in the scene.
Instead they use a simple default lighting adjusted by the
*Solid OpenGL Lights* controls on the *System* tab of the
:doc:`User Preferences </preferences/system>` window.

The viewport shading controls the appearance of all objects in a scene,
but this can be overridden for individual objects using the Display panel in their Object Properties.

Keyboard Shortcuts

.. list-table::
   :stub-columns: 1

   * - Switches between *Wireframe* and *Solid* draw modes
     - :kbd:`Z`
   * - Switches between *Wireframe* and *Rendered* draw modes.
     - :kbd:`Shift-Z`
   * - Switches between *Solid* and *Textured* draw modes.
     - :kbd:`Alt-Z`


Shading Panel
=============

.. figure:: /images/editors_3dview_shading_panel.jpg

   3D Viewport Shading Panel.


The shading panel in the Properties Region provides additional control over the way objects in the 3D view appear.

Textured Solid
   Display assigned :ref:`face textures<face_textures>` in the *Solid* shading mode.
   *(Not available in the Cycles Render Engine)*
Matcap
   A selection of preset shader effects, (overriding regular materials)
   which can help visualize your models while editing or sculpting,
   without having to set up complex materials first.
Backface Culling
   Only show the front side of faces.
   Use this to find faces flipped the wrong way,
   especially when exporting to programs that use single sided drawing.
Depth of Field
   Simulates a camera's focal blur effect in the 3D viewport. *Only visible in a camera view*.
   Control the effect using these options in the
   :ref:`Properties Tab<camera-settings>`
   of the active camera:
   Focal Length, Sensor Size, Focus Object or Focus Distance, and Viewport F-stop.
Ambient Occlusion
   Improves the realism of the viewport image by simulating the darkening effect that
   occurs in crevices and corners.
   Typically such effects are rendered at higher quality,
   but this is a quick real-time preview which can help when modelling or sculpting.

   These settings control the AO effect.

   Strength
      A higher number makes the corners darker.
   Distance
      How far out of the corners does the effect extend.
   Attenuation
      How strongly the effect attenuates with distance.
      Increasing this makes far away surfaces contribute less to the effect.
      Use this to get rid of some banding artifacts.
   Samples
      The number of samples used for the effect.
      Low numbers produce a grainy effect, but the actual number used is squared so use high numbers with caution.
   Color
      Color of the effect, can be modified to give a different feel, from ambient lighting to dirt/rust.
