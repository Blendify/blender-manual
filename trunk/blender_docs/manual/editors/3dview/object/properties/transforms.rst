.. _bpy.types.Object.location:

********************
Transform Properties
********************

Each object stores its position, orientation, and scale values.
These may need to be manipulated numerically, reset, or applied.


Transform Panel
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit and Object Modes
   | Menu:     :menuselection:`Object --> Transform`
   | Panel:    :menuselection:`Properties region --> Transform`


The *Transform* panel in the Properties region allows you to view and
manually/numerically control the position, rotation, and other properties of an object, in *Object Mode*.
In *Edit Mode*, it mainly allows you to enter precise coordinates for a vertex,
or median position for a group of vertices (including an edge/face). As each type of object has a different set of
options in its *Transform* panel in *Edit Mode*,
see their respective descriptions in the :doc:`Modeling chapter </modeling/index>`.


Options in Object Mode
----------------------

Use this panel to either edit or display the object's transform properties such as position,
rotation and/or scaling. These fields change the object's center and then affects the aspect
of all of its *vertices* and faces.

.. figure:: /images/editors_3dview_transform-control_properties.png
   :align: right

   Transform Properties.


Location
   The object's center location in global coordinates.
Rotation
   The object's orientation, relative to the global axes and its own center.

.. _rotation-modes:

   Rotation Mode
      Method for calculating rotations, additional information can be found
      `here <https://wiki.blender.org/index.php/User:Pepribal/Ref/Appendices/Rotation>`__.

      Euler
         The manipulator handles are aligned to the :term:`Euler` axis,
         allowing you to see the discreet XYZ axis underlying the euler rotation,
         as well as possible :term:`gimbal lock`.
      Axis Angle
         The X, Y, and Z coordinates define a point relative to the object origin
         through which an imaginary “skewer” passes. The “W” value is the rotation of this skewer,
         in radians. Here, the Manipulator’s Z-axis stays aligned with this skewer.
      Quaternion
         X, Y, Z and W correspond to the :term:`Quaternion` components.

Scale
   The object's scale, relative to its center, in local coordinates
   (i.e. the *Scale X* value represents the scale along the local X-axis).
   Each object (cube, sphere, etc.), when created, has a scale of one Blender unit in each local direction.
   To make the object bigger or smaller, you scale it in the desired dimension.
Dimensions
   The object's basic dimensions (in Blender units) from one outside edge to another, as if measured with a ruler.
   For multi-faceted surfaces, these fields give the dimensions of the bounding box
   (aligned with the local axes -- think of a cardboard box just big enough to hold the object).


Transform Properties Locking
----------------------------

The locking feature of the Location, Rotation and Scale fields allows you to control a
transform property solely from the properties region.
Once a lock has been activated any other methods used for transformation are blocked.
For example, if you locked the *Location X* field then you cannot use the mouse to
translate the object along the global X axis.
However, you can still translate it using the *Location X* edit field.
Consider the locking feature as a rigid constraint only changeable from the panel.

To lock a field, click the padlock icon next to the field.
The field is unlocked if the icon appears as "open padlock",
and it is locked if the icon appears as "closed padlock".


.. _transform-delta:

Delta Transforms
================

Delta Transforms are simply transformations that are applied on top of the transforms described above.
They can be found in the :menuselection:`Properties Editor --> Object --> Delta Transforms`.


Usage
-----

Delta Transforms are particular useful in animations. For example,
you can animate an object with the "normal" transforms then move them around with Delta Transforms.

