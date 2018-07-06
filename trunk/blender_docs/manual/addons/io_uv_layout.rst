
*********
UV Layout
*********

:Name: UV Layout
:Location: :menuselection:`UV/Image editor --> UVs --> Export UV Layout`
:Version: 1.1.1
:Blender: 2.75
:Category: Import-Export
:Author(s): Campbell Barton, Matt Ebb


Usage
=====

Using your favorite image painting program, you could use an exported UV layout to create a texture.
Then save your changes, and back in Blender, use the :menuselection:`Image --> Open`
to load it as your UV image for the mesh in Edit Mode for the desired (and active) UV map.

As a way of communicating to an artist who is painting your UV Texture for you,
Blender has a tool called *UV Layout*
(located in the UV/Image Editor, :menuselection:`UVs --> Export UV Layout`)
that saves an image as a ``Targa`` (``.tga``), ``EPS``, or an ``SVG`` format for the object you have selected.

The image is an outline of the UV face mapping.
Activating the tool brings up the File Browser with options for saving the layout.


Properties
==========

.. figure:: /images/addons_io-uv-layout_export-panel.png

   Export options.

All UVs
   if disabled, then only the UV faces selected will be outlined.
Modified
   Export UVs from the modified mesh.
Format
   Select the type of image file to save (``.png``, ``.eps``, ``.svg``).
Size
   select the size of the image in pixels. The image be square.
Fill Opacity
   Set the opacity of the fill.
