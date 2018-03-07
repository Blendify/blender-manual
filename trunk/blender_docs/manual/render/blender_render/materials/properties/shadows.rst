
*******
Shadows
*******

With this panel you can control how objects using this material cast and receive shadows.
The shadows that appear in a scene are affected by a combination of the layout of objects,
the shape of the objects, the materials of the objects, and the lighting.
In Blender, the Display Mode (Single Texture, Multitexture, or GLSL) also affects the appearance of shadows.
See :doc:`Shadows </render/blender_render/lighting/shadows/index>` for a more complete description of this subject.

.. tip:: Shadows in 3D mode

   To see shadows in 3D (textured) mode, you must have switched to GLSL mode before making any materials.
   In MultiTexture mode, shadows only appear in the rendered image: none of these can be seen in the preview image.

.. _fig-bi-material-shadow-panel:

.. figure:: /images/render_blender-render_materials_properties_shadows_panel.png

   Shadow Panel.

The Shadow panel in the Materials Properties editor (see Fig. :ref:`fig-bi-material-shadow-panel`)
controls the effects that the material can have on the shadows that appear in the scene.
The various properties are described in the sections below.

.. _fig-bi-material-shadow-scene:

.. figure:: /images/render_blender-render_materials_properties_shadows_shadow2.png

   Scene with all shadow properties off.


Options
=======

The following properties can be set for each individual material
with which objects in the scene are shaded.
The effects are illustrated with rendered images for a simple scene
(Fig. :ref:`fig-bi-material-shadow-scene`) consisting of two "posts",
one with a red (totally non-transparent) material; one green (partially transparent) material,
set up on a light blue plane to receive the shadows.
The illustrations were all taken in Blender Renderer, with Multitexture mode.


Shadow Receiving Object Material
--------------------------------

The following options affect the material that receives shadows:

Receive
   Allows this material to receive full-intensity shadows (Fig. :ref:`fig-bi-material-shadow-receive`).
Receive Transparent
   Allows this material to receive shadows whose intensity is modified by the transparency
   and color of the shadow-casting object (Fig. :ref:`fig-bi-material-shadow-receive-trans`).

.. list-table::

   * - .. _fig-bi-material-shadow-receive:

       .. figure:: /images/render_blender-render_materials_properties_shadows_shadow3.png

          Plane with Receive.

     - .. _fig-bi-material-shadow-receive-trans:

       .. figure:: /images/render_blender-render_materials_properties_shadows_shadow4.png

          Plane with Receive and Receive Transparency.


Shadow Casting Object Material
------------------------------

The following options affect the material that casts shadows:

Cast Only
   Causes objects with the material to only cast a shadow, and not appear in renders.
   (Fig. :ref:`fig-bi-material-shadow-cast`).
Casting Alpha
   Sets the Alpha of shadow casting. Used for irregular and deep shadow buffering.
Shadows Only
   Renders shadows as materials alpha value, making materials transparent,
   except for areas where it receives shadows from other objects,
   and also it retains its own transparency (Fig. :ref:`fig-bi-material-shadow-only`).
   Note the faint image of the partly-transparent post.

   Shadow Only Type
      Set the type of shadows used when Shadows Only is enabled.

      - Shadow and Distance
      - Shadow Only
      - Shadows and Shading

.. list-table::

   * - .. _fig-bi-material-shadow-cast:

       .. figure:: /images/render_blender-render_materials_properties_shadows_shadow5.png

          Posts with Cast Only.

     - .. _fig-bi-material-shadow-only:

       .. figure:: /images/render_blender-render_materials_properties_shadows_shadow6.png

          Posts with Shadows Only.


Buffered Shadow Options
-----------------------

In addition to the shadow options described above,
there are further material properties which control buffered shadow features.
See section on :doc:`Spot Buffered Shadows </render/blender_render/lighting/lamps/spot/buffered_shadow>`
for further discussion of these techniques.

Cast Buffer Shadow
   Casts shadows from shadow buffer lamps.
Buffer Bias
   Multiplication factor for Buffer shadows (0 = ignore).
Auto Ray Bias
   Prevent raytraced shadow errors on surfaces with smooth shaded normals.
Ray Bias
   Shadow raytracing bias value to prevent terminator artifacts on shadow boundary.
Cast Approximate
   Allow this material to cast shadows when using approximate ambient occlusion.
