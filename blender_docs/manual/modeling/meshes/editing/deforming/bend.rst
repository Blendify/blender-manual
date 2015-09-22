****
Bend
****

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* and *Edit* modes
   | Menu:     :menuselection:`Object/Mesh/Curve/Surface --> Transform --> Bend`
   | Hotkey:   :kbd:`Shift-W`

.. figure:: /images/modeling_meshes_editing_deforming_bend.jpg

   Bend Transform with Clamp ON and OFF

This tool rotates a line of selected elements forming an arc between the mouse-cursor and the 3D-cursor.


Usage
=====

The bend tool can be used in any case where you might want to bend a shape in two
with a gradual transition between both sides.

This may take a little getting used to, the basics are listed below controls are noted here.

- The initial position of the cursors define the axis to bend on.
- The distance of the mouse-cursor to the 3d-cursor controls how sharp the bend will be.
- The relative angle of the mouse-cursor to the initial axis defines the bend angle.

If this seems overly complicated, its probably best to try the tool where it becomes quickly apparent
how the tool reacts to your input.

Bend Angle
   The amount of rotation.

Radius
   The sharpness of the bend.

Clamp
   Normally the arc turns through a clamped rotation angle with the selected elements extended along a
   tangent line beyond that (see above left).
   When the clamp is OFF, the arc continues around aligning the selected elements into a circle (right).

   When OFF (:kbd:`Alt`) all selected elements follow a circle,
   even when outside the segment between the 3d cursor and the mouse.

.. note::
   Unlike most other transform modes *Bend* isn't effected by *Pivot Point* or *Transform Orientation*,
   always using the View Plane instead.

.. hint::

   You can turn the bend angle through multiple rotations potentially forming a spiral shape.

