..    TODO/Review: {{review|copy=X|partial=X}}.

****************
Managing UV Maps
****************

After you finish editing a UV map, you may need to create additional maps on the same object,
or transfer a UV map to another mesh.


Transferring UV Maps
====================

You can copy a UV Map from one mesh to another Mesh provided both meshes have the same
geometry/vertex order. This is useful for example when you want to recreate a UV map from an
earlier version of your model with intact UVs.


Workflow
--------

#. :kbd:`RMB` Select the target mesh (to which you want to copy the UV Map).
#. :kbd:`Shift` select the source mesh (that contains the intact UV map).
#. :menuselection:`Object menu --> Make Links... --> Transfer UV Layouts` (Shortcut: :kbd:`Ctrl-L` ...).
 
The target Mesh will now have a UV map that matches the original mesh.


Multiple UV Maps
================

You are not limited to one UV Map per mesh. You can have multiple UV maps for parts of the mesh
by creating new UV maps. This can be done by clicking the *Add* button next to UV maps list
(in *Object Data* tab in the Properties Editor) and unwrapping a different part of the mesh.
UV maps always include the whole mesh.

.. (todo) continue image clipping


.. _uv-maps-panel:

UV Maps Panel
=============

.. figure:: /images/editors_uv-image_uv-editing_layout-management_uv-maps.png

   The UV Maps panel in the Mesh tab.

In the Mesh tab the UV maps panel contains a :ref:`ui-list-view` that lists the UV maps created for this mesh.
The selected map is displayed in the UV/Image Editor.

Active Render
   Click the camera icon to enable that UV texture for rendering.
   If no other map is explicitly specified.

Add ``+``
   Clicking the *Add* button duplicates the selected UV map.

.. seealso::

   Note that each texture can be mapped to a specific UV texture.
   See the :doc:`Mapping </render/blender_render/textures/properties/mapping>` panel of the texture tab.
