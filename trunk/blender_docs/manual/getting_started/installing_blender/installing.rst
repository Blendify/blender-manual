***************
Getting Blender
***************

Blender is available for download for Windows, Mac and Linux.
For BSD systems, Blender is also likely to work with instructions similar to Linux, but it is no longer officially
supported.


Minimum Requirements
====================

Check if your system meets the
`minimum and recommended requirements <http://www.blender.org/download/requirements/>`__.

Always check that the graphics drivers are up to date and that OpenGL is well supported.
Other Blender dependencies are already included in the binary and you do not need to worry
about those unless installing from source.

Support for other hardware such as 3D mice and graphic tablets is covered later in
:doc:`Supported Hardware </getting_started/installing_blender/hardware>`.


Download Blender
================


The Blender Foundation distributes Blender in 3 different ways that you can choose from to better suit your needs.

The options comprise binary packages for all the supported platforms and the source code. Within the binary packages,
you can choose from a stable release or a daily build. The first has the benefit of being more reliable, the later
provides the newest features, as they are developed. Blender is released approximately every 3 months.
You can keep up to date with the newest changes
through the `release notes <http://wiki.blender.org/index.php/Dev:Ref/Release_Notes/>`__.


`Latest Stable Release <http://www.blender.org/download/>`__
   This is a binary distribution of the latest version of Blender.
   It is considered stable and without regressions.


`Daily Builds <http://builder.blender.org/download>`__
   This is a binary distribution of Blender that is updated daily to include the newest changes in development.
   These versions are not as thoroughly tested as the stable version and might break, although they are official and
   generally not highly experimental (there are branches for that).


`Build from Source <https://developer.blender.org/diffusion/B/>`__
   Blender's source is available for reference and installation, with the following advantages:

   - is always up to date,
   - allows access to any version or branch where a feature is being developed,
   - can be freely customized.

   Building Blender from source is not trivial as there are many dependencies involved. There are
   `instructions <http://wiki.blender.org/index.php/Dev:Doc/Building_Blender>`__ available.


Install Blender
===============

The procedure for installing a binary, either the last stable release or a daily build, is the same.
Follow the steps for your operative system:

.. toctree::
   :maxdepth: 1

   windows.rst
   mac.rst
   linux.rst

For building from source,
follow the `wiki instructions <http://wiki.blender.org/index.php/Dev:Doc/Building_Blender>`__.
