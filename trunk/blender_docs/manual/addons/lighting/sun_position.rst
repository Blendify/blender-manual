
************
Sun Position
************

Introduction
============

Sun Position allows positioning and animating the Sun to a certain degree of accuracy, to simulate real-world natural lighting. It uses physical caracteristics to position the Sun in the scene: geographic location, time and date. It is based on the Earth System Research Laboratory’s `online calculator <https://www.esrl.noaa.gov/gmd/grad/solcalc>`__.

Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Lighting then Sun Position to enable the script.

Interface
=========

Located in the :menuselection:`Properties Editor --> World --> Sun Position panel`.

Usage
=====

This add-on has two distinct modes of operation: the `Normal Mode`_ allows you to animate the Sun realistically, while the `Sun + HDRI Texture Mode`_ is useful for synchronizing a Sun Light to an HDRI texture.

The usage mode can be selected from the top of the Sun Position panel.

Normal Mode
-----------

This is the mode by default. After selecting the time and place, you can set up a Sun light, a Sky Texture, and a collection to serve as visualization.

Use object
^^^^^^^^^^

Select the Sun object which will be placed according to the chosen time and place. Its position will be updated every time you change the location or time, and you can thus create animations by setting keyframes on them.

Use collection
^^^^^^^^^^^^^^

Select a collection of objects to be placed around the scene for visualization. Two options are available: `analemma`_ and `diurnal`_.

.. note::

   It is recommended to create a collection in the scene, and to move the objects into this collection. If you wish to create several visualizations, create as many collections as needed, select them in turn and choose the right settings. Once deselected, a collection will stay in place.

Analemma
""""""""

The `analemma <https://en.wikipedia.org/wiki/Analemma>`__ is a visualizaton of the position of the Sun in the sky around the year for a given time of the day. In other words, it is like a timelapse picture of the sky over a year, with the Sun appearing multiple times at the same time of the day.

.. figure:: /images/addons_lighting_sun_position_bell_lab.jpg

   The analemma was used here to match `this picture <https://commons.wikimedia.org/wiki/File:Analemma_fishburn.tif>`__.

Diurnal
"""""""

This option allows you to visualize the trajectory of the Sun in the sky during a single day.

Sky texture
^^^^^^^^^^^^^^^^^^

Select a Sky Texture node in the World shading node tree. It will be set up to match the Sun animation. This is useful if you want to have a simple sky texture matching a Sun light’s position.

Location
^^^^^^^^

In order for the Sun to be placed correctly, you need to choose a place on Earth where the scene is located. This place is represented by two coordinates, *Longitude* (East / West) and *Latitude* (North / South). They are expressed in degrees, from -180° to +180° for the longitude, and from -90° to 90° for the latitude. The coordinates match those found on such databases as OpenStreetMap or Google Maps. You may enter and animate them manually, or paste them in.

Entering coordinates
""""""""""""""""""""

In the *Location* panel, enter *Latitude* and *Longitude* coordinates corresponding to the location you wish to simulate. A simpler way is to go to an online map such as OpenStreetMap, copy the coordinates from there, and paste them into the *Enter Coordinates* field. They will be parsed automatically.

Another source is Wikipedia. Suppose I want to render the `Barcelona Pavilion <https://en.wikipedia.org/wiki/Barcelona_Pavilion>`__ by Mies van der Rohe. I can copy the coordinates from the article and paste them into Blender.

.. list-table::
   Using coordinates from Wikipedia

   * - .. figure:: /images/addons_lighting_sun_position_barcelona_wiki.jpg

          Copy the coordinates from Wikipedia…

     - .. figure:: /images/addons_lighting_sun_position_barcelona_coor.png

          … and paste them into Blender to have them parsed

North offset
""""""""""""

By default, the North points to the Y axis in the scene (to the top of the screen in top view). But sometimes, you may have modelled it in another orientation. In that case, you may enter a *North Offset*, to change the orientation of the scene. *Show North* toggles a dashed line pointing to the North in the 3D View, to help you visualize the cardinal directions.

Setting the time
^^^^^^^^^^^^^^^^

After selecting the location on Earth, select or animate the date and time. This is fairly straightforward, but care must be taken to match the `Time zone <https://en.wikipedia.org/wiki/Time_zone>`__ and *Daylight savings* to the moment you wish to simulate. Time entered is the local time, but the global, UTC time may be displayed below as well.

.. note::

   Time is stored in decimal format instead of hour:minute:second. To match a time in that format, look at the label *Local*.

Sun + HDRI Texture Mode
-----------------------

Instead of simulating the position of the Sun for a real location and time, this mode simply locks an environment texture with a Sun light object. It is useful if you want to increase the constrast in a texture, by using an additional sun.

Synchronizing the Sun object to the HDRI texture
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Start by selecting the Sun object and Environment Texture node. You can then synchronize them by clicking *Sync Sun to Texture*. Hovering any 3D view will display the environment texture. Use the :kbd:`MMB` to pan, scroll wheel to zoom, and :kbd:`CTRL + MMB` to set the exposure. Zoom and click the center of the Sun in the texture. After that, the Sun object will be locked to it.

You can now rotate both the texture and the light by using the *Rotation* slider.

.. figure:: /images/addons_lighting_sun_position_env_selection.jpg

   Click the Sun in the Environment Texture in the 3D View to lock it to the Sun light object.

Preferences
===========

The user preferences for the add-on make some features optional, so you can hide those you don’t use.

.. admonition:: Reference
   :class: refbox

   :Category:  Lighting
   :Description: Show Sun position with objects and/or sky texture
   :Location: :menuselection:`Properties Editor --> World --> Sun Position panel`
   :File: sun_position folder
   :Author: Michael Martin (xaire)
   :Maintainer: Damien Picard (pioverfour)
   :License: GPL
   :Support Level: Community
   :Note: This add-on is bundled with Blender.
