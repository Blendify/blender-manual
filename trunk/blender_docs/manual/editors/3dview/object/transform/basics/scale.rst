
*****
Scale
*****

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Edit Modes
   | Menu:     :menuselection:`Object/Mesh/Curve/Surface --> Transform --> Scale`
   | Hotkey:   :kbd:`S`


Pressing :kbd:`S` will enter the *Scale* transformation mode where the
selected element is scaled inward or outward according to the mouse pointer's location. The
element's scale will increase as the mouse pointer is moved away from the Pivot Point and
decrease as the pointer is moved towards it. If the mouse pointer crosses from the original side of the
:doc:`Pivot Point </editors/3dview/object/transform/transform_control/pivot_point/index>` to the opposite side,
the scale will continue in the negative direction and flip the element.

.. figure:: /images/editors_3dview_object_transform_basics_scale_basic-usage.png

   Basic scale usage. From left to right, the panels show: the original Object,
   a scaled down Object, a scaled up Object and a scale-flipped Object.


There are multiple ways to scale an element which include:

- The keyboard shortcut :kbd:`S`
- The 3D manipulator widget
- The Properties menu :kbd:`N`

Basic scale usage and common options are described below. For additional information, you may
wish to read the :doc:`Transform Control </editors/3dview/object/transform/transform_control/index>`
and :doc:`Transform Orientations </editors/3dview/object/transform/transform_control/transform_orientations>`
pages which provide more information about options such as Precision, Axis Locking, Numeric Input,
Snapping and the different types of Pivot Point.


Usage
=====

Scaling using the keyboard shortcut
-----------------------------------

- Use :kbd:`RMB` to select the elements you want to scale.
- Tap :kbd:`S` once to enter scale mode.
- Scale the elements by moving the mouse.
- :kbd:`LMB` click to accept changes.

The amount of scaling will be displayed in the footer of the 3D View editor.

.. figure:: /images/editors_3dview_transform_basics_scale_display-values.png

   Scale values.


.. seealso::

   - :doc:`Read more about Precision Control
     </editors/3dview/object/transform/transform_control/precision/introduction>`
   - :doc:`Read more about Numerical Transformations
     </editors/3dview/object/transform/transform_control/precision/numeric_input>`
   - :doc:`Read more about Transform Orientations
     </editors/3dview/object/transform/transform_control/transform_orientations>`
   - :doc:`Read more about the 3D Transform Manipulator
     </editors/3dview/object/transform/transform_control/manipulators>`.
