
**************
Geodesic Domes
**************

.. admonition:: Reference
   :class: refbox

   :Category:  Add Mesh
   :Description: Create Geodesic object types.
   :Location: :menuselection:`3D View --> Add --> Mesh`
   :File: add_mesh_geodesic_domes folder
   :Author: Andy Housten
   :Maintainer: To Do
   :License: GPL


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Add Mesh then Geodesic Domes to enable the script.
- This add-on is bundled with Blender.


Introduction
============

Original introduction from Andy Houston (Blender 2.4 series)

- Geodesic spheres based on icosahedrons, octahedrons and tetrahedrons.
- Triangular, hexagonal and hex/tri combo face options.
- A function that turns the current shape into its geometric dual (sort of).
- Grid, Cylinder, Parabola, Torus and Ball primitives.
- Hubs and Struts. Fill out those edges and vertices with your custom, decorative meshes.
- Superformula deforming. Create rounded triangles, wobbly shapes etc.

Introduction by Brendon Murphy (Blender 2.6/7 series)

- This Script can be used to create Geodesic Objects, not limited to Domes or Spheres.
- Each mesh type created has it's own set of editable parameters.
- By editing the paramerers, you can create many simple or complex mesh shapes.
- Create an equal side Pyramid, a Soccer Ball, a Wine Glass & more.
- Limited only by your imagination. ( & some cool math limitations )
- Create complex mesh deformations with the Superformular parameters.
- In the next section we will cover the menu types & how to use the parameters to "Design" your mesh.


Instructions
============

   Main:
    - The "Main" menu is where you will do most of your work.
    - The Geodesic Default Triangle will show in the 3d view & the Object Creation parameters can be accessed here.
    - Please note: I find it's easier to Use the Object Creation Parameters first befor moving on to Faces, Struts & Hubs, these will be explained in the sections below.

For now, let's look at the Object Types & their Parameters

   Objects Menu:
    - There are 6 Object types you can create by default.
    - Using the Parameters You can build upon these objects to create more object types.
    - Object Types have unique parameter sets & share the Superformular Parameters.(described Later)


Geodesic Object Class Types:
============================

Geodesic:
    - Please note: the Frequency parameters have a high impact on object creation.
    - To create a Geodesic Dome you must increase the Frequency or the default Triangle

Subdivide Basic/Triacon
    Class 1 is the "equilateral triangle"
    Class 2 is the "cube"

Hedron
    Choose between Tetrahedron, Octahedron, Icosahedron

Point
    Point (Vert), Edge or Face pointing upwards

Shape
    Choose between tri hex star face types

Round (may not work for all object types)
    Choose between spherical or flat

Geodesic Object Parameters:

Frequency
    Subdivide base triangles

Radius
    Overall radius

Eccentricity
    Scaling in x/y dimension

Squish
    Scaling in z dimension

Square (x/y)
    Superelipse action in x/y

Square (z")
    Superelipse action in z

Rotate (x/y)
    Rotate superelipse action in x/y

Rotate (z)
    Rotate superelipse action in z

Duel
    Faces become verts, verts become faces, edges flip


Geodesic Object Types:
============================

- There are 6 Object types you can create.
- Each Object has it's own set of parameters.
- As you can see most menu items are Self Explained.
- Tooltips will give you furthur information on individual parameters.

Gap
    Shrink faces in direction
    Add or remove rows of faces based on height (z) or (x/y)

Phase
    Rotate around pivot
    Useful for rotating deformation or use with Gap


Import Your Mesh
================

- You can Import your own mesh into geodesic domes for use within the script.
- This is limited to the Faces, Struts & Hubs menu's

Faces
=====

To Do


Struts
======

To Do


Hubs
====

To Do


Superformular Menu
==================

To Do
