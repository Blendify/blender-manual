
********************
Sampling & filtering
********************

.. glossary::

   Sampling (CG)
      Process of calculating probes.

Anti-aliasing
=============

.. glossary::

   Aliasing
   Anti-aliasing
      Is a term from of the field of signal processing regarding 
      a group of errors occurring within signal reconstruction. [Crow77]_
      Anti-aliasing are techniques against these errors.

An example are jagged lines.

.. glossary::

   Full-Screen Anti-Aliasing
   FSAA
      A method of :term:`Anti-aliasing` on the graphics card, so the entire image is displayed smooth.
      
   Oversampling
   Multi-sampling Anti-Aliasing
   MSAA
      Is the technique of minimizing :term:`aliasing` when representing a high-resolution
      signal at a lower resolution.

.. 
    FSAA: Also known as *Multi-Sampling*.
   This can be enabled in the :ref:`user preferences <prefs-system-multi_sampling>`.
   On many graphics cards, this can also be enabled in the driver options.

Formulations
============

Sensor equation
---------------

Rather known as "the rendering equation" [Kaji96]_

Framework
=========

Monte Carlo
-----------

[Cook86]_

Metropolis
----------

[Veac97]_

Algorithms
==========

Hidden line & surface removal
-----------------------------

For survey of early algorithms see [SuSS74]_.

Rasterization
-------------

Solve light transport simulation as set of transformations.
Applies screen space sampling.


Scanline
--------

.. glossary::

   Scanline
      Rendering technique. Much faster than :term:`ray tracing`,
      but allows fewer effects, such as reflections, refractions, motion blur and focal blur.


Ray based
---------

Raycasting
^^^^^^^^^^

[Appe68]_ [GoNa71]_


Raytracing
^^^^^^^^^^

.. glossary::

   ray tracing
      Rendering technique that works by tracing the path taken by a ray of light through the scene,
      and calculating reflection, refraction, or absorption of the ray whenever it intersects an object in the world.
      More accurate than :term:`scanline`, but much slower.

[Whit80]_, collision detection

.. glossary::

   path tracing
      Single path per intersection [Kaji96]_.

Uni-Directional ray tracing
""""""""""""""""""""""""""""

Backward tracing
''''''''''''''''

Classical [Whit80]_, stochastic [CoPC84]_ [Cook86]_ several rays at intersection.


Forward/ light tracing
''''''''''''''''''''''

[DuLW93]_

Bi-Directional ray tracing
""""""""""""""""""""""""""

[LaWi93]_ or hybrid ray tracing.

Photon Mapping
^^^^^^^^^^^^^^

[Jens96]_

Radiosity
^^^^^^^^^

.. glossary::

   Radiosity
      A global lighting method that calculates patterns of light and shadow 
      for rendering graphics images from three-dimensional models.


[GTGB84]_, [CoGr85]_, Wallace, [NiNa85]_. Based on finite element to solve the integral equation.


Ambient & ambient occlusion
---------------------------

.. ao shadow

.. glossary::

   Ambient
      Is an approximation of reflected light from the environment. A simple light transport simulation or a light source.

   Ambient occlusion
      A group of techniques to counter balance the :term:`ambient` lighting.
      A ratio of how much :term:`ambient` a surface point would be likely to receive.

If a surface point is under a foot or table,
it will end up much darker than the top of someone's head or the tabletop.


[LaZu94]_ shader: [Mill94]_ [ZhIK98]_

Visibility & Shadows
====================

Geometric Shadow calculation
----------------------------

Shadow tracing
--------------

[GoNa71]_

Importance Sampling
===================

probability density function PDF [ShWZ96]_


---------------

.. container:: cit-ref

   .. [Appe68] Arthur Appel, 1968, Some techniques for shading machine rendering of solids; 
         In Proc.AFIPS Conference Vol. 32 pp. 37-45.

   .. [Crow77] Franklin C. Crow, 1977, The Aliasing Problem in Computer-Generated Shaded Images;
         Communication of the ACM Vol. 20 No. 11 pp. 799-805.

   .. [CoGr85] Michael F. Cohen, Donald P. Greenberg, 1985, The Hemi-Cube: A Radiosity Solution for Complex Environments;
         In Proc. SIGGRAPH: Computer Graphics Vol.19 No. 3 pp. 31-40.

   .. [Cook86] Robert L. Cook, 1986, Stochastic sampling in computer graphics; 
         Transactions on Graphics Vol 5 No 1 pp. 51-72.

   .. [CoPC84] Robert L. Cook, Thomas Porter, Loren Carpenter, 1984, Distributed ray tracing; 
         In Proc. SIGGRAPH: Computer Graphics Vol. 18 No. 3 pp. 137-145.

   .. [DuLW93] Philip Dutré, Eric P. Lafortune, Yves Willems, 1993, Monte Carlo Light Tracing with Direct Computation of Pixel Intensities; 
         In Proc. CompuGraphics 3 pp. 128-137.

   .. [Geor15] Iliyan Georgiev, 2015, Path Sampling Techniques for Efficient Light Transport Simulation; 
         PhD thesis, Saarland University, Saarbrücken, Germany.

   .. [GoNa71] Robert A. Goldstein, Roger Nagel, 1971, 3-D visual simulation; 
         Simulation, Vol. 16 No. 1 pp. 25-31.

   .. [GTGB84] Cindy M. Goral, Kenneth E. Torrance, Donald P. Greenberg, Bennett Battaile, 1984, Modeling the interaction of light between diffuse surfaces; 
         In Proc. SIGGRAPH: Computer Graphics, Vol. 18 No. 3 pp. 213-222.

   .. [Jens96] Henrik W. Jensen, 1996, Global illumination using photon maps; 
         In Proc. of Eurographics Rendering Workshop pp. 21-30.

   .. [Kaji96] James T. Kajiya, 1996, The rendering equation; 
         In Proc. of SIGGRAPH: Computer Graphics Vol. 20 No. 4 pp. 143-150.

   .. [LaWi93] Eric P. LaFortune, Yves D. Willems, 1993, Bi-Directional Path Tracing; 
         In Proc. SIGGRAPH Vol. 5 pp. 145-153.

   .. [LaZu94] Michael S. Langer, Steven W. Zucker, 1994, Shape-from-shading on a cloudy day; 
         J. Optical Society of America Vol. 11 No. 2 p. 467.

   .. [Mill94] Gavin Miller, 1994, Efficient algorithms for local and global accessibility shading; 
         In Proc. SIGGRAPH pp. 319-326.

   .. [NiNa85] Tomoyuki Nishita, Eihachiro Nakamae, 1985, Continuous Tone Representation of Three-Dimensional Objects Taking Account of Shadows and Interreflection;
         In Proc. SIGGRAPH: Computer Graphics Vol. 19 No. 3 pp. 23-30.

   .. [ShWZ96] Peter Shirley, Changyaw Wang, Kurt Zimmerman, 1996, Monte Carlo techniques for direct lighting calculations; 
         J. Transactions on Graphics Vol. 15 No. 1 pp. 1-36.

   .. [SuSS74] Ivan E. Sutherland, Robert F. Sproull, Robert A. Schumacker, 1974, A characterization of ten hidden-surface algorithms; 
         ACM Computing Surveys Vol. 6 No. 1 pp. 1-55.

   .. [Whit80] Turner Whitted, 1980, An Improved Illumination Model for Shaded Display; 
         ACM Graphics Image Processing Vol. 23 No. 6 pp. 343-349.

   .. [Veac97] Eric Veach, 1997, Robust Monte Carlo methods for light transport simulation; 
         PhD thesis, Stanford, CA, USA.

   .. [ZhIK98] Sergey Zhukov, Andrei Iones, Grigorij Kronin. 1998, An Ambient Light Illumination Model; 
         In Proc. Eurographics: Workshop pp. 45-56.
   