
*******
Options
*******

See the :ref:`Display <sculpt-paint-brush-display>` options.


Bleed
   Seam Bleed extends the paint beyond UV island bounds to avoid visual artifacts
   (like bleed for baking).
Dither
   Amount of dithering when painting on 8 bit images.
Occlude
   With Geometry occlusion active only exposed (not hidden by other mesh parts)
   pixels are affected. This also allows for 3D stencils to be used to mask out
   areas of the surface too.
Backface Culling
   With backface culling enabled you can only paint on the front side of faces.
Cavity Mask
   Cavity masking means that the brush will be masked if there is a cavity or a
   hill on the mesh surface depending on the mesh options. The cavity algorithm
   is vertex-based.
Unified Brush Settings
   Brush options shared between the brush types.

   Size, Color, Strength

External
   Screen Grab Size
      Size of the captured image for reprojecting.
   Quick Edit
      Edit a snapshot of the viewport in an external image editor.
   Apply
      Project edited image back onto the object.
   Apply Camera Image
      Project an edited render from the active camera back onto the object.
