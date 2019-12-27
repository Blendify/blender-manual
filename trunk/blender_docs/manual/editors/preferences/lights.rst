
******
Lights
******

.. figure:: /images/editors_preferences_section_lights.png

   Blender Preferences Lights section.


.. _prefs-lights-studio:

Studio Lights
=============

*Studio Lights* are used to illuminate 3D viewport during *Solid View* and will not be rendered.

Unlike lights in the scene, the lighting direction follows the viewport orientation.


.. _bpy.types.UserSolidLight:

Editor
------

There are up to four virtual light sources.

The Light icons allow the user to enable or disable individual lights.
At least one of the four lights must remain enabled for the 3D View.
The lights are equal, except for their direction and color.
You can control the direction of the lights, as well as their diffuse and specular colors.

Light
   Use Light
      Toggles the specific light.
   Diffuse
      This is the constant color of the light.
   Specular
      This is the highlight color of the light.
   Smooth
      Smooth the shading from this light.

      *This has the effect of lighting to be less direct.*
   Direction
      The direction of the light, (see :ref:`ui-direction-button`).

      The direction of the light will be the same as shown at the sphere surface.
Ambient Color
   The color of unlit areas.


.. _prefs-lights-matcaps:

MatCaps
=======

This panel manages :term:`MatCap` image files
which can used to light the view when :ref:`MatCap <render-workbench-matcap>` shading is enabled.

Two kinds of images are supported for MatCaps. Regular image files and
multilayered OpenEXR files. When using multilayered OpenEXR files,
the layer named "diffuse" will be used as a diffuse pass, the layer named "specular"
will be used as a specular pass. Regular images will be handled as "diffuse" and
will not support specular highlighting.

The diffuse pass is multiplied with the base color of the objects and the specular pass is added on top.
Matcaps, that only have a diffuse pass tend to look very metallic,
with a separate specular pass it is possible to simulate more varities of materials.


HDRIs
=====

This panel manages :term:`HDRI` image files
which can be used to light the view when :ref:`Material Preview <3dview-material-preview>` or
:ref:`Rendered <3dview-rendered>` shading is enabled.
