
***********
Keying Sets
***********

.. figure:: /images/kia_cube02.png
   :align: right

   Timeline Keying Sets.


Keying Sets are a collection of properties.
They are used to keyframe multiple properties at the same time,
usually by pressing :kbd:`I` in the 3D View.

There are some built in Keying Sets,
and also, custom Keying Sets called *Absolute Keying Sets*.

To select and use a Keying Set, set the *Active Keying Set* in the
:ref:`Timeline Header <animation-editors-timeline-autokeyframe>`,
or the Keying Set panel, or press :kbd:`Ctrl-Alt-Shift-I` in the 3D View.


Keying Set Panel
================

This panel is used to add, select, manage *Absolute Keying Sets*.

.. figure:: /images/keying_set_panel.png

   :menuselection:`Properties --> Scene --> Keying Set Panel`


Active Keying Set
   The :ref:`List View <ui-list-view>` of Keying Sets in the active Scene.

   Add ``+``
      Adds a empty Keying Set.


Properties
----------

Description
   A short description of the keying set.
Export to File
   Export Keying Set to a Python script ``File.py``.
   To re-add the keying set from the ``File.py``, open then run the ``File.py`` from the Text Editor.

Keyframing Settings
   These options control all properties in the Keying Set.
   Note, the same settings in *User Preferences* override these settings if enabled.

   Only Needed
      Only insert keyframes where they are needed in the relevant F-Curves.
   Visual Keying
      Insert keyframes based on the visual transformation.
   XYZ to RGB
      For new F-Curves, set the colors to RGB for the property set, Location XYZ for example.


Active Keying Set Panel
=======================

This panel is used to add properties to the active Keying Set.

.. figure:: /images/keying_set_active_panel.png

   :menuselection:`Properties --> Scene --> Active Keying Set Panel`

.. figure:: /images/keying_set_group.png

   :menuselection:`Properties --> Graph Editor --> Channels, Named Group`


Active Keying Set Paths
   A collection of paths in a :ref:`List View <ui-list-view>` each with a *Data Path* to a property
   to add to the active Keying Set.

   Add ``+``
      Adds a empty path.


Properties
----------

Target
   ID-Block
      Set the ID-Type and the *Object IDs* Data Path for the property.
   Data Path
      Set the rest of the Data Path for the property.
   Array Target
      Use *All Items* from the Data Path or select the array index for a specific property.

F-Curve Grouping
   This controls what group to add the channels to.

   Keying Set Name, None, Named Group

Keyframing Settings
   These options control individual properties in the Keying Set.

   Only Needed
      Only insert keyframes where they are needed in the relevant F-Curves.
   Visual Keying
      Insert keyframes based on the visual transformation.
   XYZ to RGB
      For new F-Curves, set the colors to RGB for the property set, Location XYZ for example.


Adding Properties
=================

Some ways to add properties to keying sets.

:kbd:`RMB` the property in the *User Interface*, then select *Add Single to Keying Set* or *Add All to Keying Set*.
This will add the properties to the active keying set, or to a new keying set if none exist.

Hover the mouse over the properties, then press :kbd:`K`, to add *Add All to Keying Set*.
