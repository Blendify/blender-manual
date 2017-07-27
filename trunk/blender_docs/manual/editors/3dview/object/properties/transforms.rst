.. _bpy.types.Object.location:
.. _bpy.types.Object.rotation:
.. _bpy.types.Object.scale:
.. _bpy.types.Object.dimensions:

********************
Transform Properties
********************

Each object stores its position, orientation, and scale values.
These may need to be manipulated numerically, reset, or applied.


Transform Panel
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Object --> Transform`
   | Panel:    :menuselection:`Properties region --> Transform`


The *Transform* panel in the Properties region allows you to view and
manually/numerically control the position, rotation, and other properties of an object, in *Object Mode*.
In *Edit Mode*. It mainly allows you to enter precise coordinates for a vertex,
or median position for a group of vertices (including an edge/face). As each type of object has a different set of
options in its *Transform* panel in *Edit Mode*,
see their respective descriptions in the :doc:`Modeling chapter </modeling/index>`.


Options in Object Mode
----------------------

Use this panel to either edit or display the object's transform properties such as position,
rotation and/or scaling. These fields change the object's origin and then affect the aspect
of all of its *vertices* and faces.

.. figure:: /images/editors_3dview_transform-control_properties.png
   :align: right

   Transform Properties.


Location
   The object's origin location in global coordinates.
Rotation
   The object's orientation, relative to the global axes and its own origin.

.. _rotation-modes:

   Rotation Mode
      Method for calculating rotations, additional information can be found
      `here <https://wiki.blender.org/index.php/User:Pepribal/Ref/Appendices/Rotation>`__.

      Euler
         The manipulator handles are aligned to the :term:`Euler` axis,
         allowing you to see the discreet XYZ axis underlying the euler rotation,
         as well as possible :term:`gimbal lock`.
      Axis Angle
         The X, Y, and Z coordinates define a point relative to the object origin.
         This point and the origin define an axis around the W value defines the rotation.
      Quaternion
         X, Y, Z and W correspond to the :term:`Quaternion` components.

Scale
   The object's relative scale along the local axis
   (e.g. the *Scale X* value represents the scale along the local X-axis).
   Each object (cube, sphere, etc.), when created, has a scale of one Blender unit in each local direction.
   To make the object bigger or smaller, you scale it in the desired axis.
Dimensions
   The size of the objects bounding box.
   (aligned with the local axes -- think of a cardboard box just big enough to hold the object).


.. _bpy.types.Object.lock:

Transform Properties Locking
----------------------------

When the toggle is locked, the corresponding transformation value can not be changed in any interactive operation.
However, the value can still be changed using non-interactive operations,
like editing the corresponding number button or using Python.

For example, if you locked the *Location X* property then you cannot use the 3D manipulator to
translate the object along the global X axis.
However, you can still translate it using the *Location X* number button.
Consider the locking feature as a rigid constraint only changeable from the panel.

To lock a property, click the padlock icon next to the button.
The button is unlocked if the icon shows an open padlock,
and it is locked if the icon appears as a closed padlock.


.. _bpy.types.Object.delta:
.. _transform-delta:

Delta Transforms
================

Delta Transforms are simply transformations that are applied on top of the transforms described above.
They can be found in the :menuselection:`Properties Editor --> Object --> Delta Transforms`.


Usage
-----

Delta Transforms are particularly useful in animations. For example,
you can animate an object with the "normal" transforms then move them around with Delta Transforms.
