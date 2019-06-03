
************
Introduction
************

(TODO add) see https://developer.blender.org/T46878

The UV Editor is where you can edit 2D assets like images/textures and UVs.

.. Using the UV editor is explained more in-depth in the next sections.
   This is an overview of the tools found there.

.. figure:: /images/editors_uv-image_introduction_main.png

   UV Editor with a UV map and a test grid texture.


Header
======

View
   Tools for controlling how the content is displayed in the editor.
   See :doc:`/editors/uv/navigating`.
Select
   Tools for :doc:`Selecting UVs </editors/uv/editing/layout>`.
Image
   This contains options for :doc:`/editors/image/index`.
UVs
   Contains tools for :doc:`Unwrapping Meshes </editors/uv/editing/unwrapping/index>`
   and :doc:`Editing UVs </editors/uv/editing/layout>`.

Modes
   View
      Images and UV maps.
   Paint
      :doc:`/sculpt_paint/painting/texture_paint/index`.
   Mask
      :doc:`/editors/movie_clip_editor/masking/index`.


Sidebar Region
==============

Grease Pencil
   See the :doc:`Grease Pencil </editors/3dview/grease_pencil/index>` docs.
Display
   Controls display options.


Header
======

.. figure:: /images/editors_uv-image_uv_introduction_texturing-header.png

   UV Editor header.

The header contains several menus and options for working with UVs.

Select
   Tools for :doc:`Selecting UVs </editors/uv/selecting>`.
UVs
   Contains tools for :doc:`Unwrapping Meshes </editors/uv/overview>`
   and :doc:`Editing UVs </editors/uv/editing/layout>`.

Pivot Point Selector
   Similar to working with Pivot Points in the 3D View.
Sync Selection
   Keeps UV and Mesh component selections in sync.
Selection Modes
   - Vertex
   - Edge
   - Face
   - Island
Sticky Selection Mode
   When Sync Selection is disabled, these options control how UVs are selected.
Proportional Editing
   See :doc:`Proportional Editing </editors/3dview/object/editing/transform/control/proportional_edit>`.
UV Snapping
   Similar to Snapping in the 3D View.
Active UV Texture Map Selector
   Select which UV texture to use.
Auto Update Other Affected Windows
   Update other affected windows automatically to reflect changes during interactive operations e.g. transforms.


Sidebar Region
==============

UV Vertex Panel
---------------

.. figure:: /images/editors_uv-image_uv_introduction_uv-vertex.png
   :align: right

   UV Vertex panel.

UV Vertex
   Transform Properties :doc:`Selecting UVs </editors/uv/editing/layout>`.
