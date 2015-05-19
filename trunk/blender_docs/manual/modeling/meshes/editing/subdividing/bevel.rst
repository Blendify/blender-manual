
..    TODO/Review: {{review|}} .


*****
Bevel
*****

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Edges --> Bevel` or :menuselection:`[Ctrl][E] --> Bevel`
   | Hotkey:   :kbd:`Ctrl-B` or :menuselection:`[W] --> Bevel`
   | Menu (vertex-only):    :menuselection:`Mesh --> Vertices --> Bevel` or :menuselection:`[Ctrl][V] --> Bevel`
   | Hotkey (vertex-only):  :kbd:`Shift-Ctrl-B`

.. figure:: /images/Manual-PartII-Bevel-Cubes.jpg

   With bevel and without bevel.


The bevel tool allows you to create chamfered or rounded corners to geometry.
A bevel is an effect that smooths out edges and corners.
True world edges are very seldom exactly sharp.
Not even a knife blade edge can be considered perfectly sharp.
Most edges are intentionally beveled for mechanical and practical reasons.

Bevels are also useful for giving realism to non-organic models. In the real world,
the blunt edges on objects catch the light and change the shading around the edges.
This gives a solid, realistic look,
as opposed to un-beveled objects which can look too perfect.


Bevel Modifier
==============

The :doc:`Bevel Modifier </modifiers/generate/bevel>` is a non destructive alternative to the bevel tool.
It gives you the same options, with additional goodies, like the bevel width controlled by the vertices weight,
and all the modifiers general enhancements (non-destructive operations, ...).


Usage
=====

The *Bevel* tool works only on selected edges.
It will recognize any edges included in a vertex or face selection as well,
and perform the bevel the same as if those edges were explicitly selected.
In "vertex only" mode, the *Bevel* tool works on selected vertices instead of edges.
The *Bevel* tool smooths the edges and/or "corners" (vertices)
by replacing them with faces making smooth profiles with a specified number of *segments*
(see the options below for details about the bevel algorithm).

Use :kbd:`Ctrl-B` or a method listed above to run the tool.
Move the mouse to interactively specify the bevel offset,
and scroll the :kbd:`Wheel` to increase or decrease the number of segments. (see below)

.. figure:: /images/Bevel1.jpg
   :width: 300px

   Selected edge before beveling


.. figure:: /images/Bevel2.jpg
   :width: 300px

   Result of bevel (one segment)


.. figure:: /images/Bevel6.jpg
   :width: 300px

   Result of bevel (vertex only)

.. note::

   Normal (edge) beveling only works on edges that have exactly two faces
   attached to them.
   Vertex bevel has no such restriction.


Options
=======

.. figure:: /images/BevelOptions.jpg

Amount
   You can change the bevel amount by moving the mouse towards and away from the object,
   a bit like with transform tools.
   The exact meaning of the value depends on the *Amount Type* option (see below).
   As usual, the scaling can be controlled to a finer degree by holding :kbd:`Shift` to scale in 0.001 steps.
   :kbd:`LMB` finalizes the operation, :kbd:`RMB` or :kbd:`Esc` aborts the action.

Amount Type
   Selects how the *Amount* value controls the size of the bevel. According to the selection, the amount is:
   - **Offset** - the distance of a new edge from the original
   - **Width** - the width of the bevel face
   - **Depth** - the perpendicular distance from the original edge to the bevel face
   - **Percent** - the percentage of the length of adjacent edges that the new edges slide

Segments
   The number of segments in the bevel can be defined by scrolling the
   mouse :kbd:`Wheel` to increase or decrease this value.
   The greater the number of segments, the smoother the bevel.

   Alternatively, you can manually enter a segment number value while using the tool,
   or in the Mesh Tool options panel after using the tool.

.. figure:: /images/Bevel3.jpg
   :width: 300px

   Bevel with 4 segments


Profile
   This is a number between 0 and 1 that controls the shape of the profile (side view of a beveled edge).
   The default value, 0.5, gives a circular arc (if the faces meet at right angles).
   Values less than that give a flatter profile, with 0.25 being exactly flat,
   and values less than that giving a concave bevel.
   Values more than 0.5 give a more "bulged-out" profile.

Vertex Only
   When selected, the tool is in "vertex only" mode, and only vertices will be beveled.

Clamp Overlap
   When selected, the bevel amount is not allowed to go larger than an amount that causes
   overlapping collisions with other geometry.

Material
    The *Material* number specifies which material should be assigned to the new faces created by the *Bevel* tool.
    With the default, -1, the material is inherited from the closest existing face ("closest" can be a bit ambiguous).
    Otherwise, the number is the slot index of the material to use for all newly created faces.


Examples
========

.. figure:: /images/Bevel4.jpg
   :width: 300px

   Result of beveling multiple edges


.. figure:: /images/Bevel5.jpg
   :width: 300px

   Another example of beveling multiple edges


.. figure:: /images/Bevel7.jpg
   :width: 300px

   An example using Profile=0.150
