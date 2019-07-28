.. _bpy.types.SpaceProperties:

*****************
Properties Editor
*****************

.. figure:: /images/editors_properties-editor_interface.png
   :align: right

   The Properties editor, with *Object* properties shown.

The Properties editor shows and allows editing of many active data, including the active scene and object.


Tabs
====

The Properties editor has several categories, which can be chosen via tabs (the icons column to its left).
Each tab regroups properties and settings of a data type, and is documented in its own manual sections, linked below.


Active Tool and Workspace Settings
----------------------------------

This first tab contains settings for the active :doc:`tool </editors/3dview/toolbar/index>` (in the 3D View)
and the current :doc:`workspace </interface/window_system/workspaces>`.


Scene
-----

These tabs contain settings for the active scene.

.. _properties-render-tab:

- Render: :doc:`Eevee </render/eevee/index>`,
  :doc:`Cycles </render/cycles/render_settings/index>` or
  :doc:`Workbench </render/workbench/index>` settings
- :doc:`Output </render/output/index>`
- :doc:`View Layer </scene_layout/view_layers/index>`
- :doc:`Scene </scene_layout/scene/properties>`
- :doc:`World </render/lights/world>`


.. _properties-data-tabs:

Object
------

These tabs are used to add features, and to change properties for the active object.
Depending on the type of the active object, some of those will be hidden.

- :doc:`Object </scene_layout/object/properties/index>`
- :doc:`Modifiers </modeling/modifiers/index>` (or :doc:`Grease Pencil Modifiers </grease_pencil/modifiers/index>`)
- :doc:`Object Visual Effects </grease_pencil/visual_effects/index>`
- :doc:`Particles </physics/particles/index>`
- :doc:`Physics </physics/index>`
- :doc:`Object Constraints </animation/constraints/index>`


Object Data
-----------

The main tab of that category (often the only one) always has the same name, *Object Data*,
but its icon will change based of the actual type of the active object.


.. rubric:: Geometry Objects:

- :doc:`Mesh </modeling/meshes/properties/object_data>`
- :doc:`Curve </modeling/curves/properties/index>`
- :doc:`Surface </modeling/surfaces/properties/index>`
- :doc:`Text </modeling/texts/properties>`
- :doc:`Metaball </modeling/metas/properties>`
- :doc:`Grease Pencil </grease_pencil/properties/index>`


.. rubric:: Rigging and Deformation Objects:

- :doc:`Armature </animation/armatures/properties/index>`

  - :doc:`Bone </animation/armatures/bones/properties/index>`
  - :doc:`Bone Constraints </animation/armatures/posing/bone_constraints/index>`

- :doc:`Lattice </animation/lattice>`


.. rubric:: Other Types of Objects:

- :doc:`Empty </modeling/empties>`
- :doc:`Speaker </render/output/audio/speaker>`
- :doc:`Camera </render/cameras>`
- :doc:`Light </render/lights/light_object>`
- :doc:`Light Probe </render/eevee/lightprobes/index>`


Object Shading
--------------

Depending on the type of the active object, some of those will be hidden.

- :doc:`Material </render/materials/index>`
- :doc:`Texture </render/materials/legacy_textures/index>`


Header
======

.. figure:: /images/editors_properties-editor_top.png

   The header of the Properties editor.

In the header of this editor, a list of icons and text items shows the owner of the properties being edited,
together with some dependency context if needed.
In the example above, the material "Material" is used by the active object "Cube".

By toggling on the pin icon to the right, Blender can be told to display in that editor
only the currently shown data-block's properties, disregarding further selection changes.
Toggle off that pin to switch back to default behavior, showing active data-block's properties.
