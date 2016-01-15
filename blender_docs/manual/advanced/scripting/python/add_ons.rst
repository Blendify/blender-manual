.. TODO There is more addon related text in extensions/introduction.rst that should be merged in when this section is
..      restructured

*******
Add-ons
*******

*Add-on* is the general term for a script that extends Blender's functionality.
They are found in the *Add-ons* tab of the *User Preferences* window.
This tab allows to search, install, enable and disable Add-ons.


Searching
=========

Blender comes with some useful Add-ons already, ready to be enabled, but you can also add your own,
or any interesting ones you find on the web.

.. figure:: /images/preferences_system_ui.png

   Add-ons tab in the User Preferences

.. TODO - add here explanation on official/contrib/ testing and on search and filter usability with Shift+click

The `Scripts Catalog <http://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts>`__ provides
an index of Add-ons that are included with Blender as well as listing a number of external Add-ons.


Enabling and Disabling
======================

Enable and disable and add-on by checking or unchecking the box on the right of the add-on you chose,
as shown on the figure.

.. figure:: /images/Extensions-Python-Addons-EnabledAddOn.jpg

   Enabling an Add-on

The add-on functionality should be immediately available.
If the Add-on does not activate when enabled,
check the :doc:`Console window </interface/window_system/console_window>`
for any errors that may have occurred.


You can click the arrow at the left of the add-on box to see more information, such as
where it is located, a description and a link to the documentation.
Here you can also find a button to report a bug specific of this add-on.


.. tip:: Saving Add-on Preferences

   If you want an Add-on to be enabled every time you start Blender, you will need to *Save User Settings*.


Installation of a 3rd party Add-on
==================================

For add-ons that you found on the web or your own to show on the list, you have to install them first
by clicking *Install from File...* and providing a .zip or .py file.

Alternatively you can manually install an Add-on, which is useful when developing your own add-ons.
Move or link the files to ``../scripts/addons`` folder (where .. is the path to your Blender configuration folder).


File locations
==============

For information on the location of blender directories
see: :doc:`Configuration & Data Paths </getting_started/installing_blender/directorylayout>`

You can also create a personal folder containing new add-ons and configure your files' path in
the *File* panel of the *User Preferences*.
To create a personal script folder:

- Create an empty folder (i.e. 'script_addon_2-7x')
- Add one folder named 'addons'. It has to named like this for Blender to recognize it.
- Put your new add-ons in this 'addons' folder.
- open the *File* panel of the *User Preferences*.
- Fill the *Scripts* entry with the path to your script folder (i.e. 'script_addon_2-7x').


Development guidelines
======================

If you are a script developer, you may be interested in the
`Add-ons development guidelines <http://wiki.blender.org/index.php/Dev:2.5/Py/Scripts/Guidelines/Addons>`__

