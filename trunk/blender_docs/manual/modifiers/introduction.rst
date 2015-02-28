
..    TODO/Review: {{review|text=Needs to stay updated with new modifiers being added}} .

************
Introduction
************

.. admonition:: Reference

   Modifiers are added from the *Modifiers* context of the Properties Editor.


Modifiers
=========

Modifiers are automatic operations that affect an object in a non-destructive way. With modifiers,
you can perform many effects automatically that would otherwise be too tedious to do manually
(such as subdivision surfaces) and without affecting the base geometry of your object.

They work by changing how an object is displayed and rendered, but not the geometry which you can edit directly.
You can add several modifiers to a single object to form a :doc:`Modifier Stack </modifiers/the_stack>` and
*Apply* a modifier if you wish to make its changes permanent.


.. figure:: /images/25-Manual-Modifiers-menu.jpg
   :width: 600px

   Modifiers menu


There are four types of modifiers:


Modify
------

The *Modify* group of modifiers are tools similar to the *Deform Modifiers* (see below),
but which do not directly affect the shape of the object; rather they affect some other data, such as vertex groups.

:doc:`Mesh Cache </modifiers/modify/mesh_cache>`
   Apply animated mesh data (from external file) to a mesh.
:doc:`UV Project </modifiers/modify/uv_project>`
   Project UV coordinates on your mesh.
:doc:`UV Warp </modifiers/modify/uv_warp>`
   Dynamically edit the UV coordinates on your mesh.
:doc:`Vertex Weight </modifiers/modify/vertex_weight>`
   Edit a vertex group of your mesh, in various ways.


Generate
--------

The *Generate* group of modifiers are constructive tools that either change the
general appearance of or automatically add new geometry to an object.

:doc:`Array </modifiers/generate/array>`
   Create an array out of your basic mesh and similar (repeating) shapes.
:doc:`Bevel </modifiers/generate/bevel>`
   Create a bevel on a selected mesh object.
:doc:`Boolean </modifiers/generate/booleans>`
   Combine/subtract/intersect your mesh with another one.
:doc:`Build </modifiers/generate/build>`
   Assemble your mesh step by step when animating.
:doc:`Decimate </modifiers/generate/decimate>`
   Reduce the polygon count of your mesh.
:doc:`Edge Split </modifiers/generate/edge_split>`
   Add sharp edges to your mesh.
:doc:`Mask </modifiers/generate/mask>`
   Allows you to hide some parts of your mesh.
:doc:`Mirror </modifiers/generate/mirror>`
   Mirror an object about one of its own axes, so that the resultant mesh is symmetrical.
:doc:`Multiresolution </modifiers/generate/multiresolution>`
   Sculpt your mesh at several levels of resolution.
:doc:`Remesh </modifiers/generate/remesh>`
   Can fix heavily triangulated meshes, and other issues, with careful Threshold adjustments.
:doc:`Screw </modifiers/generate/screw>`
   Generate geometry in a helix-pattern from a simple profile.
   Similar to the :doc:`Screw Tool </modeling/meshes/editing/duplicating/screw>` in edit mode.
:doc:`Skin </modifiers/generate/skin>`
   Automatically generate topology.
:doc:`Solidify </modifiers/generate/solidify>`
   Give depth to mesh faces.
:doc:`Subdivision Surface </modifiers/generate/subsurf>`
   Subdivides your mesh using Catmull-Clark or Simple algorithms.
:doc:`Triangulate </modifiers/generate/triangulate>`
   Converts all faces to Triangles.
:doc:`Wireframe </modifiers/generate/wireframe>`
   Converts all faces into a wireframe.


Deform
------

The *Deform* group of modifiers only change the shape of an object without adding new geometry,
and are available for meshes, and often texts, curves, surfaces and/or lattices.

:doc:`Armature </modifiers/deform/armature>`
   Use bones to deform and animate your object.
:doc:`Cast </modifiers/deform/cast>`
   Shift the shape of a mesh, surface or lattice to a sphere, cylinder or cuboid.
:doc:`Curve </modifiers/deform/curve>`
   Bend your object using a curve as guide.
:doc:`Displace </modifiers/deform/displace>`
   Deform your object using a texture.
:doc:`Hook </modifiers/deform/hooks>`
   Add a hook to your vertice(s) (or control point(s)) to manipulate them from the outside.
:doc:`Laplacian Smooth </modifiers/deform/laplacian_smooth>`
   Allows you to reduce noise on a mesh's surface with minimal changes to its shape.
:doc:`Laplacian Deform </modifiers/deform/laplacian_deform>`
   allows you to pose a mesh while preserving geometric details of the surface.
:doc:`Lattice </modifiers/deform/lattice>`
   Use a Lattice object to deform your object.
:doc:`Mesh Deform </modifiers/deform/mesh_deform>`
   Allows you to deform your object by modifying the shape of another mesh,
   used as a "Mesh Deform Cage" (like when using a lattice).
:doc:`Shrinkwrap </modifiers/deform/shrinkwrap>`
   Allows you to shrink/wrap your object to/around the surface of a target mesh object.
:doc:`Simple Deform </modifiers/deform/simple_deform>`
   Applies some advanced deformations to your object.
:doc:`Smooth </modifiers/deform/smooth>`
   Smooth the geometry of a mesh. Similar to the *Smooth* tool in the mesh editing context.
:doc:`Warp </modifiers/deform/warp>`
   Warp a mesh by specifying two points the mesh stretches between.
:doc:`Wave </modifiers/deform/wave>`
   Deform your object to form (animated) waves.


Simulate
--------

The *Simulate* group of modifiers activate simulations. In most cases, these
modifiers are automatically added to the modifiers stack whenever a *Particle System*
or *Physics* simulation is enabled. Their only role is to define the
place in the modifier stack used as base data by the tool they represent. Generally,
the attributes of these modifiers are accessible in separate panels.

:doc:`Cloth </physics/cloth>`
   Simulates the properties of a piece of cloth.
   It is inserted in the modifier stack when you designate a mesh as Cloth.
:doc:`Collision </physics/collision>`
   Simulates a collision between objects.
:doc:`Dynamic Paint </physics/dynamic_paint/index>`
   Makes an object or a particle system paint a material onto another object.
:doc:`Explode </modifiers/simulate/explode>`
   Blows up your mesh using a particle system.
:doc:`Fluid </physics/fluid/index>`
   The object is part of a fluid simulation... The modifier added when you designate a mesh as Fluid.
:doc:`Particle Instance </modifiers/simulate/particle_instance>`
   Makes an object act similar to a particle but using the mesh shape instead.
:doc:`Particle System </physics/particles/index>`
   Represents a particle system in the stack, so it is inserted when you add a particle system to the object.
:doc:`Smoke </physics/smoke/index>`
   Simulates realistic smoke.
:doc:`Soft Body </physics/soft_body/index>`
   The object is soft, elastic... Modifier added when you designate a mesh as Softbody.
:doc:`Ocean </modifiers/simulate/ocean>`
   Quickly creates a realistic, animated ocean.


Interface
=========

.. figure:: /images/25-Manual-Modifiers-Subsurf.jpg

   Panel Layout (Subsurf as an example)


Each modifier has been brought in from a different part of Blender,
so each has its own unique settings and special considerations. However,
each modifier's interface has the same basic components, see (*Panel Layout
(Subsurf as an example)*).

At the top is the *panel header*.
The icons each represent different settings for the modifier (left to right):

Arrow
   Collapse modifier to show only the header and not its options.
Icon
   A quick visual reference of the modifier's type.
Name
   Every modifier has a unique name per object. Two modifiers on one object must have unique names,
   but two modifiers on different objects can have the same name. The default name is based off the modifier type.
Camera
   Toggles visibility of the modifier effect in the render.
Eye
   Toggles visibility of the modifier effect in the 3D view.
Box
   Displays the modified geometry in edit mode, as well as the original geometry which you can edit.
Triangle
   When enabled, the final modified geometry will be shown in edit mode and can be edited directly.
Up arrow
   Moves modifier up in the stack.
Down arrow
   Moves modifier down in the stack.
Cross
   Deletes the modifier.

.. note:: The *Box* and *Triangle* icons may not be available depending on the type of modifier.

Below the header are two buttons:

Apply
   Makes the modifier "real" - converts the object's geometry to match the applied modifier,
   and deletes the modifier.
Copy
   Creates a duplicate of the modifier at the bottom of the stack.

.. warning:: Applying a modifier that is not first in the stack will ignore the stack order and
             could produce undesired results.

Below this header, all of the options unique to each modifier will be displayed.
