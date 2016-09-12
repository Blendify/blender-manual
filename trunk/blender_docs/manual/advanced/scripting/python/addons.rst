
*******
Add-ons
*******

*Add-on* is the general term for a script that extends Blender's functionality.
They are found in the *Add-ons* tab of the :doc:`User Preferences </preferences/addons>`.
This tab allows to search, install, enable and disable Add-ons.


Searching
=========

Blender comes with some useful Add-ons already, ready to be enabled. But you can also add your own,
or any interesting ones you find on the web.

.. figure:: /images/user_prefs-addons_tab.png

   Add-ons tab in the User Preferences.

.. TODO - add here explanation on official/contrib/ testing and on search and filter usability with Shift+click

The `Scripts Catalog <https://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts>`__ provides
an index of Add-ons that are included with Blender as well as listing a number of external Add-ons.


Enabling and Disabling
======================

Enable and disable an add-on by checking or unchecking the box on the right of the add-on you chose,
as shown in the figure.

.. figure:: /images/extensions-python-addons-enabledaddon.png

   Enabling an Add-on.

The add-on functionality should be immediately available.
If the Add-on does not activate when enabled,
check the :doc:`Console window </advanced/command_line/introduction>`
for any errors, that may have occurred.

You can click the arrow at the left of the add-on box to see more information, such as
its location, a description and a link to the documentation.
Here you can also find a button to report a bug specific of this add-on.

.. tip:: Saving Add-on Preferences

   If you want an Add-on to be enabled every time you start Blender,
   you will need to *Save User Settings*.


Installation of a 3rd party Add-on
==================================

For add-ons that you found on the web or your own to show on the list, you have to install them first
by clicking *Install from File...* and providing a ``.zip`` or ``.py`` file.

Now the add-on will be installed, not automatically enabled.
The search field will be set to the add-ons name (to avoid having to look for it).
Enable the add-on by turning on the check-box.

.. tip::

   You can manually install an add-on, which is useful when developing your own add-ons.

   For information on the location of Blender's add-on directories on each platform,
   see: :doc:`Configuration & Data Paths </getting_started/installing/configuration/directories>`


User Defined Add-on Path
========================

You can also create a personal directory containing new add-ons and configure your files path in
the *File* tab of the *User Preferences*.
To create a personal script directory:

- Create an empty directory in a location of your choice (i.e. ``my_scripts``).
- Add a subdirectory under ``my_scripts`` called ``addons``
  (it *must* have this name for Blender to recognize it).
- Open the *File* tab of the *User Preferences*.
- Set the *Scripts* in the User Preferences to point to your script directory (i.e. ``my_scripts``).
- Save the User Preferences and restart Blender for it to recognize the new add-ons location.

.. tip::

   Now when you install add-ons you can select the *Target Path* option to *User Pref*
   (from the File Browser options panel).

   Blender will copy newly installed add-ons under the directory selected in your User Preferences.


Development Guidelines
======================

If you are a script developer, you may be interested in the
`Add-ons development guidelines <https://wiki.blender.org/index.php/Dev:Py/Scripts/Guidelines/Addons>`__.
