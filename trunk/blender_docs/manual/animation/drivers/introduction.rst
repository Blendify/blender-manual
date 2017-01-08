
************
Introduction
************

.. figure:: /images/animation_driver_fcurve.png
   :align: right

   Graph Editor: Driver example.


Drivers can use properties, numbers, transformations, and scripts,
to control the values of properties.

Using a F-Curve, the driver reads the value of the Driver Value and sets the value of the
selected property it was added to.

So from this example, if the Driver Value is 2.0 the property will be 0.5.

The Driver Value is determined by Driver Variables or a Scripted Expression.

Most the settings for the drivers :doc:`F-Curves </editors/graph_editor/fcurves/introduction>` are found in
the :doc:`Graph Editor </editors/graph_editor/introduction>`.


Adding & Removing
=================

There are some different ways to add drivers in Blender.
After adding drivers they are usually modified in the *Graph Editor* with the mode set to *Drivers*.


Add Driver
----------

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Context menu --> Add Driver`
   | Hotkey:   :kbd:`Ctrl-D`

The common way to add a driver to a property is to :kbd:`RMB` click a property,
then add a driver via the context menu.
Drivers can also be added by pressing :kbd:`Ctrl-D` with the mouse over the property set.

All from Target (properties icon)
   This will add drivers to the set of properties related to the selected one.
   It creates a default curve with keyframes at (0, 0) and (1, 1),
   For example, it will add drivers to X, Y, and Z for Rotation.
Single from Target
   This will add a single driver to the selected property.
Match Indices (palette icon)
   ToDo.
Manually Create Later/(Single) (hand icon)
   ToDo.


Copy Paste
----------

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Context menu --> Copy/Paste Driver`

Drivers can be copied and pasted in the UI, via the context menu.
When adding drivers with the same settings, this can save time modifying settings.


Expression
----------

This is a quick way to add drivers with a scripted expression.
First click the property you want to add a driver to, then add a hash ``#`` and a scripted expression.

Some examples:

- ``#frame``
- ``#frame / 20.0``
- ``#sin(frame)``
- ``#cos(frame)``


Removing Drivers
----------------

ToDo.
