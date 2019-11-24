
************
Tri-Lighting
************

Introduction
============

This add-on creates a simple three point studio style lighting set up.


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Lighting then Tri-Lighting to enable the script.


Interface
=========

.. figure:: /images/addons_lighting_trilights_ui.jpg
   :align: right
   :width: 270px

Located in the :menuselection:`3D View --> Add --> Light menu`.


Usage
=====

#. Select the object to point the lights at.
#. :menuselection:`3D View --> Add --> Light menu --> 3 Point Lights`
#. Adjust settings in the Tri-Lighting Creator :ref:`ui-undo-redo-adjust-last-operation` panel.
#. The created lights are pointed at and locked to the active object
   using a :menuselection:`Properties editor --> Object Constraint --> Track To`.
#. In the :menuselection:`Properties editor --> Light tab` you can further edit the properties of your lights.

.. admonition:: Reference
   :class: refbox

   :Category:  Lighting
   :Description: Add three point lighting to the selected or active object.
   :Location: :menuselection:`3D View --> Add --> Lights`
   :File: lighting_tri_lights.py
   :Author: Daniel Schalla
   :Maintainer: meta-androcto
   :License: GPL
   :Support Level: Community
   :Note: This add-on is bundled with Blender.
