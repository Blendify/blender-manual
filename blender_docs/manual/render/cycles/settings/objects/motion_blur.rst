.. _render-cycles-settings-object-motion-blur:

***********
Motion Blur
***********

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
