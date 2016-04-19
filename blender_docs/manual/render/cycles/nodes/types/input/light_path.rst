
**********
Light Path
**********

Node to find out for which kind of incoming ray the shader is being executed;
particularly useful for non-physically based tricks.
More information about the meaning of each type is in the
:doc:`Light Paths </render/cycles/settings/light_paths>` documentation.

Is Camera Ray
   1.0 if shading is executed for a camera ray, 0.0 otherwise.
Is Shadow Ray
   1.0 if shading is executed for a shadow ray, 0.0 otherwise.
Is Diffuse Ray output
   1.0 if shading is executed for a diffuse ray, 0.0 otherwise.
Is Glossy Ray
   1.0 if shading is executed for a glossy ray, 0.0 otherwise.
Is Singular Ray
   1.0 if shading is executed for a singular ray, 0.0 otherwise.
Is Reflection Ray
   1.0 if shading is executed for a reflection ray, 0.0 otherwise.
Is Transmission Ray output
   1.0 if shading is executed for a transmission ray, 0.0 otherwise.
Ray Length
   Distance travelled by the light ray from the last bounce or camera.
Ray Depth
   Number of times the ray has "bounced", i.e. been reflected or transmitted on interaction with a surface.

   .. note::

      Passing through a transparent shader
      :ref:`does not count as a normal "bounce" <render-cycles-light_paths-transparency>`.

Transparent Depth
   Returns the number of transparent surfaces passed through.
Transparent Depth
   Todo.
