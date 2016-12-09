..    TODO/Review: {{review|im=examples|partial=X|text = expand basic selection tools}}.

*****
Basic
*****

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Hotkey:   :kbd:`RMB` and :kbd:`Shift-RMB`


The most common way to select an element is to :kbd:`RMB` on that item;
this will replace the existing selection with the new item.


Adding to a Selection
=====================

To add to the existing selection, hold down :kbd:`Shift` while right clicking.
Clicking again on a selected item will deselect it.

As in *Object Mode*, there is a unique *active* element,
displayed in a lighter shade (in general, the last element selected).
Depending on the tools used, this element might be very important!

Note that there is no option to choose what element to select between overlapping ones
(like the :kbd:`Alt-RMB` click in *Object Mode*). However,
if you are in solid, shaded, or textured viewport shading mode
(not bounding box or wireframe),
you will have a fourth button in the header that looks like a cube,
just right of the select mode ones.

When enabled, this limits your ability to select based on visible elements
(as if the object was solid), and prevents you from accidentally selecting, moving,
deleting or otherwise working on backside or hidden items.


Selecting Elements in a Region
==============================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Hotkey:   :kbd:`B`, :kbd:`C`, and :kbd:`Ctrl-LMB` click and drag


Region selection allows you to select groups of elements within a 2D region in your 3D View.
The region can be either a circle or rectangle.
The circular region is only available in *Edit Mode*. The rectangular region,
or *Border Select, is available in both *Edit Mode* and *Object Mode*.


.. note::

   What is selected using both these tools is affected by the *Limit Selection to visible* feature
   (available under the 3D View) in *Solid Viewport Shading Mode*.

   For example,

   - in solid shading mode and face selection mode, all faces *within* the selection area will be selected;
   - while in the wireframe shading mode and face selection mode,
     only faces whose handle are within the selection area will be selected.


Rectangular region (Border select)
----------------------------------

*Border Select* is available in either *Edit Mode* or *Object Mode*. To activate the tool use the :kbd:`B`.
Use *Border Select* to select a group of objects by drawing a rectangle while holding down :kbd:`LMB`.
In doing this you will select all objects that lie within or touch this rectangle.
If any object that was last active appears in the group it will become selected *and* active.

.. list-table::

   * - .. _fig-mesh-select-basics-start:

       .. figure:: /images/modeling-meshes-selection-borderselect1.png
          :width: 200px

          Start.

     - .. _fig-mesh-select-basics-selecting:

       .. figure:: /images/modeling-meshes-selection-borderselect2.png
          :width: 200px

          Selecting.

     - .. _fig-mesh-select-basics-complete:

       .. figure:: /images/modeling-meshes-selection-borderselect3.png
          :width: 200px

          Complete.


In Fig. :ref:`fig-mesh-select-basics-start`, *Border Select* has been activated and is indicated by showing a
dotted cross-hair cursor. In Fig. :ref:`fig-mesh-select-basics-selecting`
the *selection region* is being chosen by drawing a rectangle with the :kbd:`LMB`.
The selection area is only covering the selection handles of three faces. Finally,
by releasing :kbd:`LMB` the selection is complete; see Fig. :ref:`fig-mesh-select-basics-complete`.

.. note::

   Border select adds to the previous selection,
   so in order to select only the contents of the rectangle, deselect all with :kbd:`A` first.
   In addition, you can use :kbd:`MMB` while you draw the border to deselect all objects within the rectangle.


Circular region
---------------

This selection tool is only available in *Edit Mode* and can be activated with :kbd:`C`.
Once in this mode the cursor changes to a dashed cross-hair with a 2D circle surrounding it.
The tool will operate on whatever the current select mode is.
Clicking or dragging with the :kbd:`LMB`,
causing elements to be inside the circle will cause those elements to be selected.

You can enlarge or shrink the circle region using :kbd:`NumpadPlus` and :kbd:`NumpadMinus`,
or the :kbd:`Wheel`.

.. _fig-mesh-select-basic-circle:

.. list-table:: Circle Region Select.

   * - .. figure:: /images/modeling-meshes-selection-circularselect1.png
          :width: 320px

          Before.

     - .. figure:: /images/modeling-meshes-selection-circularselect2.png
          :width: 320px

          After.


Fig. :ref:`fig-mesh-select-basic-circle` is an example of selecting edges while in *Edge Select Mode*.
As soon as an edge intersects the circle the edge becomes selected.
The tool is interactive such that edges are selected while the circle region is being dragged with the :kbd:`LMB`.

If you want to deselect elements, hold :kbd:`MMB` and begin clicking or dragging again.

For *Faces* select mode, the circle must intersect the face indicators usually represented by small pixel squares;
one at the center of each face.

To exit from this tool, click :kbd:`RMB`, or press :kbd:`Esc`.


Lasso region
------------

*Lasso* select is similar to *Border* select in that you select objects based on a region,
except *Lasso* is a hand-drawn region that generally forms a circular/round-shaped form; kind of like a lasso.

*Lasso* is available in either *Edit Mode* or *Object Mode*.
To activate the tool use the :kbd:`Ctrl-LMB` while dragging.
The one difference between *Lasso* and *Border* select is that in *Object Mode*,
*Lasso* only selects objects where the lasso region intersects the objects' center.

To deselect, use :kbd:`Ctrl-Shift-LMB` while dragging.

.. _fig-mesh-select-basic-lasso:

.. list-table:: Lasso selection.

   * - .. figure:: /images/modeling-meshes-selection-lassoselect1.png
          :width: 200px

          Start.

     - .. figure:: /images/modeling-meshes-selection-lassoselect2.png
          :width: 200px

          Selecting.

     - .. figure:: /images/modeling-meshes-selection-lassoselect3.png
          :width: 200px

          Complete.


Fig. :ref:`fig-mesh-select-basic-lasso` is an example of using the *Lasso select tool* in *Vertex Select Mode*.


Additional Selection Tools
==========================

The select menu in edit mode contains additional tool for selecting components:

(De)select All :kbd:`A`
   Select all or none of the mesh components.
Invert Selection :kbd:`Ctrl-I`
   Selects all components that are not selected, and deselect currently selected components.
More :kbd:`Ctrl-NumpadPlus`
   Propagates selection by adding components that are adjacent to selected elements.
Less :kbd:`Ctrl-NumpadMinus`
   Deselects components that form the bounds of the current selection
