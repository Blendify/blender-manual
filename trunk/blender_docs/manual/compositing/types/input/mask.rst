
****
Mask
****

.. figure:: /images/compositing_nodes_mask.png
   :align: right
   :width: 150px

   Mask Node.

The Mask input node can be used to select a :doc:`Mask Datablock </editors/movie_clip_editor/masking>`.
This node can be used with other nodes, for example to Invert, Multiply or Mix, or use as a factor input.


Options
=======

Anti-Alias
    Create smooth mask edges rather than hard ones. 
Feather
    Use or ignore feather points defined for splines. 
Size
    Scene Size will give an image the size of the render resolution for the scene,
    scaling along when rendering with different resolutions. Fixed gives a fixed size in pixels. Fixed/
    Scene gives a size in pixels that still scales along when changing the render resolution percentage in the scene. 
Motion Blur
    For animated masks, creating a motion blurred mask from the surrounding frames,
    with a given number of samples (higher gives better quality), and a camera shutter time in seconds. 

Outputs
=======

Mask
   The black and white output of the mask.
