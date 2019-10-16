
*******
Ivy Gen
*******


Introduction
============

Based on the wonderful code by Thomas Luft and
his original `IvyGen program <http://graphics.uni-konstanz.de/~luft/ivy_generator/>`__.

Original Blender port by testscreenings, further advances by PKHG and TrumanBlending.

.. figure:: /images/addons_curve_ivygen.jpg
   :align: center
   :figwidth: 640px


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Add Curve then Ivy Gen to enable the script.


Interface
=========

.. figure:: /images/addons_add_curve_ivygen_ui.jpg
   :align: right
   :figwidth: 220px


Located in the :menuselection:`3D View --> Sidebar --> Create tab`

Located in the :menuselection:`3D View --> Operator`

The Update Ivy operator is separate from the main menu and appears in the 3d view.
You can adjust settings in the panel and press the :menuselection:`Update` button to update parameters.


Instructions
============

#. Select the object you want to grow ivy on.
#. Enter Edit Mode and select a vertex that you want the ivy to spawn from.
#. Snap the cursor to the selected vertex.
#. Enter Object Mode and with the object selected:
   Since version 1.1.4 :menuselection:`Sidebar --> Create --> Ivy Generator panel` adjust settings and choose *Add New Ivy*.

The *Add Default Ivy* operator will use the default parameters during creation.
This will generate your initial Ivy Curve and Leaves.
From here you can access the *Ivy* menu in the Sidebar.
I suggest to make small changes and then press *Update Ivy* in the 3d View operator.


.. admonition:: Reference
   :class: refbox

   :Category:  Add Curve
   :Description: Todo.
   :Location: :menuselection:`Sidebar --> Create tab`
   :File: add_curve_ivygen.py
   :Author: testscreenings, PKHG, TrumanBlending
   :Maintainer: Vladimir Spivak (cwolf3d)
   :License: GPL
   :Support Level: Community
   :Note: This add-on is bundled with Blender.
