..    TODO/Review: {{review}} .

***********************
Fluid Technical Details
***********************

Physical correctness
====================

.. figure:: /images/fluidsim-example3.jpg

   "My cup runneth over"


Fluid animation can take a lot of time - the better you understand how it works,
the easier it will be to estimate how the results will look.
The algorithm used for Blender's fluid simulation is the *Lattice Boltzmann Method* (LBM);
other fluid algorithms include *Navier-Stokes* (NS)
solvers and *Smoothed Particle Hydrodynamics* (SPH) methods.
LBM lies somewhere between these two.

For Blender's LBM solver, the following things will make the simulation harder to compute:

- Large domains.
- Long duration.
- Low viscosities.
- High velocities.

The viscosity of water is already really low, so especially for small resolutions,
the turbulence of water can not be correctly captured. If you look closely,
most simulations of fluids in computer graphics do not yet look like real water as of now.
Generally, don't rely on the physical settings too much
(such as physical domain size or length of the animation in seconds).
Rather try to get the overall motion right with a low resolution,
and then increase the resolution as much as possible or desired.
