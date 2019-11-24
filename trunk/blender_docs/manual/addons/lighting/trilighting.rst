
************
Tri-Lighting
************

Introduction
============

This addon creates a simple 3 point studio style lighting set up. 


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Add Curve then Assign Shape Keys to enable the script.


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
#. Adjust settings in the Tri-Lighting Creator operator panel.
#. The created lights are pointed at and locked to the active object using a :menuselection:`Properties editor --> Object Constraint --> Track To`
#. In the :menuselection:`Properties editor --> Object Data` (The *Light* icon) you can furthur edit the properties of your lights.

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
