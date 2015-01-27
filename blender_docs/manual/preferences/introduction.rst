
************
Introduction
************


This chapter explains how to change Blender's default configuration with the *User Preferences* editor.

The Blender *User Preferences* editor contains many of the settings that you can
change to control the way Blender behaves each time you open the application.


Open User Preferences
=====================

.. |user-preferences-icon| image:: /images/User-preferences-icon.jpg

To open a Blender *User Preferences* editor
go to :menuselection:`File --> User Preferences` or press :kbd:`Ctrl-Alt-U`.
Mac users can press :kbd:`Cmd-,`.
You can also load the Preferences editor in any window by selecting (|user-preferences-icon|)
*User Preferences* from the :doc:`Window type selection menu </editors/index>`.


.. figure:: /images/User-preferences.jpg
   :width: 650px


Configure
=========

Now that you have opened the User Preferences editor, you can configure Blender to your liking.
At the top of the window, the available options are grouped into seven tabs:

:doc:`Interface </preferences/interface>`
   Change how UI elements are displayed and how they react.
:doc:`Editing </preferences/editing>`
   Control how several tools will interact with your input.
:doc:`Input </preferences/input>`
   Customize how Blender reacts to the mouse and keyboard as well as define your own keymap.
:doc:`Add-ons </preferences/add_ons>`
   Manage secondary options which are not enabled in Blender by default as well as install new features.
:doc:`Themes </preferences/themes>`
   Customize interface appearance and colors.
:doc:`File </preferences/file>`
   Configure auto-save preferences and set default file paths for .blend files, rendered images, and more.
:doc:`System </preferences/system>`
   Set resolution, scripting console preferences, sound, graphics cards, and internationalization.


Save the new preferences
========================

Once you have set your preferences, you will need to manually save them,
otherwise the new configuration will be lost after a restart.
Blender saves its preferences to *userpref.blend* in your user folder
(see next section, “Load Factory Settings”, for details).

In the *User Preferences* window, click on the *Save User Settings* button in the bottom left.
This will save all of the new preferences.


Load Factory Settings
=====================

There are two ways to restore the default Blender settings:


- Go to :menuselection:`File --> Load Factory Settings` and then save the preferences
  with :kbd:`Ctrl-U` or via the *User Preferences* editor.
- Delete the ``startup.blend`` file from the following location on your computer:

  Linux
     .. parsed-literal:: /home/$user/.config/.blender/|BLENDER_VERSION|/startup.blend

  Windows
     .. parsed-literal:: C:/Users/$user/AppData/Roaming/Blender Foundation/Blender/|BLENDER_VERSION|/config/startup.blend

  OSX
     .. parsed-literal:: /Users/$user/Library/Application Support/Blender/|BLENDER_VERSION|/config/startup.blend


.. note::

   You may need to have the “show hidden files” option checked in your file browser settings.


While you're in the Blender config folder,
it can be valuable to copy your Blender settings file to another folder.
In the event that you lose your configuration,
you can restore your Blender settings file with your backup copy.

