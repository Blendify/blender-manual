
**********
Shape Keys
**********

*Shape Keys* are used on Objects like *Mesh*, *Curve*, *Surface*, *Lattice*.
They are used to animate deform the object vertices into a new shape.

.. figure:: /images/animation_shape-keys_example.png

   Example a mesh with different shape keys applied.


There are two types of Shape Keys:

Relative
   Which are relative to the Basis or selected shape key.
   They are mainly used as, for limb joints, muscles, or Facial Animation.
Absolute
   Which are relative to the previous and next shape key.
   They are mainly used to deform the objects into different shapes over time.

The shape key data, the deformation of the objects vertices,
is usually modified in the 3D View by selecting a shape key,
then moving the object vertices to a new position.


.. _animation-shape-keys-panel:

Shape Keys Panel
================

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Panel:    :menuselection:`Properties editor --> Object Data --> Shape Keys`

.. figure:: /images/animation_shape-keys_panel-basis.png

   Shape Keys panel.

Active Shape Key Index
   A :ref:`ui-list-view`.

   Value
      Current Value of the Shape Key (0.0 to 1.0).
   Mute
      This visually disables the shape key in the 3D View.

   Specials
      Transfer Shape Key
         Transfer the active *Shape Key* from a different object.
         Select two objects, the active Shape Key is copied to the active object.
      Join as Shapes
         Transfer the *Current Shape* from a different object.
         Select two objects, the Shape is copied to the active object.
      Mirror Shape Key
         If your mesh is nice and symmetrical, in *Object Mode*, you can mirror the shape keys on the X axis.
         This will not work unless the mesh vertices are perfectly symmetrical.
         Use the :menuselection:`Mesh --> Symmetrize` function in *Edit Mode*.
      Mirror Shape Key (Topology)
         This is the same as *Mirror Shape Key* though it detects
         the mirrored vertices based on the topology of the mesh.
         The mesh vertices do not have to be perfectly symmetrical for this one to work.
      New Shape From Mix
         Add a new shape key with the current deformed shape of the object.
      Delete All Shapes
         Delete all shape keys.

Relative
   Set the shape keys to *Relative* or *Absolute*.

Show Only (pin icon)
   Show the shape of the active shape key in the 3D View.
   *Show Only* is enabled while the object is in *Edit Mode*, unless the setting below is enabled.
Edit Mode
   Modify the shape key settings while the object is in *Edit Mode*.


Relative Shape Keys
^^^^^^^^^^^^^^^^^^^

Relative shape keys deform from a selected shape key.
By default, all relative shape keys deform from the first shape key called the Basis shape key.

.. figure:: /images/animation_shape-keys_panel-relative.png

   Relative Shape Keys options.

Clear Weights ``X``
   Set all values to zero.
Value
   The value of the active shape key.
Range
   Min and Max range of the active shape key value.
Blend
   Vertex Group
      Limit the active shape key deformation to a vertex group.
   Relative
      Select the shape key to deform from.


Absolute Shape Keys
^^^^^^^^^^^^^^^^^^^

Absolute shape keys deform from the previous and to the next shape key.
They are mainly used to deform the object into different shapes over time.

.. figure:: /images/animation_shape-keys_panel-absolute.png

   Absolute Shape Keys options.

Reset Timing (clock icon)
   Reset the timing for absolute shape keys.
   For example, if you have the shape keys, Basis, Key_1, Key_2, in that order.

   Reset Timing will loop the shape keys, and set the shape keyframes to +0.1.

   - Basis 0.1
   - Key_1 0.2
   - Key_2 0.3

   Evaluation Time will show this as frame 100.

   - Basis 10.0
   - Key_1 20.0
   - Key_2 30.0

Interpolation
   This controls the interpolation between shape keys.

   Linear, Cardinal, Catmull-Rom, B-Spline

   .. _fig-interpolation-type:

   .. figure:: /images/animation_shape-keys_interpolation-types.png

      Different types of interpolation.

      The red line represents interpolated values between keys (black dots).

Evaluation Time
   This is used to control the shape key influence.

   For example, if you have the shape keys, Basis, Key_1, Key_2, in that order, and you reset timing.

   - Basis 10.0
   - Key_1 20.0
   - Key_2 30.0

   You can control the shape key influence with Evaluation Time.
   Here keyframes have been used to control Evaluation Time for animation.


Workflow for Relative Shape Keys
================================

- In *Object Mode*, add a new shape keys via the *Shape Key* panel with the ``+`` button.
- "Basis" is the rest shape. "Key 1", "Key 2", etc. will be the new shapes.
- Switch to *Edit Mode*, select "Key 1" in the *Shape Key* panel.
- Deform mesh as you want (do not remove or add vertices).
- Select "Key 2", the mesh will be changed to the rest shape.
- Transform "Key 2" and keep going for other shape keys.
- Switch back to *Object Mode*.
- Set the *Value* for "Key 1", "Key 2", etc. to see the transformation between the shape keys.

In the figure below, from left to right shows: "Basis", "Key 1", "Key 2"
and mix ("Key 1" ``1.0`` and "Key 2" ``0.8``) shape keys in Object Mode.

.. figure:: /images/animation_shape-keys_workflow-relative.png

   Relative Shape Keys example.


Workflow for Absolute Shape Keys
================================

- Add sequence of shape keys as described above for relative shape keys.
- Uncheck the *Relative* checkbox.
- Click the *Reset Timing* button.
- Switch to *Object Mode*.
- Drag *Evaluation Time* to see how the shapes succeed one to the next.

.. figure:: /images/animation_shape-keys_workflow-absolute.png

   Absolute Shape Keys workflow.


By adding a :doc:`driver </animation/drivers>` or
setting :doc:`keyframes </animation/keyframes/introduction>` 
to *Evaluation Time* you can create an animation.


More Details on Absolute Shape Keys
===================================

The thing to remember about absolute shape keys is that they are
incomplete until you click the Reset Timing button. When you create a
shape key its "frame" property is zero (https://developer.blender.org/T39897),
which is a completely useless value.
This frame value is not displayed on the UI so you cannot
easily tell if something is wrong or screwy until your animation
starts misbehaving.

The number displayed to the right of the key name is the value and is used in relative shape
keys. It has no effect on absolute shape keys, so ignore it.

When you reset the timings Blender iterates through the shape keys
assigning them frame values incrementing by 0.1 from key to key.

.. list-table::
   :header-rows: 1

   * - name
     - frame
     - evaluation time
   * - Basis
     - 0.1
     - 10
   * - Key 1
     - 0.2
     - 20
   * - Key 2
     - 0.3
     - 30
   * - Key 3
     - 0.4
     - 40


If you delete a shape key this does not automatically alter the frame values
assigned to remaining shape keys.

.. list-table::
   :header-rows: 1

   * - name
     - frame
     - evaluation time
   * - Basis
     - 0.1
     - 10
   * - Key 1
     - 0.2
     - 20
   * - Key 3
     - 0.4
     - 40


The Evaluation Time is how you choose which shape key is active, and how active it is.
The interesting values range from 10 ... (*n* × 10) where *n* is the number of shape keys.
(assuming you have not deleted or added any keys since the last Reset Timing).
If you are using shape keys for animation,
99% of the time you will be putting keyframes on this Evaluation Time field.

.. note::

   If you are having problems with your absolute shape keys,
   there is a good chance, that you need to Reset Timing.

.. seealso:: Shape Key Operators

   There are two modeling tools used to control Shape Keys and are
   found in :ref:`Edit Mode <modeling-meshes-editing-vertices-shape-keys>`.
