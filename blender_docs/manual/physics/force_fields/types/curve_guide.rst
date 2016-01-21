
***********
Curve Guide
***********

.. figure:: /images/CurveGuideForceField.jpg

   Image 4a: A Curve Guide field.


*Curve* objects can be the source of a *Curve Guide* field.
You can guide particles along a certain path, they don't affect Softbodys.
A typical scenario would be to move a red blood cell inside a vein, or to animate the particle flow in a motor.
You can use *Curve Guide* s also to shape certain hair strands -
though this may no longer be used as often now because we have the :doc:`Particle Mode </physics/particles/mode>`.
Since you can animate curves as Softbody or any other usual way,
you may build very complex animations while keeping great control and keeping the simulation time to a minimum.

The option *Curve Follow* does not work for particles.
Instead you have to set *Angular Velocity*
(in the *Physics* panel of the *Particle* sub-context)
to *Spin* and leave the rotation constant (i.e. don't turn on *Dynamic*).

*Curve Guide* s affect all particles on the same layer, independently from their distance to the curve.
If you have several guides in a layer,
their fields add up to each other (the way you may have learned it in your physics course).
But you can limit their influence radius:

Minimum Distance
   The distance from the curve, up to where the force field is effective with full strength.
   If you have a *Fall-off* of 0 this parameter does nothing,
   because the field is effective with full strength up to *MaxDist* (or the infinity).
   *MinDist* is shown with a circle at the endpoints of the curve in the 3D window.

Free
   Fraction of particle life time, that is not used for the curve.

Fall-off
   This setting governs the strength of the guide between *MinDist* and *MaxDist*.
   A *Fall-off* of 1 means a linear progression.

A particle follows a *Curve Guide* during it's lifetime,
the velocity depends from it's lifetime and the length of the path.

Additive
   If you use *Additive*, the speed of the particles is also evaluated depending on the *Fall-off*.
Weights
   Use Curve weights to influence the particle influence along the curve.
Maximum Distance / Use Max
   The maximum influence radius. Shown by an additional circle around the curve object.

The other settings govern the form of the force field along the curve.

Clumping Amount
   The particles come together at the end of the curve (1) or they drift apart (-1).
Shape
   Defines the form in which the particles come together.
   +0.99: the particles meet at the end of the curve.
   0: linear progression along the curve. -0.99: the particles meet at the beginning of the curve.


.. figure:: /images/CurveGuideKink.jpg
   :width: 400px

   Image 4b: Kink options of a curve guide. From left to right: Radial, Wave, Braid, Roll.
   `Animation <http://www.vimeo.com/1866538>`__


With the drop down box *Kink*, you can vary the form of the force field:

Curl
   The radius of the influence depends on the distance of the curve to the emitter.
Radial
   A three dimensional, standing wave.
Wave
   A two dimensional, standing wave.
Braid
   Braid.
Roll
   A one dimensional, standing wave.

It is not so easy to describe the resulting shapes, I hope it's shown clearly enough in
(*Image 4b*).

Frequency
   The frequency of the offset.
Shape
   Adjust the offset to the beginning/end.
Amplitude
   The Amplitude of the offset.
