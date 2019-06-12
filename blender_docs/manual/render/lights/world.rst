*****
World
*****

.. figure:: /images/render_cycles_world_environment-lighting.jpg
   :align: right

   Lighting with an HDR image.

The world buttons let you set up the shading of your scene in general.
It can provide ambient color, and special effects such as mist,
but a very common use of a *World* is to shade a background color.
These are accessible via the *World* tab.
The world environment can emit light, ranging from a single solid color,
physical sky model, to arbitrary textures.

World
   The World :ref:`ui-data-block`.


Surface
=======

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`World --> Surface`

The surface shader defines the light emission from the environment into the scene.
The world surface is rendered as if it is very distant from the scene,
and as such there is no two-way interacting between objects in the scene and the environment,
only light coming in. The only shader accepted is the Background node with a color input and
strength factor for the intensity of the light.


Image Based Lighting
--------------------

For image based lighting,
use the Environment Texture node rather than the Image Texture node for correct mapping.
This supports *Equirectangular* (also known as Lat/Long) for environment maps,
and *Mirror Ball* mapping for converting photos of mirror balls to environment maps.


Volume
======

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`World --> Volume`

A volume shader can be applied to the entirely world, filling the entire space.

Currently this is most useful for night time or other dark scenes,
as the world surface shader or sun lights will have no effect if a volume shader is used.
This is because the world background is assumed to be infinitely far away,
which is accurate enough for the sun for example.
However, for modeling effects such as fog or atmospheric scattering,
it is not a good assumption that the volume fills the entire space,
as most of the distance between the sun and the earth is empty space.
For such effects it is be better to create a volume object surrounding the scene.
The size of this object will determine how much light is scattered or absorbed.
