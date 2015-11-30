
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

   Blender also has :ref:`painting_sculping-index`
   that contains brushes and tools for proportionally editing a mesh without seeing the individual vertices.


Object mode
===========

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object mode*
   | Menu:     Via the icon in the header indicated by the yellow square in the below image.

   .. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-proportional-edit-header-icon.jpg

   | Hotkey:   :kbd:`O`


Proportional editing is typically used in *Edit mode*, however,
it can also be used in *Object mode*. In *Object mode* the tool works on
entire objects rather than individual mesh components. In the image below,
the green cube is the active Object, while the red and blue cubes are located within the
proportional edit tool's radius of influence. When the green cube is moved to the right,
the other two cubes follow the movement.


.. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-object-mode.jpg

   Proportional editing in Object mode.


Edit mode
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit mode*
   | Menu:     :menuselection:`Mesh --> Proportional Editing` and via the highlighted icon in the below image


   .. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-proportional-edit-header-icon-edit-mode.jpg

   | Hotkey:   :kbd:`O` / :kbd:`Alt-O` / :kbd:`Shift-O`


When working with dense geometry, it can become difficult to make subtle adjustments to the
vertices without causing visible lumps and creases in the model's surface. When you face
situations like this the proportional editing tool can be used to smoothly deform the surface
of the model.
This is done by the tool's automatic modification of unselected vertices within a given range.


.. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-edit-mode.jpg

   Proportional editing in Edit mode.


Influence
---------

You can increase or decrease the radius of the proportional editing influence with the mouse
wheel :kbd:`WheelUp` / :kbd:`WheelDown` or :kbd:`PageUp` / :kbd:`PageDown`
respectively. As you change the radius,
the points surrounding your selection will adjust their positions accordingly.


.. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-influence.jpg

   Influence circle.


Options
-------

.. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-proportional-edit-tool.jpg
   :width: 200px

   Proportional Editing tool.


.. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-proportional-edit-falloff-options.jpg
   :width: 200px

   Falloff menu.


The *Proportional Editing* mode menu is on the *3D View* header.

Disable (:kbd:`O` or :kbd:`Alt-O`)
   Proportional Editing is Off, only selected vertices will be affected.

Enable (:kbd:`O` or :kbd:`Alt-O`)
   Vertices other than the selected vertex are affected, within a defined radius.

Projected (2D)
   Depth along the view is ignored when applying the radius.


.. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-2D_Compare.jpg
   :width: 300px

   The difference between regular and Projected (2D) proportional option (right).


Connected (:kbd:`Alt-O`)
   Rather than using a radius only, the proportional falloff spreads via connected geometry. This means that you can
   proportionally edit the vertices in a finger of a hand without affecting the other fingers.
   While the other vertices are physically close (in 3D space),
   they are far away following the topological edge connections of the mesh.
   The icon will have a grey center when *Connected* is active.
   This mode is only available in *Edit mode*.


Falloff
   While you are editing, you can change the curve profile used by either using the
   :menuselection:`Mesh --> Proportional Falloff` submenu, using the toolbar icon (*Falloff menu*),
   or by pressing :kbd:`Shift-O` to toggle between the various options.


.. list-table::

   * - .. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-falloff-constant.jpg
          :width: 300px

          Constant, No Falloff.

     - .. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-falloff-random.jpg
          :width: 300px

          Random Falloff.

   * - .. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-falloff-linear.jpg
          :width: 300px

          Linear Falloff.

     - .. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-falloff-sharp.jpg
          :width: 300px

          Sharp Falloff.

   * - .. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-falloff-root.jpg
          :width: 300px

          Root Falloff.

     - .. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-falloff-sphere.jpg
          :width: 300px

          Sphere Falloff.

   * - .. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-falloff-smooth.jpg
          :width: 300px

          Smooth Falloff.

     -


Examples
--------

Switch to a front view (:kbd:`Numpad1`) and activate the grab tool with :kbd:`G`.
As you drag the point upwards, notice how nearby vertices are dragged along with it.
When you are satisfied with the placement, click :kbd:`LMB` to fix the position.
If you are not satisfied,
cancel the operation and revert your mesh to the way it looked before with :kbd:`RMB`
(or :kbd:`Esc`).

You can use the proportional editing tool to produce great effects with the scaling
(:kbd:`S`) and rotation (:kbd:`R`) tools,
as *A landscape obtained via proportional editing* shows.


.. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-landscape.jpg
   :width: 640px

   A landscape obtained via proportional editing.


Combine these techniques with vertex painting to create fantastic landscapes. The *final
rendered landscape* image below shows the results of proportional editing after the
application of textures and lighting.


.. figure:: /images/3D-interaction_Transform-Control_Proportional-Edit-landscape-textured.jpg
   :width: 620px

   Final rendered landscape.


