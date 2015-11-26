
************
Introduction
************

..
   TODO: Match formatting from: http://wiki.blender.org/index.php/Doc:2.6/Reference/Textures/UV_Image_Editor
   EDITORS NOTE: we probably don't need to move All tiny images over from old doc.

..
   TODO: We probably want this to be a more regular index page
   then link to other topics in their own page, UV/Mask/Scopes/Paint... etc

The UV/Image Editor is where you will be editing the UVs.
This is an overview of the tools found there. Using the UV editor is explained more in depth in the next sections.

.. figure:: /images/editors_uv-image-main.jpg
   :align: center

   UV/Image Editor window for texturing.


Header Bar
==========

[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Header.png|thumb|center|900px|UV/Image Editor Header]]
The header bar contains several menus and options for working with UVs

View menu
   Tools for [[Doc:2.6/Manual/Textures/Mapping/UV_Image_Editor#Navigating_in_UV_Space|Navigating]],
   working with the editor and controlling how things are displayed.
   The properties panel has display options and manipulation tools.
   When an image is being used, image properties are displayed.
   The Scopes panel is used when working with Images. It contains different image visualizers
Select menu
   Tools for [[Doc:2.6/Manual/Textures/Mapping/UV/Layout Editing#Selecting|Selecting UVs]].
Image menu
   This contains options for when [[Doc:2.6/Manual/Textures/Mapping/UV/Applying Image|Working with Images]] and [[Doc:2.6/Manual/Textures/Painting|Painting Textures]].
UVs menu
   Contains tools for [[Doc:2.6/Manual/Textures/Mapping/UV/Unwrapping|Unwrapping Meshes]] and
   [[Doc:2.6/Manual/Textures/Mapping/UV/Layout Editing|Editing Uvs]].


[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Image-Selector-Btn.png]] ''Image Selector Menu''
   Select the image to apply when [[Doc:2.6/Manual/Textures/Mapping/UV/Applying Image|Working with Images]].
[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Pin-Btn.png]] [[Doc:2.6/Manual/Textures/Mapping/UV/Applying Image|Pin Image]]
   Displays current image regardless of selected object.
[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Pivot-Btn.png]] [[Doc:2.6/Manual/Textures/Mapping/UV/Layout Editing#Pivot Points|Pivot Point Selector]]
   Similar to working with Pivot Points in the 3D view.
[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Syncsel-Btn.png]] [[Doc:2.6/Manual/Textures/Mapping/UV/Layout Editing#Selecting Uvs|Sync Selection]]
   Keeps UV and Mesh component selections in sync.
[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Selmodes-Btn.png]] [[Doc:2.6/Manual/Textures/Mapping/UV/Layout Editing#Selecting Uvs|Selection Modes]]:
   - Vertex
   - Edge
   - Face
   - Island
[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Stickyselmodes-Btn.png]] **[[Doc:2.6/Manual/Textures/Mapping/UV/Layout Editing#Selecting Uvs|Sticky Selection Mode]]**
   When Sync Selection is disabled, these options control how UVs are selected.
[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Proportedit-Btn.png]] **[[Doc:2.6/Manual/Textures/Mapping/UV/Layout Editing|Proportional Editing]]**
   Works like [[Doc:2.6/Manual/3D interaction/Transform Control/Proportional Edit|Proportional Editing in the 3d view]]
[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Uvsnap-Btn.png]] **[[Doc:2.6/Manual/Textures/Mapping/UV/Layout Editing#Snapping|UV Snapping]]**
   Similar to Snapping in the 3D View
[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Active-Uvmap-Btn.png]] **[[Doc:2.6/Manual/Textures/Mapping/UV/Layout Management|Active UV Texture Map Selector]]**
   Select which UV texture to use
[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Image-Channels-Btn.png]] **Image Channels to Draw**
   Set the image to be displayed with *Color*, *Color and Alpha*, or just *Alpha*.
[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Autoupdate-Btn.png]] **Auto Update Other Affected Windows**
   Update other affected windows space automatically to reflect changes during interactive operations such as transfom.


Properties Panel
================

[[Image:Doc-26-Textures-UV-Image-Editor-Texturing-Properties-panel.png|thumb|right|400px|UV/Image Editor Properties panel]]

UV Vertex
   [[Doc:2.6/Manual/Textures/Mapping/UV/Layout Editing|Transform Properties]] for select UVs
Grease Pencil
   See the :doc:`Grease Pencil </interface/grease_pencil/converting_to_geometry>` Docs.
Image
   Contains the properties of the current
   [[Doc:2.6/Manual/Textures/Mapping/UV/Applying Image|Image]]
Display
   Controls display options for UVs and additional settings for when
   [[Doc:2.6/Manual/Textures/Mapping/UV/Applying Image|Working with Images]].


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
