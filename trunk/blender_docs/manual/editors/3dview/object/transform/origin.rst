
*************
Object Origin
*************

Each object has an origin point. The location of this point determines where the object is located in 3D space.
When an object is selected, a small circle appears, denoting the origin point.
The location of the origin point is important when translating, rotating or scaling an object.
See :doc:`Pivot Points </editors/3dview/object/transform/transform_control/pivot_point/index>` for more.

The color of the origin is set by the :ref:`animation-state-colors` and 
light blue when it is a "multi-user" object linked between scenes.
The size can be changed in the :doc:`Interface tab </preferences/interface>` of the User Preferences.


Set Origin
==========

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Modes
   | Menu:     :menuselection:`Object --> Transform -->`
   | Hotkey:   :kbd:`Shift-Ctrl-Alt-C`

The Object Origin and Geometry can be moved relative to each other and to the 3D Cursor.

Type
   Geometry to Origin
      Move model to origin and this way origin of the object will also be at the center of the object.
   Origin to Geometry
      Move origin to the center of the object and this way origin of the object will also be at
      the center of the object.
   Origin to 3D Cursor
      Move origin of the model to the place of the 3D cursor.
   Origin to Center of Mass
      Move origin to calculated center of mass of model (assuming the mesh has uniform density).
Center
   Median Point Center, Bounding Box Center

