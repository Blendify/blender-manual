
**************
Render Quality
**************

The quality of the renders can be adjusted by changing the anti-aliasing method.
A different one can be selected for Viewport rendering and for final rendering.

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Render --> Sampling`

No Anti-Aliasing
   With this option selected no anti-aliasing will be applied.

Single Pass Anti-Aliasing
   Scene will be rendered with an anti-aliasing post processing pass.

Multi Sample
   Scene will be rendered multiple times with a slight offset.
   The anti-aliasing will be gathered from the multiple renders.
   The number of samples are predefine so it uses the best distribution of the samples.
   Choices are: 5, 8, 11, 16 and 32 samples.

   .. tip::

      Multi Samples Anti-Aliasing is well suited for hair rendering.

   *Progressive Viewport Rendering*

   When rendering in the 3D Viewport, one sample is rendered at a time.
   When nothing changes to the scene or viewport the next sample will be rendered.

   In the 3D Viewport the quality that is set can be limited by
   the *Viewport Display Quality* setting in the preferences.
