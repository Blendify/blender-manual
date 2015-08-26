.. _glossary:

###########
  Glossary
###########

.. if you add new entries, keep the alphabetical sorting!

.. glossary::

   Active
      Blender makes a distinction between selected and active.
      Only one Object or item can be active at any given time.

   Action Safe
     Area of the screen visible on most devices. Place content inside it to ensure it doesn't get cut off.

   Actuator
      A :term:`logic brick` that acts like a muscle of a lifeform. It can move the object, or also make a sound.

   Aliasing
      Rendering artifacts in the form of jagged lines.

   Alpha Channel
      Additional channel in 2D image for transparency.

      Straight Alpha
         This is the alpha type used by paint programs such as Photoshop or Gimp,
         and used in common file formats like PNG, BMP or Targa.
         So, image textures or output for the web are usually straight alpha.
         ``RGBA`` color are stored as ``(R, G, B, A)``
         channels, with the RGB channels unaffected by the alpha channels.

      Premultiplied Alpha
         Rendering will output premultiplied alpha images, and the OpenEXR file format uses this alpha type.
         So, intermediate files for rendering and compositing are often stored as premultiplied alpha.
         Compared to straight alpha, the colors could be considered to be stored as ``(R*A, G*A, B*A, A)``,
         with the alpha multiplied into the RGB channel.

         This is the natural output of render engines,
         with the RGB channels representing the amount of light that comes toward the viewer,
         and alpha representing how much of the light from the background is blocked.

      Conversion (Straight/Premultiplied) Alpha
         Conversion between the two alpha types is not a simple operation and can involve data loss,
         as both alpha types can represent data that the other can not, though it is often subtle.

         Straight alpha can be considered to be an RGB color image with a separate alpha mask.
         In areas where this mask is fully transparent, there can still be colors in the RGB channels.
         On conversion to premultiplied alpha this mask is *'applied'*
         and the colors in such areas become black and are lost.

         Premultiplied alpha on the other hand can represent renders
         that are both emitting light and letting through light from the background.
         For example a transparent fire render might be emitting light,
         but also letting through all light from objects behind it.
         On converting to straight alpha this effect is lost.

   Ambient Light
      It's light that doesn't seem to come from a specific source, but is just there.
      In the real world, this is caused by stray photons bouncing around and occasionally ricocheting under the desk.
      Since the light doesn't come from anywhere,
      all sides of an object are illuminated equally, and it won't have any shading on it.

   Ambient Occlusion
      A ratio of how much ambient light a surface point would be likely to receive.
      It simulates a huge dome light surrounding the entire scene.
      If a a surface point is under a foot or table,
      it will end up much darker than the top of someone's head or the tabletop.

   Animation
      Simulation of motion.

   Anti-aliasing
      See :term:`oversampling`.

   Armature
      A single-member class of primitive object.
      It consists of :term:`bones <bone>`. Its primary use is in development of animated, articulated objects.

   Automerge
      Editing mode working with Snap-tool. It removes the doubles when you snap 2 vertices.

   Axis
      A reference line depicting the direction of one of the coordinates in any coordinate system.
      
   Baking
      Baking refers to the process of computing and storing the result of a potentially time-consuming calculation
      so as to avoid needing to calculate it again.

   Bevel
      Operation to chamfer or bevel edges of an object.

   Bone
      Each of the segments that make up an :term:`armature`.

   Boolean
      Operation that takes 2 meshes. There  3 types: union, intersection and difference.
      Order of meshes is important for difference operation. With A and B as the meshes:

      - Difference (A - B): the inner part of B is substracted from the inner part of A.
      - Union: the inner parts of both meshes A and B are combined.
      - Intersect: only inner parts both meshes have in common are kept.

      These operations take care of inner and outer parts of meshes (given by normals).

   Bounding Box
      Box that encloses the shape of an object. The box is aligned with the local space of the object.

   Bump Mapping
      Is a technique where at each pixel,
      a perturbation to the surface normal of the object being rendered is looked up in a texture map
      and applied before the illumination calculation is done.

   Bézier
      It's a computer graphics technique for generating and representing curves.

   Caustics
      In optics is a bundle of light rays.
      For example a caustic effect may be seen when light refracts or reflects through some
      refractive or reflective material, to create a more focused, stronger light on the final location.
      Such amplification, especially of sunlight, can burn -- hence the name.
      A common situation when caustics are visible is when some light points on glass.
      There is a shadow behind the glass, but also there is a stronger light spot.
      Nowadays, almost every advanced rendering system supports caustics.
      Some of them even support volumetric caustics.
      This is accomplished by raytracing the possible paths of the light beam through the glass,
      accounting for the refraction, reflection, etc.

   Collapse
      Is a tool used to remove redundant edges from geometry.

   Color Blend Modes
      Ways in which 2 colors can be blended in computer graphics.

      See Wikipedia's `Blend Modes <http://en.wikipedia.org/wiki/Blend_modes>`__

   Concave face
      Face in which one vert is inside a triangle formed by other vertices of the face.

   Constraint
      Tt is any factor that limits the performance of a system with respect to its goal.

   Controller
      A :term:`logic brick` that acts like the brain of a lifeform.
      It makes decisions to activate muscles (:term:`actuators <actuator>`),
      either using simple logic or complex Python scripts.

   Convex face
      Not :term:`concave face`. Opposite of concave face.

   Coplanar
      Items that are in the same plane in 3D space.

   Crease
      It's used to define the sharpness of edges and faces of subsurfaced meshes.

   Curve
      It's a class of objects. In Blender there are :term:`Bézier` curves and :term:`NURBS` curves.

   DOF
   Depth Of Field
      It's the distance in front of and behind the subject which appears to be in focus.
      For any given lens setting, there is only one distance at which a subject is precisely in focus,
      but focus falls off gradually on either side of that distance,
      so there is a region in which the blurring is tolerable.
      This region is greater behind the point of focus than it is in front,
      as the angle of the light rays change more rapidly; they approach being parallel with increasing distance.

   Diffuse Light
      It's even, directed light coming off a surface.
      For most things, the diffuse light is the main lighting we see.
      Diffuse light comes from a specific direction or location, and creates shading.
      Surfaces facing towards the light source will be brighter,
      while surfaces facing away from the light source will be darker.

   Directional Light
      Is a light that has a specific direction, but no location.
      It seems to come from an infinitely far away source, like the sun.
      Surfaces facing the light are illuminated more than surfaces facing away, but their location doesn't matter.
      A Directional Light illuminates all objects in the scene, no matter where they are.

   Displacement Mapping
      Uses a greyscale heightmap, like :term:`Bump Mapping`,
      but the image is used to physically move the vertices of the mesh at render time.
      This is of course only useful if the mesh has large amounts of vertices.

   Double Buffer
      Blender uses two buffers (images) to draw the interface in.
      The content of one buffer is displayed, while drawing occurs on the other buffer.
      When drawing is complete, the buffers are switched.

   Edge
      Straight segment (line) that connects 2 :term:`vertices <vertex>`, and can be part of a :term:`face`.

   Edge Loop
      Chain of :term:`edges <edge>` belonging to consecutive :term:`quads <quad>`.
      An edge loop ends at a pole or a boundary. Otherwise it is cyclic.

   Edge Ring
       Path of all :term:`edges <edge>` along a :term:`face loop` that share 2 faces belonging to that loop.

   Empty
      Kind of object that cannot hold any geometry.

   Environment Map
      Method of calculating reflections.
      It involves rendering images at strategic positions and applying them as textures to the mirror.
      Now in most cases obsoleted by Raytracing, which though slower is easier to use and more accurate.

   Face
      Mesh element that defines a piece of surface. It consists of 3 or more :term:`edges <edge>`.

   Face Loop
      Chain of consecutive :term:`quads <quad>`.
      A face loop stops at a :term:`triangle` or :term:`Ngon` (which don't belong to the loop), or at a boundary.
      Otherwise it's cyclic.

   Face Normal
      The normalized vector perpendicular to the plane that a :term:`face` lies in.

      Each face has its own normal.

   FCurve
      Curve that holds the animation values of a specific property.

   Field of View
      The area in which objects are visible to the camera. Also see :term:`Focal Length <focal length>`

   Focal Length
      Distance required by a lens to focus collimated light.
      Defines the magnification power of a lens. Also see :term:`Field of View <field of view>`

   FSAA
   Full-Screen Anti-Aliasing
      Also known as *Multi-Sampling*, is a way of enabling :term:`Anti-aliasing` on the graphics card,
      so the entire image is displayed smooth.

      On many graphics cards this can be enabled in the driver options.
      This can also be set in the :ref:`system preferences <preferences-system-multi_sampling>`.

   Gamma
      TODO.

   Geometric Center
      An object's geometric center coincides with the geometric center of its bounding box.

   Global Illumination
      Is a superset of radiosity and ray tracing.
      The goal is to compute all possible light interactions in a given scene,
      and thus obtain a truly photo realistic image.
      All combinations of diffuse and specular reflections and transmissions must be accounted for.
      Effects such as colour bleeding and caustics must be included in a global illumination simulation.

   Gouraud Shading
      Used to achieve smooth lighting on low-polygon surfaces without the
      heavy computational requirements of calculating lighting for each pixel.
      The technique was first presented by Henri Gouraud in 1971.

   HDRI
   High Dynamic Range Image
      HDRI is a set of techniques that allow a far greater dynamic range of exposures than normal digital imaging
      techniques. The intention is to accurately represent the wide range of intensity levels found in real scenes,
      ranging from direct sunlight to the deepest shadows.
      The use of high dynamic range imaging in computer graphics has been popularised by the work of Paul Debevec.

      See Wikipedia's:
      `HDRI <http://http://en.wikipedia.org/wiki/HDRI>`__.

   IOR
   Index Of Refraction
      It's a property of transparent materials.
      When a light ray travels through the same volume it follows a straight path.
      However if it passes from one transparent volume to another, it bends.
      The angle by which the ray is bent can be determined by the IOR of the materials of both volumes.

   Interpolation
      Method of calculating new data between points of known value, like :term:`keyframes <keyframe>`.

   Inverse Kinematics
      Is the process of determining the movement of interconnected segments of a body or model.
      Using ordinary Kinematics on a hierarchically structured object
      you can for example move the shoulder of a puppet.
      The upper and lower arm and hand will automatically follow that movement.
      IK will allow you to move the hand and let the lower and upper arm go along with the movement.
      Without IK the hand would come off the model and would move independently in space.

   Keyframe
      It's a frame in an animated sequence drawn or otherwise constructed directly by the user.
      In classical animation, when all frames were drawn by animators,
      the senior artist would draw these frames, leaving the "in between" frames to an apprentice.
      Now, the animator creates only the first and last frames of a simple sequence (keyframes);
      the computer fills in the gap.

   Lattice
      A lattice consists of a non-renderable three-dimensional grid of vertices
      (see also the :doc:`/modifiers/deform/lattice`).

   Layer
      A visibility flag for objects.

   Logic brick
      A graphical representation of a functional unit in Blender's game logic.
      A Logic brick can be a :term:`Sensor`, :term:`Controller` or :term:`Actuator`.

   Manifold
      Manifold meshes, called also *water tight* meshes,
      define a **closed non-self-intersecting volume** (see also :term:`non-manifold`).
      A manifold mesh is a mesh in which the structure of the connected
      faces in a closed volume will always point the normals (and their
      surfaces) to the outside or to the inside of the mesh without any overlaps.
      If you recalculate those normals, they will always point at
      a predictable direction (To the outside or to the inside of the
      volume).
      When working with non-closed volumes, a manifold mesh is a
      mesh in which the normals will always define two different and
      non-consecutive surfaces.
      A manifold mesh will always define an even number of non overlapped surfaces.

   Mesh
      Type of object consisting of :term:`vertices <vertex>`, :term:`edges <edge>` and :term:`faces <face>`.

   Motion Blur
      It's the simulation of the phenomenon that occurs when we perceive a rapidly moving object.
      The object appears to be blurred because of our persistence of vision.
      Doing motion blur makes computer animation appear more realistic.

   Multi-sampling
      See :term:`FSAA`

   Ngon
      It's a :term:`face` that contains more than four vertices.

   Non-linear animation
      Animation technique that allows the animator to edit motions as a whole, not just the individual keys.
      Nonlinear animation allows you to combine, mix, and blend different motions to create entirely new animations.

   Non-manifold
      Non-Manifold meshes essentially define geometry which cannot exist in the real world.
      This kind of geometry is not suitable for several types of operations,
      specially those where knowing the volume (inside/outside) of the object is important
      (refraction, fluids, booleans, or 3D printing, to name a few).
      A non-manifold mesh is a mesh in which the structure of a
      non-overlapped surface (based on it's connected faces) won't determine
      the inside or the outside of a volume based on it's normals, defining
      a  single surface for both sides, but ended with flipped normals.
      When working with non-closed volumes, a non-manifold mesh will always
      determine at least one discontinuity at the normal directions, either
      by an inversion of a connected loop, or by an odd number of surfaces.
      A non manifold mesh will always define an odd number of surfaces.

      There are several types of non-manifold geometry:

      - Some borders and holes (edges with only a single connected face), as faces have no thickness.
      - Edges and vertices not belonging to any face (wire).
      - Edges connected to 3 or more faces (interior faces).
      - Vertices belonging to faces that are not adjoining (e.g. 2 cones sharing the vertex at the apex).

      In edit mode, use :menuselection:`3D View --> Select --> Non Manifold` or :kbd:`Ctrl-Alt-Shift-M`
      to select these types of non-manifold geometry in a mesh.

   Normal
      The normalized vector perpendicular to a surface.

      Normals can be assigned to vertices,
      faces and modulated across a surface using :term:`normal mapping`.

   Normal mapping
      Is similar to :term:`Bump mapping`, but instead of the image being a greyscale heightmap,
      the colours define in which direction the normal should be shifted,
      the 3 colour channels being mapped to the 3 directions X, Y and Z.
      This allows more detail and control over the effect.

   NURBS
      Is a computer graphics technique for generating and representing **curves** and **surfaces**.

   Object center
      Reference point of an object for positioning (translating), orienting (rotating), and scaling an it.
      In most cases, this center is at the geometric center of the object (geometric center of its bounding box).
      However, an object's center may be offset from the geometric center.

   OpenGL
      The graphics system used by Blender (and many other graphics applications)
      for drawing 3D graphics, often taking advantage of hardware acceleration.
      See Wikipedia's:
      `OpenGL <http://en.wikipedia.org/wiki/OpenGL>`__.

   Oversampling
      Is the technique of minimizing :term:`aliasing` when representing a high-resolution
      signal at a lower resolution.

      Also called **Anti-Aliasing**.

   Overscan
      Overscan is the term used to describe the situation
      when not all of a televised image is present on a viewing screen
      See Wikipedia's:
      `Overscan <http://en.wikipedia.org/wiki/Overscan>`__

   Particle system
      It's a technique that simulate certain kinds of fuzzy phenomena,
      which are otherwise very hard to reproduce with conventional rendering techniques.
      Common examples include fire, explosions, smoke, sparks, falling leaves, clouds, fog, snow, dust, meteor tails,
      stars and galaxies, or abstract visual effects like glowing trails, magic spells.
      Also used for fur, grass or hair.

   Phong
      Local illumination model that can produce a certain degree of realism in three-dimensional
      objects by combining three elements: diffuse, specular and ambient for each considered point on a surface.
      It has several assumptions - all lights are points, only surface geometry is considered,
      only local modelling of diffuse and specular, specular colour is the same as light colour,
      ambient is a global constant.

   Pivot Point
      It's a reference point used by many mesh manipulation tools.

   Pixel
      The smallest unit of information in a 2D raster image, representing a single color made up of red, green, and blue
      channels. If the image has an :term:`alpha channel`, the pixel will contain a corresponding fourth channel.

   Pole
      It's a vertex in which three or five or more edges are connected to.
      A vertex connected to one, two or four edges, is not a pole.

   Premultiplied Alpha
      See :term:`Alpha Channel`

   Primitive
      Is a basic object that can be used as a basis for modeling more complicated objects.

   Procedural Texture
      Computer generated (generic) textures. Procedural textures can be configured via parameters.

   Quad
      It's a :term:`face` that contains exactly four vertices.

   Radiosity
      Is a global lighting method
      that calculates patterns of light and shadow for rendering graphics images from three-dimensional models.
      One of the many different tools which can simulate diffuse lighting in Blender.

      See Wikipedia's
      `Radiosity (computer graphics) <http://en.wikipedia.org/wiki/Radiosity_%28computer_graphics%29>`__

   Raytracing
      Rendering technique that works by tracing the path taken by a ray of light through the scene,
      and calculating reflection, refraction, or absorption of the ray whenever it intersects an object in the world.
      More accurate than :term:`scanline`, but much slower.

   Refraction
      It's the change in direction of a wave due to a change in velocity.
      It happens when waves travel from a medium with a given :term:`index of refraction` to a medium with another.
      At the boundary between the media, the wave changes direction;
      its wavelength increases or decreases but frequency remains constant.

   Relative Vertex Keys
      Are part of a keyframe animation system that operates on vertex level objects.
      Each key is stored as a morph target such that several keys may be blended
      together to achieve complex mesh animation.
      Facial expressions, speech, and other detailed animated keyframed movements
      can be created within mesh-based models.

   Render
      Process of generating an image out of a 3D model on a computer.

   Scanline
      Rendering technique. Much faster than :term:`raytracing`,
      but allows fewer effects, such as reflections, refractions, motion blur and focal blur.

   Sensor
      A :term:`logic brick` that acts like a sense of a lifeform. It reacts to touch, vision, collision etc.

   Shading
      Process of altering the color of an object/surface in the 3D scene,
      based on its angle to lights and its distance from lights to create a photorealistic effect.

   Smoothing
      Defines how :term:`faces <face>` are shaded.
      Face can be either solid (faces are rendered flat)
      or smooth (faces are smoothed by interpolating the normal on every point of the face).

   Specular light
      Refers to the highlights on reflective objects.

   Straight Alpha
      See :term:`Alpha Channel`

   Sub surface scattering
      Mechanism of light transport in which light penetrates the surface of a translucent object,
      is scattered by interacting with the material, and exits the surface at a different point.
      All non-metallic materials are translucent to some degree.
      In particular, materials such as marble, skin,
      and milk are extremely difficult to simulate realistically without taking subsurface scattering into account.

   Subdividing
      It's used to add more geometry to a mesh.
      It creates new vertices on subdivided edges, new edges between subdivisions and new faces based on new edges.
      If new edges cross a new vertex is created on their crossing point.

   Subdivision surface
      Is a method of creating smooth surfaces, which can take a low polygon mesh as input.

      Sometimes abbreviated to **Subsurf**.

      See Wikipedia's
      `Catmull-Clark subdivision surface <http://en.wikipedia.org/wiki/Catmull%E2%80%93Clark_subdivision_surface>`__

   Tessellation
      TODO.

   Texture
      A texture specifies visual patterns on surfaces and simulates physical surface structure.

   Title Safe
     Area of the screen visible on all devices.
     Place text and graphics inside this area to make sure they don't get cut off.

   Topology
      Arrangement of *Vertices*, *Edges*, and *Faces* which define the shape of a mesh.
      See :term:`vertex`, :term:`edge`, and :term:`face`.

   Topology
      TODO.

   Triangle
      It's a :term:`face` with exactly 3 :term:`vertices <vertex>`.

   UV map
      A UV map defines a relation between the surface of a 3 dimensional mesh and and a planar 2D texture. In detail,
      each face of the mesh is mapped to a corresponding face on the texture.
      It is possible and often common practice to map several faces of the mesh to the same
      or overlapping areas of the texture.

   Vertex
      It's a point in 3D space containing a location. It may also have a defined color.
      Vertices are the terminating points of :term:`edges <edge>`.

   VBO
   Vertex Buffer Object
      Term used for uploading geometry to the graphics cards memory for improved performance
      with :term:`OpenGL` drawing.

      See Wikipedia's
      `Vertex Buffer Object <http://en.wikipedia.org/wiki/Vertex_Buffer_Object>`__

   Vertex Group
      Vertices can be grouped together so that certain operations can work on specific groups.

   Voxel
      A cubicle 3D equivalent to the square 2D pixel.
      The name is a combination of the terms "Volumetric" and ":term:`Pixel <pixel>`".
      Used to store smoke and fire data from physics simulations.
