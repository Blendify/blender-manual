
..    TODO/Review: {{review|im=needs images}} .


***************
Group Instances
***************

Groups are covered fully here: :doc:`Grouping and Parenting </modeling/objects/groups_and_parenting>`.

If a group already exists in the scene, an instance of one of those groups can be created from
the *Add* menu under :menuselection:`add --> group instance --> group`.

These group proxies are controlled/owned by an additional empty object,
and hence are not editable (i.e. have no *Edit* mode) - in fact,
they behave a bit as if all object copies of the group were children of the empty).
So you have all the editing options of objects (you can move/scale/rotate them, etc.).


.. note:: Groups and Metas

   There seems to be a bug with *Meta* objects in group proxies:
   their meshes are invisible; only the circles are drawn...


Visualization
=============

Group "proxies" are drawn in black (unless *Solid* or *Shaded* draw mode,
of course). The selection of "real" members of the group is reflected in their "proxies".
When the proxy itself is selected, the empty turns pink, and the other parts, purple.

The only options of these "group proxies" are the same as the ones for
:ref:`empties display types<object-empty-display>`.
