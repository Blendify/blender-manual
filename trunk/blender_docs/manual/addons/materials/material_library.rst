
****************
Material Library
****************

Introduction
============

Materials Library VX is a Blender add-on that will create a material library.
You can save, load and categorize materials that can be shared across all your projects.
This version uses a blend-file as database so all external render engines,
all node materials and textures are supported. It also makes use of Blender compression.

Please see `author's site <https://sites.google.com/site/aleonserra/home/scripts/matlib-vx-5-6>`__
for the older original docs.


Activation
==========

- Open Blender and go to Preferences then the Add-ons tab.
- Click Material then Material Library VX to enable the script.

Addons Preferences
   Once the addon is enabled you can open the preferences and choose to set a path to use your own materials in the library.

   
Interface
=========

Located in the :menuselection:`Properties editor --> Material Properties --> Material Library VX`.

.. figure:: /images/addons_materials_matlibvx_ui.jpg
   :align: right
   :width: 330px


Instructions
============

- It's advisable to set your materials to Fake User
- Save your .blend file before use.


New Library
  Create a new Library and name it. The new library will have 1 material to start.

Add To Library
  Add your materials to the library.

Apply To Selected
  Select a material in the list and apply it to the active object.

Reload Material
  Restore the saved version of the material if you mess it up during editing.

Preview Material
  Display the material in the materials *Preview* panel bewfore adding to the object.

Remove Preview
  Restore the *Preview* panel.

Remove Material
  Delete the active material from the matlib vx list and your library.

Settings
  Extend the interface for some extra options.

Search
  Search the library for a material.

Category
  Here you can make sub categories.

#. Apply the current filter.
#. Apply the current selected category to the current material library.
#. Add a new category.
#. Remove the current selected category from the list.


.. admonition:: Reference
   :class: refbox

   :Category:  Material
   :Description: Materials Library VX system for library creation.
   :Location: :menuselection:`Properties --> Material`
   :File: materials_library_vx folder
   :Author: Mackraken
   :Maintainer: meta-androcto
   :License: GPL
   :Support Level: Community
   :Note: This add-on is bundled with Blender.

