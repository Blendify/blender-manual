.. _bpy.types.ShaderNodeTexIES:

****************
IES Texture Node
****************

The *IES Texture* is used to match real world lights based on IES files.
IES files store the directional intensity distribution of light sources.

Inputs
======

Vector
   Texture coordinate for lookup in the light distribution.
   Defaults to the normal.
Strength
   Light strength multiplier.

Properties
==========

Mode
   Internal
      Use IES profile from a file embedded in a text block in the .blend file, for easy distribution.
   External
      Load IES profile from a file on disk.

Outputs
=======

Fac
   Light intensity, typically pluggined into the Strength input of an Emission node.

Examples
========

.. figure:: /images/render_cycles_nodes_types_ies_texture.jpg

   Lights with different IES profiles.
