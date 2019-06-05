.. _bpy.types.UVProjectModifier:

*******************
UV Project Modifier
*******************

.. figure:: /images/modeling_modifiers_modify_uv-project_example.jpg
   :align: center
   :width: 350px

   Projecting the Blender logo onto Suzanne.

The *UV Project* Modifier acts like a slide projector.
It emits a UV map from the negative Z axis of a controller object
(such as an :doc:`empty object </modeling/empties>`),
and applies it to the object as the "light" hits it.

`Download an example <https://wiki.blender.org/wiki/File:Uvproject.blend>`__.


Options
=======

.. figure:: /images/modeling_modifiers_modify_uv-project_panel.png

UV Map
   Which UV map to modify. Defaults to the active rendering layer.

Image
   The image associated with this modifier. Not required; you can just project a UV for use elsewhere.
   *Override Image*, below, defines how the image is used.
Projectors
   Up to ten projector objects are supported.
   Each face will choose the closest and aligned projector with its surface normal.
   Projections emit from the negative Z axis (i.e. straight down a camera or lamp).
   If the projector is a camera, the projection will adhere to its perspective/orthographic setting.
Objects
   Specify the projector Object.

Aspect X/Y and Scale X/Y
   These allow simple manipulation of the image. Only apply when a camera is used as projector *Object*.


Usage
=====

General
-------

UV Project is great for making spotlights more diverse, and also for creating decals to break up repetition.

The modifier's Image property is not generally used.
Instead, a texture mapped to the UV map that the modifier targets is added to the object's Material.
This allows you to prevent the image from repeating by setting
:menuselection:`Texture --> Image Mapping --> Extension to Clip`.


Perspective Cameras
-------------------

When using perspective cameras or spot lamps,
you will likely want to enable the *UV Project* Material Option
(available in the materials panel),
This uses a different UV interpolation to prevent distortion.

.. note::

   This option is not yet available for Cycles.
