.. index::
   pair: Modifier; Corrective Smooth

*****************
Corrective Smooth
*****************

This modifier is used to reduce highly distorted areas of a mesh by smoothing the deformations.

This is typically useful *after* an armature modifier,
where distortion around joints may be hard to avoid, even with careful weight painting.

To use this modifier effectively, it's useful to understand the basics of how it works.

Rest State
   Used as a reference to detect highly distorted areas.

   *The original vertex locations are used by default.*
Smoothing
   Many options for this modifier relate to smoothing which is used internally
   to correct the distorted regions.


Options
=======

.. figure:: /images/modifier-corrective_smooth_ui.png

   Corrective smooth modifier


The modifier also uses a *Rest* state, to use as a reference
Internally this modifier uses smoothing, so some of the options adjust the kind of smoothing.

..
   Shares description with ``smooth.rst``

Factor
   The factor to control the smoothing amount.
   Higher values will increase the effect.
   Values outside this range (above ``1.0`` or below ``0.0``) distort the mesh.
Repeat
   The number of smoothing iterations.

   *Higher values generally improve the quality of the smoothing but slow down the operation also.*
Smooth Type
   Select the smoothing method used.

   Simple
      This simply relaxes vertices to their connected edges.
   Length Weight
      Uses a method of relaxing that weights by the distance of surrounding vertices.

      *Can give higher quality smoothing in some cases,
      better preserving the shape of the original form.*
Vertex Group
   Use to manually select regions to smooth.
Only Smooth
   This option is included to preview the smoothing used, before correction is applied.
Pin Boundaries
   Prevent boundary vertices from smoothing.
Rest Source
   Select the source for reference vertex positions that defines the undeformed state.

   Original Coords
      Use the original input vertex positions.

      *This relies on the original mesh having the same number of vertices as the original mesh*
   Bind Coords
      Optionally you may bind the modifier to a specific state.

      *This is required if there are constructive modifiers such as subsurf or mirror
      being applied before this modifier in the stack.*


Example
=======

Here is an example of a character using a simple rig using only bone envelopes *(no weight painting)*.

.. list-table::
   :header-rows: 1

   * - Armature Only
     - Armature & Corrective Smooth
   * - .. figure:: /images/modifier-corrective_smooth_example_pose_before.png
          :scale: 66%
     - .. figure:: /images/modifier-corrective_smooth_example_pose_after.png
          :scale: 66%
