
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  Blender Reference Manual Contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Welcome to the Blender Manual!

This is the manual for the 3D animation software from `Blender.org <https://www.blender.org>`__.

.. only:: html

   .. |vertical_separator| unicode:: U+2004 U+02758 U+2004
      :trim:

   - Other languages:
     `En <https://www.blender.org/manual/>`__ |vertical_separator|
     `De <https://www.blender.org/manual/de/>`__ |vertical_separator|
     `Es <https://www.blender.org/manual/es/>`__ |vertical_separator|
     `Fr <https://www.blender.org/manual/fr/>`__ |vertical_separator|
     `Pt <https://www.blender.org/manual/pt/>`__ |vertical_separator|
     `Ru <https://www.blender.org/manual/ru/>`__ |vertical_separator|
     `Zh <https://www.blender.org/manual/zh.cn/>`__
   - This site can be downloaded for offline use:
     `Download the full manual (zipped HTML files) <blender_manual.zip>`__


Getting Started
===============

.. toctree::
   :maxdepth: 2

   getting_started/index.rst


Sections
========

.. image ratio: width: 350px; height: 350/4 + (2*5) ~= 98px

.. only:: html

   .. container:: tocdescr

      .. container:: descr

         .. figure:: /images/contents_interface.jpg
            :target: interface/index.html

         :doc:`/interface/index`
            An introduction to Blenders window system, widgets and tools.

      .. container:: descr

         .. figure:: /images/contents_editors.jpg
            :target: editors/index.html

         :doc:`/editors/index`
            Overview over the editor describing the interface and functionality of each one.

      .. container:: descr

         .. figure:: /images/contents_data.jpg
            :target: data_system/index.html

         :doc:`/data_system/index`
            Blenders data management of scene data and the structure of .blend files.
  
      .. container:: descr
  
         .. figure:: /images/contents_modeling.jpg
            :target: modeling/index.html

         :doc:`/modeling/index`
            The various supported geometry types and geometry modifiers.

      .. container:: descr

         .. figure:: /images/contents_painting.jpg
            :target: painting_sculpting/index.html

         :doc:`/painting_sculpting/index`
            The 3D texture painting and sculpting modes.

      .. container:: descr

         .. figure:: /images/contents_rigging.jpg
            :target: rigging/index.html

         :doc:`/rigging/index`
            The armature modifier, pose mode and constraints.

      .. container:: descr
  
         .. figure:: /images/contents_animation.jpg
            :target: animation/index.html

         :doc:`/animation/index`
            Keyframe animation, graph interpolation, drivers and shape keys.

      .. container:: descr

         .. figure:: /images/contents_physics.jpg
            :target: physics/index.html

         :doc:`/physics/index`
            Physics simulations, particle systems and dynamic paint.

      .. container:: descr

         .. figure:: /images/contents_render.jpg
            :target: render/index.html
  
         :doc:`/render/index`
            Render engines (Internal, Cycles, OpenGL), shading, postprocessing and Freestyle (NPR).

      .. container:: descr
  
         .. figure:: /images/contents_compositing.jpg
            :target: compositing/index.html

         :doc:`/compositing/index`
            Postprocessing with the Compositor.

      .. container:: descr

         .. figure:: /images/contents_game.jpg
            :target: game_engine/index.html
  
         :doc:`/game_engine/index`
            Game scripting, physics and optimization.

      .. container:: descr
  
         .. figure:: /images/contents_preferences.jpg
            :target: preferences/index.html

         :doc:`/preferences/index`
            Blender settings.

      .. container:: descr

         .. figure:: /images/contents_advanced.jpg
            :target: advanced/index.html

         :doc:`/advanced/index`
            Python scripting, how to write add-ons and a reference for command line arguments.

      .. container:: descr

         .. figure:: /images/contents_troubleshooting.jpg
            :target: troubleshooting/index.html

         :doc:`/troubleshooting/index`
            Compatibility errors related to other software (graphics drivers, Python), how to write a bug report and recover data.
   
      .. container:: descr

         :doc:`Glossary </glossary/index>`
            A lists of terms and definitions used in Blender and this manual.

      .. container:: descr

         :ref:`Manual Index <genindex>`
            A lists of terms linked to the Glossary.


.. only:: latex and epub

   .. toctree::
      :maxdepth: 1
   
      interface/index.rst
      editors/index.rst
      data_system/index.rst
      modeling/index.rst
      painting_sculpting/index.rst
      rigging/index.rst
      animation/index.rst
      physics/index.rst
      render/index.rst
      compositing/index.rst
      game_engine/index.rst
      preferences/index.rst
      advanced/index.rst
      troubleshooting/index.rst
      glossary/index.rst


Get Involved
============

This manual is maintained largely by volunteers.

Please consider to join the effort and :doc:`Contribute to this Manual </about/introduction>`

.. just so this is included in the toc (not user visible).

.. toctree::
   :hidden:

   interface/index.rst
   editors/index.rst
   data_system/index.rst
   modeling/index.rst
   painting_sculpting/index.rst
   rigging/index.rst
   animation/index.rst
   physics/index.rst
   render/index.rst
   compositing/index.rst
   game_engine/index.rst
   preferences/index.rst
   advanced/index.rst
   troubleshooting/index.rst
   glossary/index.rst
   about/index.rst
