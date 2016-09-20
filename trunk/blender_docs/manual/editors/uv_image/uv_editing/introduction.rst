
************
Introduction
************

..
   TODO: We probably want this to be a more regular index page
   then link to other topics in their own page, UV/Mask/Scopes/Paint... etc


Header
======

.. figure:: /images/editors_image_texturing-header.png

   UV/Image Editor Header.

The header contains several menus and options for working with UVs.

Select
   Tools for :doc:`Selecting UVs </editors/uv_image/uv_editing/layout_editing>`.
UVs
   Contains tools for :doc:`Unwrapping Meshes </editors/uv_image/uv_editing/overview>`
   and :doc:`Editing UVs </editors/uv_image/uv_editing/layout_editing>`.

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
   See :doc:`Proportional Editing </editors/3dview/object/transform/transform_control/proportional_edit>`.
UV Snapping
   Similar to Snapping in the 3D View.
Active UV Texture Map Selector
   Select which UV texture to use.
Auto Update Other Affected Windows
   Update other affected windows automatically to reflect changes during interactive operations e.g. transfom.


Properties Region
=================

.. figure:: /images/editors_image_properties.png
   :align: right

   UV/Image Editor Properties region.

UV Vertex
   Transform Properties :doc:`Selecting UVs </editors/uv_image/uv_editing/layout_editing>`.


Display Panel
-------------

You can set the editors display options in the this panel.

Aspect Ratio
   Display Aspect for this image. Does not affect rendering.
Coordinates
   Display UV coordinates.

   Repeat
      Draw the image repeated outside of the main view.
   Normalized
      Display UV coordinates from 0.0 to 1.0 rather than in pixels.
Cursor Location
   2D cursor location for this view.
UVs
   Edge Draw Type
      Sets how UV edges are displayed.

      Outline, Dash, Black, White
   Draw Faces
      Draw faces over the image.
   Smooth
      Makes edges appeared anti-aliased.
   Modified
      Show results of modifiers in the UV display.
   Stretch
      Shows how much of a difference there is between UV coordinates and 3D coordinates.
      Blue means low distortion, while Red means high distortion.
      Choose to display the distortion of *Angles* or the *Area*.
