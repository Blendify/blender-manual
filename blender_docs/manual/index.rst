
%%%%%%%%%%%%%%%%%%%%%%%%%%%
  Blender Reference Manual
%%%%%%%%%%%%%%%%%%%%%%%%%%%

Welcome to the Blender Manual!

This is the manual for the 3D animation software from `Blender.org <https://www.blender.org>`__.

.. use /dev only for now

.. only:: builder_html

   .. |vertical_separator| unicode:: U+02758

   - Other languages:
     `En <https://docs.blender.org/manual/en/dev/>`__ |vertical_separator|
     `De <https://docs.blender.org/manual/de/dev/>`__ |vertical_separator|
     `Es <https://docs.blender.org/manual/es/dev/>`__ |vertical_separator|
     `Fr <https://docs.blender.org/manual/fr/dev/>`__ |vertical_separator|
     `Ko <https://docs.blender.org/manual/ko/dev/>`__ |vertical_separator|
     `Pt <https://docs.blender.org/manual/pt/dev/>`__ |vertical_separator|
     `Ru <https://docs.blender.org/manual/ru/dev/>`__ |vertical_separator|
     `Zh <https://docs.blender.org/manual/zh.cn/dev/>`__
   - This site can be downloaded for offline use:
     :download:`Download the full manual (zipped HTML files) <blender_manual.zip>`
   - :doc:`/about/whats_new`


Getting Started
===============

- :doc:`/getting_started/about/index`
- :doc:`/getting_started/installing/index`
- :doc:`/getting_started/help`


Sections
========

.. The image ratio is: width: 350px; height: 350/4 + (2x5) ~= 98px

.. only:: builder_html and (not singlehtml)

   .. container:: tocdescr

      .. container:: descr

         .. figure:: /images/contents_interface.jpg
            :target: interface/index.html

         :doc:`/interface/index`
            An introduction to Blender's window system, widgets and tools.

      .. container:: descr

         .. figure:: /images/contents_editors.jpg
            :target: editors/index.html

         :doc:`/editors/index`
            Overview of the editors describing the interface and functionality of each one.

      .. container:: descr

         .. figure:: /images/contents_data.jpg
            :target: data_system/index.html

         :doc:`/data_system/index`
            Blender's data management of scene data and the structure of blend-files.

      .. container:: descr

         .. figure:: /images/contents_modeling.jpg
            :target: modeling/index.html

         :doc:`/modeling/index`
            The various supported geometry types, modeling tools, and modifiers.

      .. container:: descr

         .. figure:: /images/contents_painting.jpg
            :target: sculpt_paint/index.html

         :doc:`/sculpt_paint/index`
            The 3D texture painting and sculpting modes.

      .. container:: descr

         .. figure:: /images/contents_rigging.jpg
            :target: rigging/index.html

         :doc:`/rigging/index`
            Overview of armatures, pose mode and constraints.

      .. container:: descr

         .. figure:: /images/contents_animation.jpg
            :target: animation/index.html

         :doc:`/animation/index`
            Keyframe animation, graph interpolation, drivers, and shape keys.

      .. container:: descr

         .. figure:: /images/contents_physics.jpg
            :target: physics/index.html

         :doc:`/physics/index`
            Physics simulations, particle systems and dynamic paint.

      .. container:: descr

         .. figure:: /images/contents_render.jpg
            :target: render/index.html

         :doc:`/render/index`
            Render engines (Internal, Cycles), shading, post-processing, and Freestyle (NPR). [1]_

      .. container:: descr

         .. figure:: /images/contents_compositing.jpg
            :target: compositing/index.html

         :doc:`/compositing/index`
            Post-processing with the Compositor.

      .. container:: descr

         .. figure:: /images/contents_game.jpg
            :target: game_engine/index.html

         :doc:`/game_engine/index`
            Blender's Game engine, including scripting, logic and physics.

      .. container:: descr

         .. figure:: /images/contents_preferences.jpg
            :target: preferences/index.html

         :doc:`/preferences/index`
            Blender's settings.

      .. container:: descr

         .. figure:: /images/contents_advanced.jpg
            :target: advanced/index.html

         :doc:`/advanced/index`
            Python scripting, how to write add-ons and a reference for command line arguments.

      .. container:: descr

         .. figure:: /images/contents_troubleshooting.jpg
            :target: troubleshooting/index.html

         :doc:`/troubleshooting/index`
            Compatibility errors related to other software (graphics drivers, Python),
            how to write a bug report and recover data.

      .. container:: descr

         :doc:`Glossary </glossary/index>`
            A list of terms and definitions used in Blender and this manual.

      .. container:: descr

         :ref:`Manual Index <genindex>`
            A list of terms linked to the Glossary.


.. only:: latex or epub or singlehtml

   .. toctree::
      :maxdepth: 1

      getting_started/index.rst
      interface/index.rst
      editors/index.rst
      data_system/index.rst
      modeling/index.rst
      sculpt_paint/index.rst
      rigging/index.rst
      animation/index.rst
      physics/index.rst
      render/index.rst
      compositing/index.rst
      game_engine/index.rst
      preferences/index.rst
      advanced/index.rst
      pipeline/index.rst
      troubleshooting/index.rst
      glossary/index.rst


Get Involved
============

This manual is maintained largely by volunteers.

Please consider to join the effort and :ref:`Contribute to this Manual <about-user-contribute>`.

.. [1] The White Room model by Jay Hardy.

.. just so this is included in the toc (not user visible).

.. toctree::
   :hidden:

   about/index.rst
