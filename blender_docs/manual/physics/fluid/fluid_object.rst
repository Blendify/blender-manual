
************
Fluid Object
************

.. figure:: /images/fluids_fluid.jpg
   :width: 300px

   Fluid object settings


All regions of this object that are inside the domain bounding box will be used as actual
fluid in the simulation. If you place more than one fluid object inside the domain,
they should currently not intersect. Also make sure the surface normals are pointing outwards.
In contrast to domain objects, the actual mesh geometry is used for fluid objects.

Volume initialization type

    Volume
       The inside of the object is initialized as fluid all . This works only if the closed mesh .
    Shell
       It is initialized as a thin fluid layer of the surface of the mesh . This can also be used in the mesh open.
    Both
       It is a state , such as the sum of the Volume and Shell. This also must be a closed mesh.

.. figure:: /images/physics_fluid_initialization.jpg

   Example of different types of initiation of volume

Animated Mesh/Export
   Click this button if the network is animated (eg . Deformed by an armature ,
   shape keys (shape keys) or lattice).
   It can become very slow and is not necessary if the network is animated IPO position and rotation
   (ie only object transformations).

Initial velocity
   Speed of the fluid at the beginning of the simulation, in meters per second.


.. tip:: The direction of Surface Normals makes a big difference!

   Blender uses the orientation of the Surface Normals to determine what is "inside of" the Fluid object and what is
   "outside". You want all of the normals to face *outside* (in *Edit mode*, use :kbd:`Ctrl-N` or press
   :kbd:`Spacebar` and choose *Edit*?? *Normals*?? *Calculate Outside*).
   If the normals face the wrong way, you'll be rewarded with a "gigantic flood of water" because Blender will think
   that the volume of the object is outside of its mesh! This applies regardless of the *Volume init* type
   setting.


