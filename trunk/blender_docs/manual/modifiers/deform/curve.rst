
**************
Curve Modifier
**************

The Curve Modifier provides a simple but efficient method of deforming a mesh along a curve object.

The Curve Modifier works on a (global) dominant axis, X, Y, or Z.
This means that when you move your mesh in the dominant direction (by default, the X-axis),
the mesh will traverse along the curve. Moving the mesh perpendicularly to this axis,
the object will move closer or further away from the curve.

When you move the object beyond the curve endings the object will continue to deform based on the direction vector of
the curve endings.


Options
=======

.. figure:: /images/Modifiers-Curve.jpg

   Curve modifier


Object
   The name of the curve object that will affect the deformed object.

Vertex Group
   A vertex group name within the deformed object. The modifier will only affect vertices assigned to this group.

Deformation Axis
   *X*, *Y*, *Z*, *-X*, *-Y*, *-Z*:
   This is the axis that the curve deforms along.


Example
=======

Let's make a simple example:


- Remove default cube object from scene and add a Monkey (:menuselection:`Add --> Mesh --> Monkey`)
- Now add a curve (:menuselection:`Add --> Curve --> Bezier Curve`)

..    Comment: <!--[[File:Manual-Part-II-curvesDeform_exampleAddMonkey.png|frame|left|Add a Monkey!]]
   [[File:Manual-Part-II-curvesDeform_exampleAddCurve.png|frame|left|Add a Curve.]]--> .


.. figure:: /images/curvesDeform_exampleEditCurve.jpg
   :width: 300px

   Edit Curve.


- While in Edit Mode, move the control points of the curve as shown in (*Edit Curve*),
  then exit Edit Mode (:kbd:`Tab`).
- Select the Monkey (:kbd:`RMB`) in *Object mode*
- Assign the curve to the modifier, as shown below. The Monkey should be positioned on the curve:


.. figure:: /images/Modifiers-Curve.jpg

   Assign the Bezier curve to the Curve modifier (for Monkey)


.. figure:: /images/curvesDeform_exampleMonkeyOnCurve1.jpg
   :width: 200px

   Monkey on a Curve.


- Now if you select the Monkey, and move it in the Y-direction (:kbd:`G, Y`),
  the monkey will deform nicely along the curve.

.. tip::

   If you press :kbd:`MMB` while moving the Monkey you will constrain the movement to one axis only.


.. figure:: /images/curvesdeform_examplemonkeyoncurve2.jpg
   :width: 250px

   Monkey deformations.


- In the image above you can see the Monkey at different positions along the curve.
  To get a cleaner view over the deformation, a :doc:`Subsurf </modifiers/generate/subsurf>` modifier with
  two subdivision levels was applied, and :doc:`smooth </modeling/meshes/smoothing>` shading was used.


