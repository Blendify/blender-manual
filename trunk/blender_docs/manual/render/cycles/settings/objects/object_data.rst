
***********
Object Data
***********

.. _render-cycles-settings-object-motion-blur:

Motion Blur
===========

.. admonition:: Reference
   :class: refbox

   | Panel:    :menuselection:`Properties editor --> Object --> Motion Blur`

Each object has its own motion blur settings along with the
:doc:`Scene Level Motion Blur </render/cycles/settings/scene/render/motion_blur>`
These settings can be found in the :doc:`Object Properties </editors/3dview/object/properties/introduction>`
tab of the Properties editor.

Deformation
   Enables motion blur for deformed meshes such as animated characters, including hair.
Steps
   Controls accuracy of deformation motion blur, more steps gives more memory usage.
   The actual number of time steps is :math:`2^{steps -1}`.


Cycles Settings
===============

Ray Visibility
--------------

Camera
   Makes the object visible in camera rays.
Diffuse
   Makes the object visible in diffuse rays.
Glossy
   Makes the object visible in glossy rays.
Transmission
   Makes the object visible in transmission rays.
Volume Scatter
   Makes the object visible in transmission rays.
Shadow
   Enables the object to cast shadows.

Shadow Catcher
   Enables the object to only receive shadow rays.
   It is to be noted that shadow catcher objects will interact with other CG objects via indirect light interaction.
   This feature makes it really easy to combine CGI elements into a real-life footage.

   .. figure:: /images/render_cycles_settings_objects_object-data_shadow-catcher.png

      Example of the shadow catcher. Note how the material of the plane can still be viewed in the spheres.


Performance
-----------

In order to activate these options the respectively camera cull options have to be enabled
in the scene :ref:`simplify panel <render-cycles-settings-scene-simplify>`.

Use Camera Cull
   Ignore and this way make objects invisible to rays outside of the camera frustum.
Use Distance Cull
   Will cull any objects further from the camera than a given distance. When used in combination with
   camera frustum culling, this can be used to avoid culling nearby objects that are outside the camera frustum,
   but still visible in reflections. It is also useful to cull small objects far from the camera.
