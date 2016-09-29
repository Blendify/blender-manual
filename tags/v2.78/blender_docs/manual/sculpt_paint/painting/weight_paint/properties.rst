
**********
Properties
**********

Tools
=====

Brush
-----

.. figure:: /images/painting_weight_brush.png
   :align: right

   Brush Panel.


Painting needs paint brushes and Blender provides a Brush Panel within the Tool Shelf when it
operates in *Weight Paint Mode*. You find predefined Brush Presets when you click on
the large Brush Icon at the top of the Brush Panel.
And you can make your own presets as needed.
See below for the available brush presets and to create custom presets.

The most important and frequently modified properties are:

Weight
   The weight (color) to be used by the brush.
   However, the weight value is applied to the Vertex Group
   in different ways depending on the selected Brush Blending mode (see below).
Strength
   This is the amount of paint to be applied per brush stroke.
   What that means exactly also depends on the Brush Blending mode.
Radius
   The radius defines the area of influence of the brush.

   .. note::

      You can also change the Brush radius with a keyboard shortcut while painting.
      Just press :kbd:`F` at any time, then drag the mouse to increase/reduce the brush radius.
      Finally click :kbd:`LMB` to use the new setting.
      Or press :kbd:`Esc` at any time to return to the current settings.

Blend mode
   The brush Blending mode defines in which way the weight value is applied to the Vertex Group while painting.

   Mix
      In this Blend mode the Weight value defines the *target weight* that will eventually
      be reached when you paint long enough on the same location of the mesh.
      And the strength determines how many strokes you need to arrive at the target weight.
      Note that for strength = 1.0 the target weight is painted immediately,
      and for Weight = 0.0 the brush just does nothing.
   Add
      In this blend mode the specified weight value is *added* to the vertex weights.
      The strength determines which fraction of the weight gets added per stroke.
      However, the brush will not paint weight values above 1.0.
   Subtract
      In this blend mode the specified weight is *subtracted* from the vertex weights.
      The strength determines which fraction of the weight gets removed per stroke.
      However, the brush will not paint weight values below 0.0.
   Lighten
      In this blend mode the specified weight value is interpreted
      as the target weight very similar to the Mix Blend mode.
      But only weights below the target weight are affected.
      Weights above the target weight remain unchanged.
   Darken
      This Blend mode is very similar to the Lighten Blend mode.
      But only weights above the target weight are affected.
      Weights below the target weight remain unchanged.
   Multiply
      Multiplies the vertex weights with the specified weight value.
      This is somewhat like subtract, but the amount of removed weight is now dependent on the Weight value itself.
   Blur
      Smooths out the weighting of adjacent vertices.
      In this mode the Weight Value is ignored.
      The strength defines how much the smoothing is applied.

      Accumulate
         This option keeps applying smoothing on top of the previous result.

         .. hint::

            - Disable when painting individual vertices on lower poly modules.
            - Enable for more dense geometry, or when you want to increase the blur effect.

Auto Normalize
   Ensures that all deforming vertex groups add up to one while painting. When this option is turned off,
   then all weights of a vertex can have any value between 0.0 and 1.0. However, when Vertex Groups are used as
   Deform Groups for character animation then Blender always interprets the weight values relative to each other.
   That is, Blender always does a normalization over all deform bones. Hence in practice it is not necessary to
   maintain a strict normalization and further normalizing weights should not affect animation at all.

   This option works most intuitively when used to maintain normalization while painting on top of weights
   that are already normalized with some other tool.
Multi-Paint
   Paint on all selected Vertex Groups simultaneously, in a way that preserves their relative influence.
   This can be useful when tweaking weights in an area that is affected by more than three bones at once,
   e.g. certain areas on a character's face.

   This option is only useful in the Armature tab, where you can select multiple Vertex Groups
   by selecting multiple Pose bones. Once at least two Vertex Groups are selected, viewport colors and
   paint logic switch to Multi-Paint Mode, using the sum of the selected groups' weights if Auto Normalize
   is enabled, and the average otherwise. Any paint operations aimed at this collective weight are applied
   to individual Vertex Group weights in such way that their ratio stays the same.

   Since the ratio is undefined if all weights are zero, Multi-Paint cannot operate on vertices that do not
   have any weight assigned to the relevant Vertex Groups. For this reason it also does not allow reducing
   the weight all the way to zero. When used with X-Mirror, it only guarantees completely symmetrical
   result if weights are initially symmetrical.

   .. tip::

      While Multi-Paint cannot directly paint on zero-weight vertices,
      it is possible to use the *Smooth Weight* tool to copy a reasonable non-zero weight
      distribution from adjacent vertices without leaving Multi-Paint Mode or changing bone selection.

      To do that, enable vertex selection, select target vertices,
      and apply one iteration of the tool using vertex groups from *Selected Pose Bones* with low Factor.
      After that simply paint on top to set the desired collective weight.


Stroke
------

.. figure:: /images/painting_weight_stroke.png
   :align: right

   Stroke Panel.


Stroke Method
   Airbrush
      Keep applying paint effect while holding mouse down (spray).
   Space
      Limit brush application to the distance specified by spacing (see below).
   Dots
      Apply paint on each mouse move step.
Rate (only for Airbrush)
   Interval between paints for airbrush.
Spacing (only for Space)
   Limit brush application to the distance specified by spacing.
Jitter
   Jitter the position of the brush while painting.
Smooth Stroke
   Brush lags behind mouse and follows a smoother path.
Radius
   Minimum distance from last point before stroke continues.
Factor
   Higher values give a smoother stroke.


Curve
-----

This :ref:`Curve widget <ui-curve-widget>` is used to control the brush falloff.
Changing the curve allows you to specify the characteristics of your brushes to a large extent.


Weight Paint Tools
------------------

Blender provides a set of helper tools for Weight Painting.
The tools are located in the weight tools panel.

The weight paint tools are full described in the
:doc:`Weight Paint Tools </sculpt_paint/painting/weight_paint/tools>` page.


Options
=======

.. figure:: /images/painting_weight_options-1.png
   :align: right

   Paint Options.


Overlay
-------

Allows you to customize the display of curve and texture that applied to the brush.


Appearance
----------

Show Brush
   Makes the brush visible as a circle (on by default).
Custom Icon
   Allows definition of a custom brush icon.


Options
-------

.. figure:: /images/painting_weight_options-2.png
   :align: right

   Brush appearance.


The Weight Paint Options modify the overall brush behavior:

Normals
   The vertex normal (helps) determine the extent of painting. This causes an effect as if painting with light.
Spray
   Constantly draw (opposed to drawing one stroke per mouse click).
Restrict
   This option limits the influence of painting to vertices belonging
   (even with weight 0) to the selected vertex group.
X-mirror
   Use the X-mirror option for mirrored painting on groups that have symmetrical names,
   like with extension ".R"/ ".L" or "_R" / "_L".
   If a group has no mirrored counterpart, it will paint symmetrically on the active group itself.
   You can read more about the naming convention in
   :doc:`Editing Armatures: Naming conventions </rigging/armatures/bones/editing/properties>`.
   The convention for armatures/bones apply here as well.
Topology Mirror
   Use topology-based mirroring, for when both side of a mesh have matching mirrored topology.
Show Zero Weights
   To display unreferenced and zero weighted areas in black (by default).

   - None
   - Active
   - All

Unified Settings
   The *Size*, *Strength* and *Weight* of the brush can be set to
   be shared across different brushes, as opposed to per-brush.
