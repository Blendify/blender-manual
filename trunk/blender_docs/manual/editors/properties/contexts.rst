
********
Contexts
********

The *Properties (or Buttons) Window* shows several *Contexts*,
which can be chosen via the icon row in the header (see *Context button example*).


.. figure:: /images/Interface-Contexts-HeaderButtons-25.jpg
   :align: center

   Context button example


The number and type of buttons changes with the selected Context so that only useful buttons
show up. The order of these buttons follows a hierarchy which is detailed below:

.. |Btn_Render-25| image:: /images/Interface-Contexts-Btn_Render-25.jpg
.. |Btn_Scene-25| image:: /images/Interface-Contexts-Btn_Scene-25.jpg
.. |Btn_World-25| image:: /images/Interface-Contexts-Btn_World-25.jpg
.. |Btn_Object-25| image:: /images/Interface-Contexts-Btn_Object-25.jpg
.. |Btn_Constraints-25| image:: /images/Interface-Contexts-Btn_Constraints-25.jpg
.. |Btn_Modifiers-25| image:: /images/Interface-Contexts-Btn_Modifiers-25.jpg
.. |Btn_ObjectData-25| image:: /images/Interface-Contexts-Btn_ObjectData-25.jpg
.. |Btn_Material-25| image:: /images/Interface-Contexts-Btn_Material-25.jpg
.. |Btn_Texture-25| image:: /images/Interface-Contexts-Btn_Texture-25.jpg
.. |Btn_Particles-25| image:: /images/Interface-Contexts-BtnParticles-25.jpg
.. |Btn_Physics-25| image:: /images/Interface-Contexts-Btn_Physics-25.jpg

- |Btn_Render-25| :doc:`Render </render/index>`:
  Everything related to render output (dimensions, anti-aliasing, performance etc).
- |Btn_Scene-25| :doc:`Scene </getting_started/basics/interface/scenes>`:
  Gravity in the scene, units and other general information.
- |Btn_World-25| :doc:`World </render/blender_render/world/index>`:
  Environmental lighting, sky, mist and Ambient Occlusion.
- |Btn_Object-25| :doc:`Object </modeling/objects/introduction>`:
  Transformations, display options, visibility settings (via layers)
  duplication settings and animation information (regarding Object position).
- |Btn_Constraints-25| :doc:`Constraints </rigging/constraints/index>`:
  Used to control an Object's transform (position, rotation, scale), tracking and relationship properties.
- |Btn_Modifiers-25| :doc:`Modifiers </modifiers/index>`:
  Operations that can non-destructively affect Objects by changing how they are rendered and
  displayed without altering their geometry (e.g. mirror and smoothing).
- |Btn_ObjectData-25| *Object Data*:
  Contains all Object specific data (color of a lamp, focal length of a camera, vertex groups etc).
  The icon differs with the type of Object (the one shown here is for a mesh object).
- |Btn_Material-25| :doc:`Materials </render/blender_render/materials/index>`:
  Information about a surface (color, specularity, transparency, etc).
- |Btn_Texture-25| :doc:`Textures </render/blender_render/textures/index>`:
  Used by materials to provide additional details (e.g. color, transparency, fake 3-dimensional depth).
- |Btn_Particles-25| :doc:`Particles </physics/particles/index>`:
  Add variable amounts of (usually small) objects such as lights or mesh Objects
  that can be manipulated by Force Fields and other settings.
- |Btn_Physics-25| :doc:`Physics </physics/index>`:
  Properties relating to Cloth, Force Fields, Collision, Fluid and Smoke Simulation.

The :doc:`Buttons </getting_started/basics/interface/buttons_and_controls>`
in each context are grouped into :doc:`Panels </getting_started/basics/interface/panels>`.

