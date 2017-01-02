
**********
DupliFaces
**********

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Panel:    :menuselection:`Object --> Duplication`
   | Menu:     :menuselection:`Object --> Make Dupli-Face`


*Duplication Faces* or *DupliFaces* is the capability to replicate an object on each face of a parent object.
One of the best ways to explain this is through an example illustration.


.. seealso:: Example blend-file

   Download the blend-file used for the examples on this page
   `here <https://wiki.blender.org/index.php/:File:Manual-2.5-Duplifaces-Example01.blend>`__.


Basic Usage
===========

.. figure:: /images/dupliface-example01-1start.png

   A cube and a sphere.


In this example we will use a UV sphere with an extruded "north pole" as our base object and
cube as our parent mesh. To parent the sphere to the cube, in *Object Mode*,
first :kbd:`RMB` select the sphere, then :kbd:`Shift-RMB` select the cube
(order is very important here), and finally :kbd:`Ctrl-P` to parent.

.. figure:: /images/dupliface-example01-2duplifaceenabled.jpg

   Duplication Faces applied to the cube.


Next, in the :menuselection:`Object tab --> Duplication panel`,
enable *Faces*. The sphere is duplicated one for each face of the cube.

.. note:: Inherited properties

   The location, orientation, and scale of the duplicated child(ren) matches that of the faces of the parent.
   So, if several objects are parented to the cube, they will all be duplicated once for each face on the cube.
   If the cube is subdivided, every child will be duplicated for each face on the cube.


Both the parent object and original are displayed as editable "templates" in 3D View,
but neither is rendered.


Scale
=====

.. figure:: /images/dupliface-example01-3scaleenabled.jpg

   Scale enabled.

.. figure:: /images/dupliface-example01-4scalechanged.jpg

   Top face of cube scaled down.


By enabling *Scale* for the parent object,
the scale of the child objects will be adapted to the size of each face in the parent object.

Thus, by rescaling the face of the parent object,
the size of the duplicated object will change accordingly.


Limitations/Considerations
============================

The positioning of the duplicated geometry relative to the face is dependent upon the position
of the child objects relative to the duplicator's origin. This can lead to some visual
artifacts in the editor as the geometry of the original objects overlaps or intersects with
the duplicates.
One workaround is to move the origin of the duplicator mesh off of the plane of the faces.

If the geometry of the children is not symmetrical then the orientation of the face
(as determined by the order of its vertices) could matter. As of 2.70 Blender does not have
tools which allow you to adjust the ordering of the vertices on a face.

However, there is a workflow that lets you control for this. Make a single square and enable
the Duplication/Faces so you can see the duplicated geometry in your editor.
If the orientation is not what you want, rotate the face until it is how you want.
Typically you want to do the rotation in Edit Mode, not Object Mode,
but this is not a hard rule.

Once you have the orientation correct,
Duplicate the face and move the duplicate where you want it.
Repeat this process until you have enough faces.
Since it is common for these faces to butt up against one another,
your geometry will have lots of duplicate vertices.
Use the Remove Doubles button in the Tools panel.

A short video illustrating this workflow:

.. youtube:: diI8xJ9oo_8
