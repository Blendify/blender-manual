.. |pivot-icon| image:: /images/editors_3dview_header-pivot-point.jpg

**************
Active Element
**************

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode and Edit Mode
   | Menu:     Select from the |pivot-icon| icon in the 3D View header.
   | Hotkey:   :kbd:`Alt-.`


The *active* element can be an Object, vertex, edge or a face. The active element is the
last one to be selected and will be shown in a lighter orange color when in *Object Mode*
and white when in *Edit Mode*. With *Active element as Pivot* set to active,
all transformations will occur relative to the active element.

.. figure:: /images/editors_3dview_transform_control-pivot_point-active_element-selected-active-element.png

   Display of active elements in Object Mode is shown on the left of the
   image where the active element (cube) is a lighter orange.
   Active elements for vertices, edges and faces in Edit Mode are displayed in white and are shown on the right.


In Object Mode
==============

When in *Object Mode*,
rotation and scaling happen around the active Object's center.
This is shown by the figure to the below where the active Object (the cube)
remains in the same location (note its position relative to the 3D cursor)
while the other Objects rotate and scale in relation to the active element.

.. figure:: /images/editors_3dview_transform_control-pivot_point-active_element-active-object-rotation.png

   Rotation and scaling with the cube as the active element.


In Edit Mode
============

Using the active element as a pivot point in *Edit Mode* may seem complex but all
the possible transformations follow a few rules:


- The pivot point is always at the median of the active element(s).
- The transformations occur by transformation of the *vertices* of the selected element(s).
  If an unselected element shares one or more vertices with a selected element
  then the unselected one will get some degree of transformation also.

Let us examine the following examples: in each case we will see that the two rules apply.


Single selection
----------------

When one single element is selected it becomes automatically active. In the image below,
you can see that when it is transformed its vertices move, with the consequence that any
adjacent element which shares one or more vertices with the active element is also
transformed.

.. figure:: /images/editors_3dview_transform_control-pivot_point-active_single-element-selection.png

   Edit Mode and only one element selected.


Let us review each case:

- *Faces* have their pivot point where their selection dot appears, which is where the median of their vertices is.
- *Edges* have their pivot point on their middle since this is always where the median of an edge is.
- A single *Vertex* has no dimensions at all so it cannot show any transformation
  (except translation, which is not affected by the pivot point).


Multiple selection
------------------

When multiple elements are selected they all transform.
The pivot points stay in the same place as what we have seen above,
with only one exception for Fgons. In the image below,
the selected elements have been rotated.

.. figure:: /images/editors_3dview_transform_control-pivot_point-active_multiple-element-selection.png

   Edit Mode and multiple selections.


- For *Faces* the transformation occurs around the selection dot of the active face.
- *Edges* also keep the same behavior with their pivot point at their median.
- *Fgons* behave exactly like faces.
- There is a case for *Vertices* this time: the active Vertex is where the pivot point resides.
  All other vertices are transformed relative to it.
