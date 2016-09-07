
*****************
Properties Editor
*****************

.. figure:: /images/editors_properties_top.png
   :align: right

   Properties editor top part.

The *Properties Editor* is used to edit data and properties for the *Active Scene* and the *Active Object*.


Tabs
====

The Properties editor shows several tabs,
which can be chosen via the icon row in the header.
The tabs are documented in their own manual sections,
the links are list below.


Scene/Render
------------

These tabs are used to add features, and to change properties for the Active Scene.

.. figure:: /images/properties_render.png
   :align: right

   Scene/Render tabs.

.. _properties-render-tab:

Render
   Everything related to render output (dimensions, anti-aliasing, performance etc).
   See :doc:`/render/output`.
Render Layers
   Render Layers and Passes.
Scene
   Gravity, Units to use, Keying Sets, Color Management, Audio settings, Physics, and scene simplification options.
   See :doc:`/data_system/scenes/properties` and :doc:`/animation/keyframes/keying_sets`.
World
   Environmental lighting, sky, mist and Ambient Occlusion.


Object Data
-----------

These tabs are used to add features, and to change properties for the Active Object
(and other active elements, material, curve... etc).

.. figure:: /images/properties_object.png
   :align: right

   Object Data tabs.

The Object Data tabs shown depend on what type of object was selected last (The Active Object).

.. Features unique to the object type are usually added to the Data and Bone tabs, highlighted in yellow.

Object
   Transformations, display options, visibility settings (via layers)
   duplication settings and animation information (regarding Object position).
   See :doc:`Object </editors/3dview/object/properties/index>` and
   :doc:`/editors/3dview/transform/introduction`.
Constraints
   Used to control an Object’s transform (position, rotation, scale),
   tracking and relationship properties.
   See :doc:`Constraints </rigging/constraints/index>`.
Modifiers
   Array, Mirror, Subdivision Surface, Armature, Cast.
   See :doc:`/modeling/modifiers/index`.
Object Data
   Settings for the objects data,
   depending on the Object Type.
Bone
   Armature Bone settings.
Bone Constraints
   Armature Bone constraints.
Materials
   Properties of the surface (color, specularity, transparency, etc).
Textures
   Used by materials, world and brushes to provide additional details.
Particles
   Hair and Emitter particles.
   See :doc:`/physics/particles/index`.
Physics
   Properties relating to Cloth, Force Fields, Collision, Fluid and Smoke Simulation.
   See :doc:`/physics/index`.


.. (todo) camera, speaker?, object: modeling


Main View
=========

.. figure:: /images/editors_properties.png

   The Properties Editor with the Mesh tab selected.

.. (todo) Context link to data-system
