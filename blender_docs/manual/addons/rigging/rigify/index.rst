
******
Rigify
******

Introduction
============

Rigify helps automate the creation of character rigs. It is based around a building-block approach,
where you build complete rigs out of smaller rig parts (e.g. arms, legs, spines, fingers...).
The rig parts are currently few in number, but as more rig parts are added to
Rigify it should become more and more capable of rigging a large variety of characters and creatures.

Rigify also operates on the principle that once a rig is created, that rig should no longer need Rigify.
This means you can always distribute rigs created with Rigify to people
who do not have it and the rigs will still function completely.

It is important to note that Rigify only automates the creation of the rig controls and bones.
It does not attach the rig to a mesh, so you still have to do skinning etc. yourself.


Basics
======

.. toctree::
   :maxdepth: 2

   basics.rst
   bone_positioning.rst
   rig_features.rst


Customization
=============

.. toctree::
   :maxdepth: 1

   metarigs.rst
   rig_types/index.rst


Development
===========

   Developer documentation is available on the `Blender Wiki <https://wiki.blender.org/wiki/Process/Addons/Rigify>`__.


.. admonition:: Reference
   :class: refbox

   :Category:  Rigging
   :Description: Automatic rigging from building-block components.
   :Location: :menuselection:`Properties --> Armature, Bone`, :menuselection:`3D View --> Tools panel`,
              :menuselection:`3D View --> Add menu --> Armature`
   :File: rigify folder
   :Author: Nathan Vegdahl, Lucio Rossi, Ivan Cappiello, Alexander Gavrilov
   :License: GPL
   :Note: This add-on is bundled with Blender.
