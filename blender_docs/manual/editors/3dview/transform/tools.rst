
***************
Transform Tools
***************

Randomize Transform
===================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Object --> Transform --> Randomize Transform`

.. figure:: /images/transform-randomize.png
   :figwidth: 158px
   :align: right

   Randomize transform options.


The randomize transform tool allows you to apply random translate, rotate,
and scale values to an object or multiple objects. When applied on multiple objects,
each object gets its own seed value, and will get different transform results from the rest.


Options
-------

Random Seed
   The random seed is an offset to the random transformation.
   A different seed will produce a new result.
Transform Delta
   Randomize :ref:`Delta Transform <transform-delta>`
   values instead of regular transform.

Randomize Location
   Randomize Location vales
Location
   The maximum distances the objects can move along each axis.

Randomize Rotation
   Randomize rotation values.
Rotation
   The maximum angle the objects can rotate on each axis

Randomize Scale
   Randomize scale values.
Scale Even
   Use the same scale for each axis.
Scale
   The maximum scale randomization over each axis.


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

Align X,Y,Z
   Chooses which axis to align the selected objects on.
