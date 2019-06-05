.. _bpy.ops.export:
.. _bpy.ops.import:

***************************
Importing & Exporting Files
***************************

.. admonition:: Reference
   :class: refbox

   :Menu:      :menuselection:`Info Editor --> File --> Import/Export`

Sometimes you may want to utilize files that either came from other 2D or 3D software,
or you may want to use the things you have made in Blender and edit them in other software.
Luckily, Blender offers a wide range of file formats (e.g. OBJ, FBX, 3DS, PLY, STL, etc.)
that can be used to import and export.

Popular formats are enabled by default, other formats are also supported and distributed with Blender,
these can be enabled in the Preferences through the use of :doc:`Add-ons </editors/preferences/addons>`.

If you are not interested in technical details,
a good rule of thumb for selecting import/export formats for your project is:


:doc:`glTF (Graphics Library Transmission Format) </addons/io_gltf2>`
=====================================================================

if you intend to export rich materials for :abbr:`PBR (Physically Based Rendering)`
or need the file to be in ready-to-render form for a wide variety of clients and viewers.


:doc:`STL (STereoLithography) </addons/io_stl>`
===============================================

if you intend to import/export the files for CAD software.
This format is also commonly used for loading into 3D printing software.


:doc:`FBX (Filmbox) </addons/io_fbx>`
=====================================

if you intend to export objects with rigs and/or animation
to be used in other 3D creation suites or game development.


:doc:`DAE (Collada) </files/import_export/collada>`
===================================================

if you intend to export objects with rigs and/or animation
to be used in other 3D creation suites or game development (provided they support Collada).
See also the :doc:`Blender Collada module </pipeline/collada>`


:doc:`ABC (Alembic) </files/import_export/alembic>`
===================================================

if you want to import/export a large amount of scene data.
This :doc:`Alembic </pipeline/alembic>` format is also useful to export an animated mesh
(rather than a static mesh + the armature + the animation of the armature).
That animated mesh from an Alembic file can then be used for shading and lighting.

.. seealso::

   More information on the add-ons to import/export these file types can be found :ref:`here <addons-io>`.
