
************
Introduction
************

Blender comes equipped with five different lamp types,
each with its own unique strengths and limitations. Here are the available lamps:

- :doc:`Point </render/blender_render/lighting/lamps/point/introduction>`
  is an omni-directional point light source, similar to a light bulb.
- :doc:`Spot </render/blender_render/lighting/lamps/spot/introduction>`
  is a directional point light source, similar to ... a spot.
- :doc:`Area </render/blender_render/lighting/lamps/area/introduction>`
  is a source simulating an area which is producing light,
  as windows, neons, TV screens.
- :doc:`Hemi </render/blender_render/lighting/lamps/hemi>`
  simulates a very wide and far away light source, like the sky.
- :doc:`Sun </render/blender_render/lighting/lamps/sun/introduction>`
  simulates a very far away and punctual light source, like the sun.


.. figure:: /images/Lighting-Lamps-Visual.jpg
   :width: 300px

   Visual height and shadow markers of two points lamps. Ray Shadow is enabled on the left lamp.


You can add new lamps to a scene using the *Add* menu in the top header, or with
(:menuselection:`[Shift][A] --> Add --> Lamp`).

Once added, a lamp's position is indicated in the 3D View by a solid dot in a circle, but most
types also feature dashed wire-frames that help describe their orientation and properties.
While each type is represented differently,
there are some visual indicators common to all of them:

Shadows
   If shadows are enabled, an additional dashed circle is drawn around the solid circle.
   This makes it easier to quickly determine if a lamp has shadows enabled.
Vertical Height Marker
   This is a dim gray line, which helps locate the lamp's position relative to the global X-Y plane.


