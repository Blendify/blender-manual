
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

- :doc:`Render </render/output/index>` and
  :doc:`settings BI </render/blender_render/settings/index>`, :doc:`settings Cycles </render/cycles/settings/index>`
- :doc:`/render/post_process/layers`
- :doc:`Scene </data_system/scenes/properties>`
- :doc:`World BI </render/blender_render/world/index>`, :doc:`World Cycles </render/cycles/world>`


Object & Object Data
--------------------

These tabs are used to add features, and to change properties for the Active Object
(and other active elements, material, curve... etc).

.. figure:: /images/properties_object.png
   :align: right

   Object Data tabs.

The Object Data tabs shown depend on what type of object was selected last (The Active Object).

- :doc:`Object </editors/3dview/object/properties/index>`
- :doc:`/rigging/constraints/index`
- :doc:`/modeling/modifiers/index`

..

- :doc:`Mesh </editors/3dview/object/types/meshes/object_data>`
- :doc:`Curve </modeling/curves/properties>`
- :doc:`Surface </modeling/surfaces/introduction>`
- :doc:`Metaball </modeling/metas/properties>`
- :doc:`Text </modeling/texts/properties>`
- :doc:`Empty </editors/3dview/object/types/empties>`

..

- :doc:`Armature </rigging/armatures/properties>`
- :doc:`Bones </rigging/armatures/bones/properties>`
- Bone Constraints
- :doc:`Lattice </editors/3dview/object/types/lattice>`

..

- :doc:`Speaker </editors/3dview/object/types/speaker>`
- :doc:`Camera BI </editors/3dview/object/types/camera/object_data>`, :doc:`Camera Cycles </render/cycles/camera>`
- :doc:`Lamp BI </render/blender_render/lighting/lights/light_properties>`, :doc:`Lamp Cycles </render/cycles/lamps>`

..

- :doc:`Material BI </render/blender_render/materials/index>`, :doc:`Material Cycles </render/cycles/materials/index>`
- :doc:`Texture BI </render/blender_render/textures/index>`, :doc:`Texture Cycles </render/cycles/materials/texture_editing>`
- :doc:`Particles </physics/particles/properties/index>`
- :doc:`Physics </physics/index>`


.. (todo) Generic Object Data page?


Main View
=========

.. figure:: /images/editors_properties.png

   The Properties Editor with the Mesh tab selected.

At the top of the each tab a list of icons explains the context in which the properties is being edited.
In the example above, the mesh *Cube* is linked to the object *Cube* which is linked to the scene *Scene*.

.. This is a branch of the scene graph?

By toggling the pin symbol on the left side on and off,
Blender can be told to display only the selected property or to follow context.
