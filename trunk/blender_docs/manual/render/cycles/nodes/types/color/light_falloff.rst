.. _render-cycles-nodes-more-light_falloff:

*************
Light Falloff
*************

Manipulate how light intensity decreases over distance.
In reality light will always fall off quadratically;
however it can be useful to manipulate as a non-physically based lighting trick. Note that
using Linear or Constant falloff may cause more light to be introduced with every global
illumination bounce, making the resulting image extremely bright if many bounces are used.

Strength input
   Light strength before applying falloff modification.
Smooth input
   Smooth intensity of light near light sources. This can avoid harsh highlights,
   and reduce global illumination noise. 0.0 corresponds to no smoothing; higher values smooth more.
   The maximum light strength will be strength/smooth.
Quadratic output
   Quadratic light falloff; this will leave strength unmodified if smooth is 0.0 and corresponds to reality.
Linear output
   Linear light falloff, giving a slower decrease in intensity over distance.
Constant output
   Constant light falloff, where the distance to the light has no influence on its intensity.
