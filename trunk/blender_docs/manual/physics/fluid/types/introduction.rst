
************
Introduction
************

.. _fluid-initialization:

Volume Initialization Type
==========================

A common option amoung the different fluid types is *Volume Initialization*.

    Volume
       The inside of the object is initialized as fluid all . This works only if the closed mesh .
    Shell
       It is initialized as a thin fluid layer of the surface of the mesh . This can also be used in the mesh open.
    Both
       It is a state , such as the sum of the Volume and Shell. This also must be a closed mesh.

.. figure:: /images/physics_fluid_initialization.jpg

   Example of different types of initiation of volume
