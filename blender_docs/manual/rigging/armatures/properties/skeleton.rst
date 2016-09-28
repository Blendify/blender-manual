
********
Skeleton
********

.. figure:: /images/rigging_armatures_properties_skeleton-panel.png

   The Skeleton panel.

In this panel you can arrange sets of bones into different layers for easier manipulation.


.. _armature-layers:

Armature Layers
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object, Edit and Pose Mode
   | Panel:    :menuselection:`Object data --> Skeleton`


Each armature has 32 "Armature layers" which allow you to organize your armature by
"regrouping" sets of bones into layers; this works similar to scene layers
(those containing your objects). You can then "move" a bone to a given layer,
hide or show one or several layers, etc.


Showing/hiding bone layers
--------------------------

Only bones in active layers will be visible/editable, but they will always be effective
(i.e move objects or deform geometry), whether in an active layer or not. To
(de)activate a layer, you have several options, depending in which mode you are in:

- In all modes, use the row of small buttons at the top of the *Display Options* group, *Armature* panel.
  If you want to enable/disable several layers at once, as usual, hold :kbd:`Shift` while clicking...
- In *Edit Mode* and *Pose Mode*, you can also do this from the *3D View*,
  either by using the menu :menuselection:`Armature --> Switch Armature Layers` or
  :menuselection:`Pose --> Switch Armature Layers`, or the :kbd:`Shift-M` shortcut,
  to display a small pop-up menu containing the same buttons as described above
  (here again, you can use :kbd:`Shift-LMB` clicks to (de)select several layers at once).


Protected Layers
----------------

You can lock a given bone layer for all :ref:`proxies <object-proxy>`
of your armature, i.e. all bones in this layer will not be editable.
To do so, in the *Skeleton* panel, :kbd:`Ctrl-LMB` click on the relevant button, the layer lock will be enabled.

Protected layers in proxy are restored to proxy settings on file reload and undo.
