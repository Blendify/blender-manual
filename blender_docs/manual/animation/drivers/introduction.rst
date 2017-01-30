
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
The selected properties will be used as a destination (output) for the driver.

All from Target (properties icon)
   This will add drivers to the set of properties used as a destination.
   It creates a default curve with keyframes at (0, 0) and (1, 1),
   For example, it will add drivers to X, Y, and Z for Location.
Single from Target
   This will add a single driver to the selected property used as a destination.
Match Indices (palette icon)
   Use the corresponding index to drive the corresponding property on a similar sized vector/array property.
   This is useful for driving ``ob1.location`` with ``ob2.location``, or ``RGB color`` with ``XYZ location``
Manually Create Later/(Single) (hand icon)
   It just adds some/a driver(s), each with a single variable (but not filled in). No eyedropper will appear.

The source/target (input) property can then be selected with an :ref:`ui-eye-dropper` (e.g. "Scale Y").

.. note::

   Due to the way that Blender's UI Context works, you'll need *two* Properties editor instances open 
   (and to have pinned one of the two to show the properties for the unselected object).
   This necessary as the UI cannot be manipulated while using eyedroppers to pick data.
   Therefore, you need to be able to see both the source and the destination properties when using the eyedropper.


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

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Properties region --> Driver --> Drivers --> Remove Driver`
   | Menu:     :menuselection:`Context menu --> Delete (Single) Driver(s)`

ToDo.


Graph View
===========

The main area of the :doc:`Graph editor </editors/graph_editor/index>` in Driver Mode
is used to create corrective drivers. These are drivers additionally controlled by
a :doc:`F-Curve </editors/graph_editor/fcurves/introduction>`.

