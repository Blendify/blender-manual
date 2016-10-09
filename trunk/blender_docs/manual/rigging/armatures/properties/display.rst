
*************
Display Panel
*************

.. admonition:: Reference
   :class: refbox

   | Mode:     Object, Edit and Pose Mode
   | Panel:    :menuselection:`Object Data --> Display`


.. figure:: /images/rigging_armatures_properties_display-panel.png

   The Display panel.

This controls the way the bones appear in 3D View; you have four different visualizations you can select.


Bone Types
==========

We have four basic bone visualization: Octahedral, Stick, B-Bone, Envelope and Wire:

.. list-table::

   * - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-1.png
          :width: 320px

          Octahedral bone display.

     - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-2.png
          :width: 320px

          Stick bone display.

   * - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-3.png
          :width: 320px

          B-Bone bone display.

     - .. figure:: /images/rigging_armatures_bones_introduction_bones-visualization-4.png
          :width: 320px

          Envelope bone display.



Octahedral bone
   This is the default visualization, well suited for most of editing tasks. It materializes:

   - The bone root ("big" end) and tip ("small" end).
   - The bone "size" (its thickness is proportional to its length).
   - The bone roll (as it has a square section).

   .. figure:: /images/rigging_armatures_visualization_type-octahedral.png
      :width: 300px

      Note the 40° rolled Bone.001 bone.

Stick bone
   This is the simplest and most non-intrusive visualization.
   It just materializes bones by sticks of constant (and small) thickness,
   so it gives you no information about root and tip, nor bone size or roll angle.

   .. figure:: /images/rigging_armatures_visualization_type-stick.png
      :width: 300px

      Note that Bone.001 roll angle is not visible (except by its XZ axes).

B-Bone bone
   This visualization shows the curves of "smooth" multi-segmented bones;
   see the :ref:`bone page <armature-bone-rigid>` for details.

   .. list-table::

      * - .. figure:: /images/rigging_armatures_bones_introduction_b-bones-1.png
             :width: 320px

             An armature of B-Bones, in Edit Mode.

        - .. figure:: /images/rigging_armatures_bones_introduction_b-bones-3.png
             :width: 320px

             The same armature in Object Mode.

Envelope bone
   This visualization materializes the bone deformation influence.
   More on this in the :ref:`bone page <armature-bone-influence>`.

   .. figure:: /images/rigging_armatures_bones_introduction_envelope-pose-mode.png
      :width: 300px

Wire bone
   This simplest visualization shows the curves of "smooth" multi-segmented bones.

   .. list-table::

      * - .. figure:: /images/rigging_armatures_visualization_type-wire-pose-mode.png
             :width: 320px

             An armature of Wire, in Pose Mode.

        - .. figure:: /images/rigging_armatures_visualization_type-wire-edit-mode.png
             :width: 320px

             The same armature in Edit Mode.


Draw Options
============

Names
   When enabled, the name of each bone is drawn.
Colors
   This is only relevant for *Pose Mode*,
   and is described in detail :doc:`there </rigging/armatures/properties/bone_groups>`.
Axes
   When enabled, the (local) axes of each bone are drawn (only relevant for *Edit Mode* and *Pose Mode*).
X-Ray
   When enabled, the bones of the armature will always be drawn on top of the solid objects
   (meshes, surfaces, ...) - i.e. they will always be visible and selectable
   (this is the same option as the one found in the *Display* panel of the *Object data* tab.
   Very useful when not in *Wireframe* mode.
Shapes
   When enabled, the default standard bone shape is replaced,
   in *Object Mode* and *Pose Mode*,
   by the shape of a chosen object (see :doc:`Shaped Bones </rigging/armatures/bones/properties/display>` for details).
Delay Refresh
   When enabled, the bone does not deform its children when manipulating the bone in pose mode.
