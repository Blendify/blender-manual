
*******
Options
*******

.. figure:: /images/sculpt-paint_painting_weight-paint_options_appearance-panel.png
   :align: right

   Brush appearance.


Overlay
=======

Allows you to customize the display of curve and texture that applied to the brush.


Appearance
==========

Show Brush
   Makes the brush visible as a circle (on by default).
Custom Icon
   Allows definition of a custom brush icon.


Options
=======

.. figure:: /images/sculpt-paint_painting_weight-paint_options_options-panel.png
   :align: right

   Paint options.

The Weight Paint Options modify the overall brush behavior:

Normals
   The vertex normal (helps) determine the extent of painting. This causes an effect as if painting with light.
Spray
   Constantly draw (opposed to drawing one stroke per mouse click).
Restrict
   This option limits the influence of painting to vertices belonging
   (even with weight 0) to the selected vertex group.
X Mirror
   Use the X Mirror option for mirrored painting on groups that have symmetrical names,
   like with extension ".R"/ ".L" or "_R" / "_L".
   If a group has no mirrored counterpart, it will paint symmetrically on the active group itself.
   You can read more about the naming convention in
   :ref:`Editing Armatures: Naming conventions <armature-editing-naming-conventions>`.
   The convention for armatures/bones apply here as well.
Topology Mirror
   Use topology-based mirroring, for when both sides of a mesh have matching mirrored topology.
   See :ref:`here <modeling_meshes_editing_topology-mirror>` for more information.
Show Zero Weights
   To display unreferenced and zero weighted areas in black (by default).
   This helps to identify areas with very low weights that have been painted onto.

   None
      Deactivated.
   Active
      Only the active group.
   All
      All groups.
Unified Settings
   The *Size*, *Strength* and *Weight* of the brush can be set to
   be shared across different brushes, as opposed to per brush.
