
************
Introduction
************

This chapter explains how to change Blender's default configuration with the *User Preferences* editor.

The Blender *User Preferences* editor contains settings to to control how Blender behaves.


Open User Preferences
=====================

To open the *User Preferences* editor and go to :menuselection:`File --> User Preferences`.

.. figure:: /images/user_prefs-interface_tab.png
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
:doc:`Add-ons </preferences/addons>`
   Manage Blender's *Add-ons*, allowing you to access features
   not built-in as well as install new features.
:doc:`Themes </preferences/themes>`
   Customize interface appearance and colors.
:doc:`File </preferences/file>`
   Configure auto-save preferences and set default file paths for blend-files, rendered images, and more.
:doc:`System </preferences/system>`
   Set resolution, scripting console preferences, sound, graphics cards, and internationalization.


Save the new preferences
========================

Once you have set your preferences, you will need to manually save them,
otherwise the new configuration will be lost after a restart.
Blender saves its preferences to *userpref.blend* in your user folder
(see next section, "Load Factory Settings", for details).

In the *User Preferences* window, click on the *Save User Settings* button in the bottom left.
This will save all of the new preferences.


.. _factory-settings:

Load Factory Settings
=====================

Go to :menuselection:`File --> Load Factory Settings`
then save the preferences via the *User Preferences* editor.

.. hint::

   It can be valuable to make a backup of your preferences the event that you lose your configuration.

   See the :doc:`directory layout </getting_started/installing/configuration/directories>`
   section to see where your preferences are stored.


.. _startup-file:

Startup File
============

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`File --> Save Startup File`
   | Hotkey:   :kbd:`Ctrl-U`


When you start Blender or start a new project with the menu entry :menuselection:`File --> New`,
a new scene is created from the default scene included with Blender.

This default scene can instead be your own customized setup.

To change the default scene, make all of the desired changes to the current scene or current
file and :menuselection:`File --> Save Startup File`.
