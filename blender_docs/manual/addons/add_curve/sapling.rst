
****************
Sapling Tree Gen
****************

.. admonition:: Reference
   :class: refbox

   :Category:  Add Curve
   :Description: Adds a parametric tree.
   :Location: :menuselection:`3D View --> Add --> Curve`
   :File: add_curve_sapling folder
   :Author: Andrew Hale (TrumanBlending), Aaron butcher, CansecoGPC
   :Maintainer: To Do
   :License: GPL


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Add Curve then Sapling Tree Gen to enable the script.
- This add-on is bundled with Blender.


Introduction
============

This addon creates Trees. There are many preset tree types to choose fron or create your own.

Instructions
============

   Bevel
     This determines whether the curve should be shown with its full thickness or only the underlying curve. Disabled by default to permit rapid feedback on parameter changes.
   Bevel Resolution
     Determines how smooth the outline of the bevelled curve is. The lower this value, the smaller the number of vertices but the resulting geometry will be coarser.
   Curve Resolution
     Changes the smoothness of the curve along its length. This is only relevant if Handle Type is set to Auto.
   Handle Type 
     Determines the method of interpolation of the curve between bezier points. Vector type results in fewer vertices but straight segments. Auto type smooths the segments but requires more expensive geometry.
   Shape
     Governs the distribution of branches in order to effect the overall shape of the tree.
   Random Seed
     Sets the basis on which all random values for the tree are generated. This can be changed to allow different trees with the same basic parameters to be generated.
   Scale
     The underlying size of the tree in Blender units.
   Scale Variation
     The maximum amount that the scale of the tree can vary (up or down) from the value of Scale.
   Radius Scale
     The scale of the radius at the base of the tree.
   Radius Variation
     The maximum amount that the radius scale of the tree can vary (up or down) from the value of Radius Scale. 
   Preset Name
     The name of the preset to be exported. This will export all current properties of the tree to the Sapling preset folder as a .py file. 
   Export Preset
     Export all current properties.
   Load Preset
     Any presets found in the Sapling preset directory may be imported when selected here.
   Limit Import
     This can be used to restrict what geometry is created when a preset is imported. If selected, only two levels of branches and no leaves will be generated. 
   Branch splitting
     There are many vairiables to explore with branch splitting.