
*****************
Properties Editor
*****************

The *Properties Editor* is used to edit data and properties for the *Active Scene* and the *Active Object*.

.. figure:: /images/editors_properties.png

   The Properties Editor with the Mesh tab selected.


Tabs
====

The Properties editor shows several tabs,
which can be chosen via the icon row in the header.


Scene/Render
------------

These tabs are used to add features, and to change properties for the Active Scene.

.. figure:: /images/properties_render.png
   :align: right

   Scene/Render tabs.

.. _properties-render-tab:

Render
   Everything related to render output (dimensions, anti-aliasing, performance etc).
Render Layers
   Render Layers and Passes.
Scene
   Gravity, Units to use, Keying Sets, Color Management, Audio settings, Physics, and scene simplification options.
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

Features unique to the object type are usually added to the Data and Bone tabs, highlighted in yellow.

Object
   Transformations, display options, visibility settings (via layers)
   duplication settings and animation information (regarding Object position).
Constraints
   Used to control an Object’s transform (position, rotation, scale),
   tracking and relationship properties.
Modifiers
   Array, Mirror, Subdivision Surface, Armature, Cast.
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
Physics
   Properties relating to Cloth, Force Fields, Collision, Fluid and Smoke Simulation.


Documentation
=============

Rendering is mainly documented in its own section,
there is also information on materials and textures.

- :doc:`Render </render/introduction>`

.. (todo) camera?

Scene features are mainly documented in the data-system,
though some tools are added to different sections.

- :doc:`Scenes </data_system/scenes/properties>`
- :doc:`Keying Sets </animation/keyframes/keying_sets>`

The Object features are usually documented in the *Objects* part of the 3D View Section.

- :doc:`Object </editors/3dview/object/properties/index>`
- :doc:`Modeling </editors/3dview/transform/introduction>`

The other features each have their own section in the manual.

- :doc:`Constraints </rigging/constraints/introduction>`
- :doc:`Modifiers </modeling/modifiers/introduction>`
- :doc:`Particles </physics/particles/index>`
- :doc:`Physics </physics/index>`
