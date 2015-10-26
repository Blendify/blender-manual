
***************
Remesh Modifier
***************

The Remesh modifier is a tool for generating new mesh topology.
The output follows the surface curvature of the input, but its topology contains only quads.


.. figure:: /images/Remesh-modifier-screenshot-00.jpg
   :width: 600px

Options
=======

Mode
   There are three basic modes available in the remesh modifier: Blocks, Smooth and Sharp.


   .. figure:: /images/Remesh-mode-cone-example.jpg
      :width: 600px

      This example shows a cone with each of the different remesh modes.
      From left to right: original cone, Blocks, Smooth, and Sharp


   The output topology is almost identical between the three modes;
   what changes is the smoothing.

   Blocks
      There is no smoothing at all.
   Smooth
      Output a smooth surface.
   Sharp
      Similar to *Smooth*, but preserves sharp edges and corners.
      In the above image, the circular bottom of the cone and the top
      point of the cone are more accurately reproduced in Sharp mode.


.. figure:: /images/Remesh-depth-cone-example.jpg
   :width: 600px

   Input mesh, and the low to high resolution output meshes


Octree Depth
   The Octree Depth sets the resolution of the output. Low values will generate larger faces relative to the input,
   higher values will generate a denser output.
Scale
   The result can be tweaked further by setting the Scale;
   lower values effectively decrease the output resolution.

Sharpness
   Shown when using the *Sharp Mode* - Higher values produce edges more similar to the input,
   while lower values filter out noise.

Smooth Shading
   Output faces with smooth shading rather than flat shading.
   The smooth/flat shading of the input faces is not preserved.
Remove Disconnected Pieces
   Filter out small disconnected pieces of the output.

   Threshold
      Use this to control how small a disconnected component must be to be removed.


   .. figure:: /images/Remesh-remove-disconnected-example.jpg
      :width: 600px

      The input mesh (left) is fairly noisy,
      so the initial output of the remesh modifier (center) contains small disconnected pieces.
      Enabling Remove Disconnected Pieces (right) deletes those faces.


Usage
=====

In the modifier panel, add a Remesh modifier.
The input mesh should have some thickness to it; if the input is completely flat,
add a :doc:`solidify </modeling/modifiers/generate/solidify>` modifier above the remesh modifier.


Examples
========

.. figure:: /images/Remesh-text-00.jpg
   :width: 640px

   Remesh modifier applied to text to improve topology


.. youtube:: Mh-gUnS2c0Y
   :width: 640
   :height: 360

.. youtube:: dker8gRuww4
   :width: 640
   :height: 360

.. vimeo:: 21096739
   :width: 640
   :height: 360