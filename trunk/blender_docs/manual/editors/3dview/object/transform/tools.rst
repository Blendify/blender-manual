
***************
Transform Tools
***************

Randomize Transform
===================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode and Edit Mode
   | Menu:     :menuselection:`Object --> Transform --> Randomize Transform`,
               :menuselection:`Mesh --> Transform --> Randomize`

.. figure:: /images/transform-randomize.png
   :figwidth: 158px
   :align: right

   Randomize transform options.

This tool allows you to apply a randomized transformation.


Object Mode
-----------

In Object Mode it randomizes the translate, rotate,
and scale values to an object or multiple objects. When applied on multiple objects,
each object gets its own seed value, and will get different transform results from the rest.

Options
^^^^^^^

Random Seed
   The random seed is an offset to the randomized transformation.
   A different seed will produce a new result.
Transform Delta
   Randomize :ref:`Delta Transform <transform-delta>`
   values instead of regular transform.

Randomize Location
   Randomize Location values.
Location
   The maximum distances the objects can move along each axis.

Randomize Rotation
   Randomize rotation values.
Rotation
   The maximum angle the objects can rotate on each axis.

Randomize Scale
   Randomize scale values.
Scale Even
   Use the same scale for each axis.
Scale
   The maximum scale randomization over each axis.


Edit Mode
----------

The *Randomize* tool in Edit Mode allows you to displace the vertices of a mesh
along their normal.


Options
^^^^^^^

Amount
   Distance of the displacement.
Uniform
   Adds a random offset of the amount.
Normal
   Adds a random offset to the displacement normal.
Random Seed
   The random seed is an offset to the random transformation.
   A different seed will produce a new result.


Align Objects
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Object --> Transform --> Align Objects`


The align tool is used to align multiple selected objects so they line up on a specified axis.


Options
-------

High Quality
   Uses more precise math to better determine the locations for the objects.

Align Mode
   TODO.

Relative To
   TODO.

Align X, Y, Z
   Chooses which axis to align the selected objects on.
