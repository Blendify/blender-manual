
*******
Voronoi
*******

.. figure:: /images/Textures-Procedural-Voronoi.jpg

   Voronoi Texture Panels


Often used for
   Very convincing Metal, especially the "Hammered" effect. Organic shaders (e.g. scales, veins in skin).
Result(s)
   Intensity (default) and Color


Options
=======

Distance Metric
   This procedural texture has seven Distance Metric options.
   These determine the algorithm to find the distance between cells of the texture. These options are:

   - Minkovsky
   - Minkovsky 4
   - Minkovsky 1/2
   - Chebychev
   - Manhattan
   - Distance Squared
   - Actual Distance

   The *Minkovsky* setting has a user definable value (the *Exponent* button)
   which determines the Minkovsky exponent (``e``) of the distance function
   ``(x``:sup:`e` ``+ y``:sup:`e` ``+ z``:sup:`e` ``)``:sup:`1/e`.
   A value of one produces the *Manhattan* distance metric, a value less than one produces stars
   (at **0.5**, it gives a *Minkovsky 1/2*), and higher values produce square cells (at **4.0**,
   it gives a *Minkovsky 4*, at **10.0**, a *Chebychev*).
   So nearly all Distance Settings are basically the same - variations of *Minkowsky*.

   You can get irregularly-shaped rounded cells with the
   *Actual Distance* / *Distance Squared* options.

.. list-table::

   * - .. figure:: /images/VoronoyMinkovsky0_5.jpg
          :width: 200px

          Minkovsky Exponent: 0.5 (Minkovsky 1/2)

     - .. figure:: /images/VoronoyMinkovsky1.jpg
          :width: 200px

          Minkovsky Exponent: 1 (Manhattan)

     - .. figure:: /images/VoronoiMinkovsky2.jpg
          :width: 200px

          Minkovsky Exponent: 2 (Actual Distance)

   * - .. figure:: /images/VoronoyMinkovsky4.jpg
          :width: 200px

          Minkovsky Exponent: 4 (Minkovsky 4)

     - .. figure:: /images/VoronoyMinkovsky10.jpg
          :width: 200px

          Minkovsky Exponent: 10 (Chebychev)

     - .. figure:: /images/VoronoyDistanceSquared.jpg
          :width: 200px

          Distance Squared (More contrast than ActualDistance)


Feature Weights
   These four sliders at the bottom of the Voronoi panel represent the values of the four Worley constants,
   which are used to calculate the distances between each cell in the texture based on the distance metric.
   Adjusting these values can have some interesting effects on the end result...

.. (no gallery yet) Check the Samples Gallery for some examples of these settings and what textures they produce.

Coloring
   Four settings (*Intensity*, *Position*, *Position and Outline*, and *Position, Outline, and Intensity*)
   that can use four different noise basis as methods to calculate color and intensity of the texture output.
   This gives the Voronoi texture you create with the "Worley Sliders"
   a completely different appearance and is the equivalent of the noise basis setting found on the other textures.
