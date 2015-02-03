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

This tool rotates a line of selected elements forming an arc at the 3D Cursor.
Normally the arc turns through a clamped rotation angle with the selected elements extended along a
tangent line beyond that (see above left).
When the clamp is OFF, the arc continues around
aligning the selected elements into a circle (right).
Bend isn't effected by *Pivot Point* or *Transform Orientation*,
always using the View Plane instead.
Position the mouse to along the line of selected elements.

Here are the control settings.

Bend Angle
   The amount of rotation ( when *Clamp* is ON ).

Radius
   The sharpness of the bend.

Clamp
   When OFF (:kbd:`Alt`) all selected elements follow a circle,
   even when outside the segment between the 3d cursor and the mouse.

.. hint::

   You can turn the bend angle through multiple rotations potentially forming a spiral shape.

