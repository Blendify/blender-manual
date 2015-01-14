.. _glossary:

###########
  Glossary
###########

.. if you add new entries, keep the alphabetical sorting!

.. glossary::

   Color Blend Modes
      Here are common modes for blending 2 colors in computer graphics.

      Mix
         The background pixel is covered by the foreground using alpha values.
      Add
         The pixels are added together.
         Fac controls how much of the second socket to add in. Gives a bright result.
         The "opposite" to Subtract mode.
      Subtract
         The foreground pixel (bottom socket) is subtracted from the background one.
         Gives a dark result. The "opposite" to Add mode.
      Multiply
         Simply multiply the values.
      Screen
         Both pixel values are inverted, multiplied by each other, the result is inverted again.
         This returns a brighter result than both input pixels in most cases (except one of them equals 0.0).
         Completely black layers do not change the background at all
         (and vice versa) - completely white layers give a white result.
         The "opposite" of Multiply mode.
      Overlay
         A combination of Screen and Multiply mode, depending on the base color.
      Divide
         Simply divide the values.
      Difference
         Both pixels are subtracted from one another, the absolute value is taken.
         So the result shows the distance between both parameters,
         black stands for equal colors, white for opposite colors (one is black, the other white).
         The result looks a bit strange in many cases.
         This mode can be used to invert parts of the base image,
         and to compare two images (results in black if they are equal).
      Darken
         Both pixels are compared to each other, the smaller one is taken.
         Completely white layers do not change the background at all,
         and completely black layers give a black result.
      Lighten
         Both parameters are compared to each other, the larger one is taken.
         Completely black layers do not change the image at all and white layers give a white result.
      Dodge
         Some kind of inverted Multiply mode (the multiplication is replaced by a division of the "inverse").
         Results in lighter areas of the image.
      Burn
         Some kind of inverted Screen mode (the multiplication is replaced by a division of the "inverse").
         Results in darker images, since the image is burned onto the paper, er..image (showing my age).
      Color
         Adds a color to a pixel, tinting the overall whole with the color.
         Use this to increase the tint of an image.
      Value
         The RGB values of both pixels are converted to HSV values.
         The values of both pixels are blended,
         and the hue and saturation of the base image is combined with the blended value and converted back to RGB.
      Saturation
         The RGB values of both pixels are converted to HSV values.
         The saturation of both pixels are blended,
         and the hue and value of the base image is combined with the blended saturation and converted back to RGB.
      Hue
         The RGB values of both pixels are converted to HSV values.
         The hue of both pixels are blended,
         and the value and saturation of the base image is combined with the blended hue and converted back to RGB.
      Soft Light
         Lightens or darkens base color depending on the blend color brightness.
         The effect is softer than that of Linear Light or Overlay modes,
         with pure white and pure black blend colors not yielding pure white/black results.
      Linear Light
         Brightens base color depending on blend color.
         If blend color is more than 50% bright, base color is brightened by the blend color values,
         otherwise it is darkened by the blend color values.

      See Wikipedia's `Blend Modes <http://en.wikipedia.org/wiki/Blend_modes>`__ article for more information.

   Manifold
      Manifold meshes, called also *water tight* meshes,
      define a **closed non-self-intersecting volume** (see also :term:`non-manifold`).

   Non-Manifold
      Non-Manifold meshes essentially define geometry which cannot exist in the real world.
      This kind of geometry is not suitable for several types of operations,
      specially those where knowing the volume (inside/outside) of the object is important
      (refraction, fluids, booleans, or 3D printing, to name a few).
      There are several types of non-manifold geometry:

      - Borders and holes (edges with only a single connected face), as faces have no thickness.
      - Edges and vertices not belonging to any face (wire).
      - Edges connected to 3 or more faces (interior faces).
      - Vertices belonging to faces that are not adjoining (e.g. 2 cones sharing the vertex at the apex).

      Use :menuselection:`3D View --> Select --> Non Manifold`
      to select these types of non-manifold geometry in a mesh.

   Lattice
      TODO

   Particle Terminology
      Children/Child Particle
         A particle type that is generated and placed in relation to other normal particles that already exist.
         Children particles are generally much quicker to calculate.
      Unborn Particle
         A particle which has not yet been displayed/emitted (but will be on a later frame).
      Alive Particle
         A particle which has been emitted, is being displayed and has not yet died.
      Dead Particle
         A particle which has been displayed/emitted and has reached its
         end of life length is considered *dead*.

   VBO
      Vertex Buffer Object, a term used for uploading geomatry to the graphics cards memory for improved performance.

      See Wikipedia's `Vertex Buffer Object <http://en.wikipedia.org/wiki/Vertex_Buffer_Object>`__
      article for more information.


   Vertex
      a point in 3D space
      A point is defined by its 3 axis coordinates x,y,z.
      In blender the z-axis points *upwards*,
      hence when you are in top view,
      you see the x-y plane (x from left to right, y from bottom to top)

   Vertex Group
      TODO

   Video Presets
      Blender has a number of preset video formats.

      .. list-table::
         :header-rows: 1

         * - Preset
           - Resolution (X x Y)
           - Aspect Ratio (X x Y)
           - Frame Rate
         * - DVCPRO HD 1080p
           - 1280x1080
           - 3:2
           - 24 fps
         * - DVCPRO HD 720p
           - 960x720
           - 4:3
           - 24 fps
         * - HDTV 1080p
           - 1920x1080
           - 1:1
           - 24 fps
         * - HDTV 720p
           - 1280x720
           - 1:1
           - 24 fps
         * - HDV 1080p
           - 1440x1080
           - 4:3
           - 23.98 fps
         * - HDV NTSC 1080p
           - 1440x1080
           - 4:3
           - 29.97 fps
         * - HDV PAL 1080p
           - 1440x1080
           - 4:3
           - 25 fps
         * - TV NTSC 16:9
           - 720x480
           - 40:33
           - 29.97 fps
         * - TV NTSC 4:3
           - 720x486
           - 10:11
           - 29.97 fps
         * - TV PAL 16:9
           - 720x576
           - 16:11
           - 25 fps
         * - TV PAL 4:3
           - 720x576
           - 12:11
           - 25 fps


