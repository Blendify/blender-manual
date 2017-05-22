
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

   .. image:: /images/render_cycles_settings_object_data_shadow-catcher.png

      Example of the shadow catcher. Note how the material of the plane can still be viewed in the spheres.


Performance
-----------

Use Camera Cull
   TODO.
Use Distance Cull
   TODO.
