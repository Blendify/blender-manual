..    TODO/Review: {{review|text=check see-also and external links}} .


**************
Fluid Appendix
**************

Hints
=====

Some useful hints about fluid simulation in Blender:


- Don't be surprised, but you'll get whole bunch of mesh (.bobj.gz) files after a simulation.
  One set for preview, and another for final.
  Each set has a .gz file for each frame of the animation.
  Each file contains the simulation result - so you'll need them.


- Currently these files will not be automatically deleted, so it is a good idea to e.g.
  create a dedicated directory to keep simulation results.
  Doing a fluid simulation is similar to clicking the *ANIM* button -
  you currently have to take care of organizing the fluid surface meshes in some directory yourself.
  If you want to stop using the fluid simulation, you can simply delete all the ``*fluid*.bobj.gz`` files.


- Before running a high resolution simulation that might take hours,
  check the overall timing first by doing lower resolution runs.


- Fluid objects must be completely inside the bounding box of the domain object.
  If not, baking may not work correctly or at all.
  Fluid and obstacle objects can be meshes with complex geometries.
  Very thin objects might not appear in the simulation,
  if the chosen resolution is too coarse to resolve them (increasing it might solve this problem).


- Don't try to do a complicated scene all at once.
  Blender has a powerful compositor that you can use to combine multiple animations.

   For example, to produce an animation showing two separate fluid flows while keeping your domain small,
   render one .avi using the one flow.
   Then move the domain and render another .avi with the other flow using an alpha channel (in a separate B&W .avi?).
   Then, composite both .avi's using the compositor's add function.
   A third ``.avi`` is usually the smoke and mist and it is laid on top of everything as well.
   Add a rain sheet on top of the mist and spray and you'll have quite a storm brewing! And then lightning flashes,
   trash blowing around, all as separate animations, compositing the total for a truly spectacular result.


Limitations & Workarounds
=========================

- If the setup seems to go wrong, make sure all the normals are correct (hence,
  enter *Edit mode*, select all, and recalculate normals once in a while).


- Currently there's a problem with zero gravity simulation - simply select a very small gravity until this is fixed.


- If an object is initialized as *Volume*, it has to be closed and have an inner side
  (a plane won't work). To use planes, switch to *Shell*, or extrude the plane.


- Blender freezes after clicking *BAKE*.
  Pressing :kbd:`Esc` makes it work again after a while -
  this can happen if the resolution is too high and memory is swapped to hard disk,
  making everything horribly slow. Reducing the resolution should help in this case.


- Blender crashes after clicking *BAKE* -
  this can happen if the resolution is really high and more than 2GB are allocated, causing Blender to crash.
  Reduce the resolution.
  Many operating systems limit the total amount of memory that can be allocated by a *process*,
  such as Blender, even if the *machine* has more memory installed.


- The meshes should be closed, so if some parts of e.g.
  a fluid object are not initialized as fluid in the simulation,
  check that all parts of connected vertices are closed meshes. Unfortunately,
  the Suzanne (monkey) mesh in Blender is not a closed mesh (the eyes are separate).


- If the fluid simulation exits with an error message (stating e.g. that the "init has failed"),
  make sure you have valid settings for the domain object, e.g. by resetting them to the defaults.


- Note that first frame may well take only a few hundred MBs of RAM memory,
  but latter ones go over one GB, which may be why your bake fails after awhile.
  If so, try to bake one frame at the middle or end at full res so you'll see if it works.


- Memory used doubles when you set surface subdivision from 1 to 2.


- Using "generate particles" will also add memory requirements, as they increase surface area and complexity.
  Ordinary fluid-sim generated particles probably eat less memory.
