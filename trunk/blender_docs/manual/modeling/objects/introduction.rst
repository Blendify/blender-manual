
..    TODO/Review: {{review|split=X|text=need to separate generic information from moving, erase join. like 2.4.
                  *update* erase join removed from here (already in /modeling/objects/editing.rst). Moving info
                  seems to belong to the 3D interaction section (which is to be removed or merged? - pixaal 12/24/14)
       Need also to explain objects classes (curves, mesh, etc) and possible conversions from and to (greylica)}} .

..    FIXME: This section about objects includes armatures,
             lamps, and cameras, and doesn't fit in the modeling section.
             The introduction includes a list of object types that are relevant to modeling,
             so this section needs to be moved out to an earlier section,
             perhaps the beginning of 3d navigation(/3d_interaction/navigating)

***********
Object Mode
***********

.. figure:: /images/ObjectMode-Selected-Ex.jpg
   :width: 400px

   Selected object in 3D View: (1) Solid shading, (2) Wireframe shading.


The geometry of a scene is constructed from one or more Objects. These objects
can range from lamps to light your scene, basic 2D and 3D shapes to fill it with models, armatures
to animate those models, to cameras to take pictures or video of it all.


Types of Objects
****************

:doc:`Meshes </modeling/meshes/introduction>`
   Meshes are objects composed of Polygonal Faces, Edges and/or Vertices,
   and can be edited extensively with Blender's mesh editing tools. The default scene features a cube,
   which is one of the many included basic building-block
   shapes called :doc:`Mesh Primitives </modeling/meshes/primitives>`
:doc:`Curves </modeling/curves/introduction>`
   Curves are mathematically defined objects
   which can be manipulated with control handles or control points (instead of vertices),
   to manage their length and curvature.
:doc:`Surfaces </modeling/surfaces/introduction>`
   Surfaces are patches that are also manipulated with control points.
   These are useful for simple rounded forms and organic landscapes.
:doc:`Meta Objects </modeling/metas/introduction>`
   Meta Objects (or Metaballs) are objects formed by a mathematical function (with no control points or vertices)
   defining the 3D volume in which the object exists.
   Meta Objects have a liquid-like quality, where when two or more Metaballs are brought together,
   they merge by smoothly rounding out the connection, appearing as one unified object.
:doc:`Text </modeling/texts/introduction>`
   Text objects create a two dimensional representation of a string of characters.
:doc:`Armatures </rigging/armatures>`
   Armatures are used for :doc:`rigging </rigging/introduction>`
   3D models in order to make them poseable and animateable.
:doc:`Lattice </modifiers/deform/lattice>`
   Lattices are non-renderable wireframes, commonly used for taking additional control
   over other objects with help of the :doc:`Lattice Modifier </modifiers/deform/lattice>`.
:doc:`Empty </modeling/empties>`
   Empties are null objects that are simple visual transform nodes that do not render.
   They are useful for controlling the position or movement of other objects.
:doc:`Speaker </editors/sequencer/audio>`
   Brings to scene source of sound.
:doc:`Cameras </render/camera/index>`
   This is the virtual camera that is used to determine what appears in the render.
:doc:`Lamps </render/blender_render/lighting/index>`
   These are used to place light sources in the scene.
:doc:`Force Fields </physics/force_fields>`
   Force fields are used in physical simulations.
   They give simulations external forces, creating movement,
   and are represented in 3d editor by small control objects.


.. figure:: /images/ObjectMode.jpg

   Object Mode button.


Each object can be moved, rotated and scaled in *Object Mode* (see picture).
However, not all of these transformations have an effect on all objects. For example,
scaling a force field will not increase its effect.


.. figure:: /images/EditMode.jpg

   Edit Mode button.


For making other changes to the geometry of editable objects,
you should use *Edit mode* (see picture).


Once you've added a basic object, you remain in *Object Mode*.
In earlier versions of Blender,
you were automatically switched into *Edit mode* if the Object was a Mesh,
a Curve or a Surface.

You can switch between *Object Mode* and *Edit Mode* by pressing
:kbd:`Tab`.

The object's wireframe should now appear orange.
This means that the object is now selected and active (see picture *Selected object*).

The (*Selected object*)
image shows both the solid view and wireframe view of the default cube.
To switch between wireframe and solid view, press :kbd:`Z`.


Object Centers
**************

Each object has an origin point. The location of this point determines where the object is located in 3D space.
When an object is selected, a small circle appears, denoting the origin point.
The location of the origin point is important when translating, rotating or scaling an object.
See :doc:`Pivot Points </getting_started/basics/transformations/transform_control/pivot_point/index>` for more.


Moving Object Centers
=====================

Object Centers can be moved to different positions through
*3D View window --> Transform --> Origin* (press :kbd:`T` to open panel):

Geometry to Origin
   Move model to origin and this way origin of the object will also be at the center of the object.
Origin to Geometry
   Move origin to the center of the object and this way origin of the object will also be at
   the center of the object.
Origin to 3D Cursor
   Move origin of the model to the place of the 3D cursor.
Origin to Center of Mass
   Move origin to calculated center of mass of model.


