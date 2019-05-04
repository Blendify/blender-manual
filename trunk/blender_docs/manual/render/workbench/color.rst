*****
Color
*****

The colors that the workbench uses to render objects can be changed.

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Render --> Color`


Single
   Render the whole scene using a single color. The color can be chosen.

Object
   Use the color that can be set per object in the Viewport Display
   :ref:`properties-object-viewport-display` panel.

Material
   Use the color that can be set per material in the Viewport Display
   :ref:`properties-material-viewport-display` panel.

Random
   A random color will be selected for every object in the scene.

Vertex
   Draw the active **Vertex Colors** of an object. When an object has no active
   Vertex colors it will be rendered in the color that is set in the
   Viewport Display :ref:`properties-material-viewport-display` panel.

Texture
   Draw the active **Texture**. When an object has no active texture
   the object will be rendered with the settings in the Viewport Display
   :ref:`properties-material-viewport-display` panel.

   .. note::

        **Texture** is not available when :doc:`lighting` is set to `MatCap`.
