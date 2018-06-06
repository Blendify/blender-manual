
***********
Object Data
***********

Meshes
   The mesh :ref:`Data-Block Menu <ui-data-block>` can be used to link the data between objects.


Normals
=======

In geometry, a normal is a direction or line that is perpendicular to something,
typically a triangle or surface but can also be relative to a line, a tangent line for a point on a curve,
or a tangent plane for a point on a surface. Normals help determin the shading of the mesh among other things.

See :ref:`Normal Properties <modeling_meshes_editing_normals_properties>` for more information.

.. _properties-texture-space:

Texture Space
=============

.. (todo) object --> transform --> tex space

These are settings of the texture space used by the generated texture mapping.
The visualization of the texture space can be activated in the :doc:`/editors/3dview/object/properties/display`.

Texture Mesh
   .. Au: too buggy to doc? transformation in vertex leads to distortion.

Auto Texture Space
   Location, Size


Vertex Groups
=============

Vertex groups can be used to assign a group or weighted group to some operator.
An object can have several weight groups and can be assigned in
:doc:`Weight Paint </modeling/meshes/properties/vertex_groups/vertex_groups` mode,
or in :doc:`edit mode </modeling/meshes/properties/vertex_groups/assigning_vertex_group.rst>` via this panel.

See :doc:`Vertex Groups </modeling/meshes/properties/vertex_groups/index.rst` for more information.

Shape Keys
==========

Shape Keys can be used to transform one shape into another.
See :doc:`/animation/shape_keys/shape_keys_panel` for more information.


UV Maps
=======

UV Maps are used to map a 3D object onto a 2D plane that determines where a texture appears on the 3D object.
Different UV Maps can be used for different textures. For more information see :ref:`uv-maps-panel`.


Vertex Colors
=============

Color data can be applied directly to an object's vertices rather than using a texture or a material.
Colors can are painted onto vertices in :doc:`Vertex Paint </sculpt_paint/painting/vertex_paint/index.rst>` mode.


Geometry Data
=============

TODO add.
