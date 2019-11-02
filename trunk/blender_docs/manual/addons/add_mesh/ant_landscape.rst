
*************
ANT Landscape
*************

Introduction
============

This add-on creates landscapes and planets using various noise types. A.N.T = Another Noise Tool


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Add Mesh then A.N.T. Landscape to enable the script.


Interface
=========

.. figure:: /images/addons_add_mesh_landscape_ui.jpg
   :align: right
   :figwidth: 220px

Located in the :menuselection:`3D View --> Add --> Mesh` menu.

Located in the :menuselection:`3D View --> Sidebar --> Create` tab.


Instructions
============
After creating your landscape mesh there's 3 main areas in the 3D View Operator panel to design your mesh.

   - Main Settings: Object and mesh related settings like size and subdivisions.
   - Noise Settings: Noise related settings that give shape to your terrain.
   - Displace Settings: Settings for terrain height and edge falloff.

   
Landscape Panel
---------------

Landscape
   Landscape will create the mesh and add several panels and tools to the Sidebar.

Landscape Tools
---------------

Mesh Displace
   Displace selected mesh vertices along normal or X, Y, Z direction.
Weight From Slope
   Generates a weighted vertex group slope map based on the Z normal value.
Landscape Eroder
   Apply various kinds of erosion to an A.N.T. Landscape grid, also available in :menuselection:`Weight Paint mode --> Weights menu`.


Landscape Main
--------------

Here we can adjust the main settings and regenerate the mesh.

Smooth the mesh, Triangulate the mesh, Rename and add materials that you have in your .blend file.


Landscape Noise
---------------

Here we can adjust the noise settings and refresh only those settings.

There are many settings and noise types here which allow you to customize your landscape.


Landscape Displace
------------------

Here we can adjust the displacemant settings and refresh only those settings.

Adjust Height, Falloff and Strata in this section.


Usage
=====

To Do


.. admonition:: Reference
   :class: refbox

   :Category:  Add Mesh
   :Description: Another Noise Tool: Landscape, erosion and displace.
   :Location: :menuselection:`Sidebar --> Create tab`
   :File: ant_landscape folder
   :Author: Jimmy Hazevoet
   :Maintainer: To Do
   :License: GPL
   :Support Level: Community
   :Note: This add-on is bundled with Blender.
