
..    TODO/Review: {{review|partial=X|text=need to be updated to last change}} .


*******
Add-ons
*******

*Add-on* is the general term for any optional script that extends Blender's functionality.
They are found in the *Add-ons* tab of the *User Preferences* window.
This tab allows to install, enable and disable Add-ons.
Blender comes with some useful Add-ons already, but you can also add your own,
or any interesting ones you find on the web.
The `Scripts Catalog <http://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts>`__ provides
an index of Add-ons that are included with Blender as well as listing a number of external Add-ons.


.. figure:: /images/Userpref_addons_en_oct20_2013.jpg
   :width: 640px
   :figwidth: 640px


Installation of an Add-on
=========================

For a script to show up in the Add-ons tab it will first have to be installed. For this you
can use the *Install Add-on* button in the header of the Add-ons window.
Simply click the button and locate the script you wish to install. Once installed,
the script will show up in the panel.

Alternatively you can manually install an Add-on.
An Add-on is considered installed when it is located in the ``..
/scripts/addons`` folder (where .. is the path to your Blender configuration folder).
Simply moving the Add-on into that folder is enough.

Add-ons can be python scripts **.py** or **.zip** files (containing **.py** scripts).


File locations
==============

- Windows 7 - ``C:\Users\%username%\AppData\Roaming\Blender Foundation\Blender\2.6x\scripts\addons``


- Windows XP - ``C:\Documents and Settings\%username%\Application Data\Blender
  Foundation\Blender\2.6x\scripts\addons``


- Linux - ``/home/$user/.config/blender/$version/scripts/addons``

Note that the ``AppData`` folder in Windows 7 and the ``.
config`` folder in Linux is hidden. The location may also be different depending on your
choices for setting up your operating system and Blender.

You can also create a personnal folder containing new add-ons and configure your files path in
the *File* panel of the *User Preferences*.
To create a personnal script folder:

- Create an empty folder (i.e. 'script_addon_2-6x')
- Add one folder named 'addons'. It has to named like this for Blender to recognize it.
- Put your new add-ons in this 'addons' folder.
- open the *File* panel of the *User Preferences*.
- Fill the *Scripts* entry with the path to your script folder (i.e. 'script_addon_2-6x').

For information on the location of blender directories
see: :doc:`Configuration & Data Paths </getting_started/installing_blender/directorylayout>`


Enabling and Disabling
======================

.. figure:: /images/Manual-Extensions-Python-Addons-EnabledAddOn.jpg

   Enabling an Add-on


Once an Add-on has been installed, it has to be enabled before it can be used. Simply place a
check mark on the *Enable Add-on* box of the Add-on you wish to activate and you're
done. The extra functionality of the Add-on is now integrated into Blender and can be used.

To disable the functionality again, uncheck the box.
To get more information on a certain Add-on you can press the arrow at the left
of the entry and any additional information that is available will be shown.
If the Add-on does not activate when enabled,
check the :doc:`Console window </getting_started/basics/interface/window_system/console_window>`
for any errors that may have occurred when loading.


.. tip:: Saving Add-on Preferences

   If you want an Add-on to be enabled everytime you start Blender,
   you will need to save your :doc:`User Preferences </preferences>`.


Development guidelines
======================

If you are a script developer, you may be interested in the
`Add-ons development guidelines <http://wiki.blender.org/index.php/Dev:2.5/Py/Scripts/Guidelines/Addons>`__

