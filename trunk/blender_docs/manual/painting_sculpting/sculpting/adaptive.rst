
******************
Adaptive Sculpting
******************

Dynamic Topology
================

Dynamic topology (AKA dyntopo) is a dynamic tessellation sculpting method, adds and 
removes details on the fly. Dyntopo is quick, just get a brush and start to sculpt.
Dyntopo will add details base upon your brush size, detail type and strength.

Detail Type
   Dyntopo uses three different detail methods to create dynamic detail to an object. The
   methods available are Relative Detail (Default), Constant Detail, and Brush Detail.

   Relative Detail
       This method uses a detail size based on the number of pixels, and in turn
       will create topology in that size. Zoom out big details, zoom in small fines details.

   Constant Detail
       To keep detail uniform across the entire object, Constant Detail can be used.
       The Detail is based on the percentage of a single BU (Blender Unit).

   Brush Detail
       Giving more control over the topology, with this method you can create topology
       based on the brush size. You can increase and lower topology by simply resizing
       the brush itself. The detail size is based the size of the brush itself, where
       100% will create topology the size of the brush ring itself.

Detail Size
    Each Detail Type's detail is set here. Depending on the Detail Type being used
    this property will rather show as a pixel count (px), or percentage.

Detail Refine Method
    When using Dynamic Topology, a certain method will be used to tell how topology
    is handled. Setting the option will determine which of the methods will be used when
    altering the topology.

    Subdivide
        Just like the subdivide command, this method will only subdivide topology
        to match the detail given.

    Collapse
        When topology is too dense, and is smaller than the detail given, edges will
        be collapse to fit the detail size appropriately.

    Subdivide Collapse
        This method combines the two methods, subdividing edges smaller than the
        detail size, and collapsing topology.

    Detail Flood Fill
        When using Constant Detail mode, this option is made available, allowing
        you to fill the entire object with a uniform detail, based on the detail size.

Direction
     Determines which direction the model will be symmetrized.
		
Dyntopo Symmetrize
         Uses direction orientation to symmetrize. Since Dyntopo adds details dynamical
         may happen that the model goes asymmetric, so this a good tool for that. 


Multi-Resolution Modifier
=========================

The multires modifier is needed to sculpt. The modifier will subdivide the mesh. 
The more subdivision the more computing will be needed. With the Blender stack 
no-destructive data, multires sculpting will help when you have a clean topology base mesh.

When sculpting with multires we have the ability sculpt in different level of subdivision, 
this mean we can sculpt some details in subdivision level 1 and add more details in 
subdivision 2 and go back to subdivision 1 correct some mistakes. While this workflow is
often used, multires modifier has some limitations. You may end up with some mesh distortions.
As an advice, add as more details as possible before adding more subdivisions. 
Clay brush, SculptDraw work better with multires sculpting to sculpt secondary forms.

.. seealso::

   Read more about the :doc:`Multi Resolution Modifier </modeling/modifiers/generate/multiresolution>`.
