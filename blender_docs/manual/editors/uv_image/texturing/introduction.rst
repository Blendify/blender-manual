
************
Introduction
************

..
   TODO: We probably want this to be a more regular index page
   then link to other topics in their own page, UV/Mask/Scopes/Paint... etc

The UV/Image Editor is where you will be editing the UVs.
This is an overview of the tools found there. Using the UV editor is explained more in depth in the next sections.

.. figure:: /images/editors_uv-image-main.jpg

   UV/Image Editor window for texturing.


Header Bar
==========

.. figure:: /images/editors_image_texturing-header.png

   UV/Image Editor Header

The header bar contains several menus and options for working with UVs

View Menu
   Tools for, working with the editor and controlling how things are displayed.
   The properties panel has display options and manipulation tools.
Select Menu
   Tools for :doc:`Selecting UV's </editors/uv_image/texturing/layout_editing>`
Image Menu
   This contains options for when :doc:`Working with Images </editors/uv_image/texturing/applying_image>`
UVs Menu
   Contains tools for :doc:`Unwrapping Meshes </editors/uv_image/texturing/uv_mapping>`
   and :doc:`Editing UV's </editors/uv_image/texturing/layout_editing>`.

Image Selector Menu
   Select the image to apply when :doc:`Working with Images </editors/uv_image/texturing/applying_image>`.
Pin Image
   Displays current image regardless of selected object.
Pivot Point Selector
   Similar to working with Pivot Points in the 3D view.
Sync Selection
   Keeps UV and Mesh component selections in sync.
Selection Modes:
   - Vertex
   - Edge
   - Face
   - Island
Sticky Selection Mode
   When Sync Selection is disabled, these options control how UVs are selected.
Proportional Editing
   See :doc:`Proportional Editing </editors/3dview/transform/transform_control/proportional_edit>`.
UV Snapping
   Similar to Snapping in the 3D View
Active UV Texture Map Selector
   Select which UV texture to use
Image Channels to Draw
   Set the image to be displayed with *Color*, *Color and Alpha*, or just *Alpha*.
Auto Update Other Affected Windows
   Update other affected windows space automatically to reflect changes during interactive operations e.g. transfom.


Properties Panel
================

.. figure:: /images/editors_image_properties.png
   :align: right

   Image Editor Properties Panel

UV Vertex
   Transform Properties :doc:`Selecting UV's </editors/uv_image/texturing/layout_editing>`.
Grease Pencil
   See the :doc:`Grease Pencil </interface/grease_pencil/converting_to_geometry>` Docs.
Image
   Contains the properties of the current Image.
Display
   Controls display options for UVs and additional settings for when
   :doc:`Working with Images </editors/uv_image/texturing/applying_image>`.

Display Options
---------------

You can set how UVs are displayed in the *Display Panel*:

Aspect Ratio
   Display Aspect for this image. Does not affect rendering.

Coordinates
   Display UV coordinates

   Repeat
      Draw the image repeated outside of the main view.
   Normalized
      Display UV coordinates from 0.0 to 1.0 rather than in pixels

Cursor Location
   2D cursor location for this view

Outline/Dash/Black/White
   Sets how UV edges are displayed

Draw Faces
   Draw faces over the image
Smooth
   Makes edges appeared Antialiased
Modified
   Show results of modifiers in the UV display
Stretch
   Shows how much of a difference there is between UV coordinates and 3D coordinates.
   Blue means low distortion, while Red means high distortion.
   Choose to display the distortion of *Angles* or the *Area*.
