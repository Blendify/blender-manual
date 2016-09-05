
.. |prop-edit-icon| image::
   /images/editors_3dview_transform-control_proportional-edit-header-icon.png

.. |prop-edit-edit-mode-icon| image::
   /images/editors_3dview_transform-control_proportional-edit-header-icon-edit-mode.jpg


*****************
Proportional Edit
*****************

Proportional Edit is a way of transforming selected elements (such as vertices)
while having that transformation affect other nearby elements. For example, having the
movement of a single vertex cause the movement of unselected vertices within a given range.
Unselected vertices that are closer to the selected vertex will move more than those farther
from it (i.e. they will move proportionally relative to the location of the selected element).
Since proportional editing affects the nearby geometry,
it is very useful when you need to smoothly deform the surface of a dense mesh.

.. note:: Sculpting

   Blender also has :ref:`painting-sculping-index`
   that contains brushes and tools for proportionally editing a mesh without seeing the individual vertices.


Object Mode
===========

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     Via the |prop-edit-icon| icon in the header indicated by the yellow square in the below image.
   | Hotkey:   :kbd:`O`


Proportional editing is typically used in *Edit Mode*, however,
it can also be used in *Object Mode*. In *Object Mode* the tool works on
entire objects rather than individual mesh components. In the image below,
the green cube is the active Object, while the red and blue cubes are located within the
proportional edit tool's radius of influence. When the green cube is moved to the right,
the other two cubes follow the movement.

.. figure:: /images/editors_3dview_transform-control_proportional-edit-object-mode.jpg

   Proportional editing in Object Mode.


.. Todo move to modeling section

Edit Mode
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Mesh --> Proportional Editing` and via the |prop-edit-edit-mode-icon| highlighted icon
   | Hotkey:   :kbd:`O`, :kbd:`Alt-O`, :kbd:`Shift-O`


When working with dense geometry, it can become difficult to make subtle adjustments to the
vertices without causing visible lumps and creases in the model's surface. When you face
situations like this the proportional editing tool can be used to smoothly deform the surface
of the model.
This is done by the tool's automatic modification of unselected vertices within a given range.

.. figure:: /images/editors_3dview_transform-control_proportional-edit-edit-mode.jpg

   Proportional editing in Edit Mode.


Influence
---------

You can increase or decrease the radius of the proportional editing influence with the mouse
wheel :kbd:`WheelUp`, :kbd:`WheelDown` or :kbd:`PageUp`, :kbd:`PageDown`
respectively. As you change the radius,
the points surrounding your selection will adjust their positions accordingly.

.. figure:: /images/editors_3dview_transform-control_proportional-edit-influence.jpg

   Influence circle.


Options
-------

.. list-table::

   * - .. figure:: /images/editors_3dview_transform-control_proportional-edit-tool.jpg
         :width: 200px

         Proportional Editing tool.

     - .. figure:: /images/editors_3dview_transform-control_proportional-edit-falloff-options.jpg
         :width: 200px

         Falloff menu.


The *Proportional Editing* mode menu is on the *3D View* header.

Disable :kbd:`O`, :kbd:`Alt-O`
   Proportional Editing is Off, only selected vertices will be affected.
Enable :kbd:`O`, :kbd:`Alt-O`
   Vertices other than the selected vertex are affected, within a defined radius.
Projected (2D)
   Depth along the view is ignored when applying the radius.

   .. figure:: /images/editors_3dview_transform-control_proportional-edit-2d_compare.jpg
      :width: 400px

      The difference between regular and Projected (2D) proportional option (right).

Connected :kbd:`Alt-O`
   Rather than using a radius only, the proportional falloff spreads via connected geometry. This means that you can
   proportionally edit the vertices in a finger of a hand without affecting the other fingers.
   While the other vertices are physically close (in 3D space),
   they are far away following the topological edge connections of the mesh.
   The icon will have a gray center when *Connected* is active.
   This mode is only available in *Edit Mode*.


Falloff
   While editing, you can change the curve profile used by either using the
   :menuselection:`Mesh --> Proportional Falloff` submenu, using the header icon *Falloff menu*,
   or by pressing :kbd:`Shift-O` to toggle between the various options.

.. list-table::

   * - .. figure:: /images/editors_3dview_transform-control_proportional-edit-falloff-constant.png
          :width: 320px

          Constant, No Falloff.

     - .. figure:: /images/editors_3dview_transform-control_proportional-edit-falloff-random.png
          :width: 320px

          Random Falloff.

   * - .. figure:: /images/editors_3dview_transform-control_proportional-edit-falloff-linear.png
          :width: 320px

          Linear Falloff.

     - .. figure:: /images/editors_3dview_transform-control_proportional-edit-falloff-sharp.png
          :width: 320px

          Sharp Falloff.

   * - .. figure:: /images/editors_3dview_transform-control_proportional-edit-falloff-root.png
          :width: 320px

          Root Falloff.

     - .. figure:: /images/editors_3dview_transform-control_proportional-edit-falloff-sphere.png
          :width: 320px

          Sphere Falloff.

   * - .. figure:: /images/editors_3dview_transform-control_proportional-edit-falloff-smooth.png
          :width: 320px

          Smooth Falloff.

     - ..


Examples
--------

Switch to a front view :kbd:`Numpad1` and activate the grab tool with :kbd:`G`.
As you drag the point upwards, notice how nearby vertices are dragged along with it.
When you are satisfied with the placement, click :kbd:`LMB` to fix the position.
If you are not satisfied,
cancel the operation and revert your mesh to the way it looked before with
:kbd:`RMB`, :kbd:`Esc`.

You can use the proportional editing tool to produce great effects with the scaling
:kbd:`S` and rotation :kbd:`R` tools,
as Fig. :ref:`fig-view3d-transform-landscape` shows.

.. _fig-view3d-transform-landscape:

.. figure:: /images/editors_3dview_transform-control_proportional-edit-landscape.jpg

   A landscape obtained via proportional editing.


Combine these techniques with vertex painting to create fantastic landscapes.
The Fig. :ref:`fig-view3d-transform-landscape-rendered` below shows the results of proportional editing after the
application of textures and lighting.

.. _fig-view3d-transform-landscape-rendered:

.. figure:: /images/editors_3dview_objects_transform_roportional-edit_example.jpg
   :width: 620px

   Final rendered landscape.
