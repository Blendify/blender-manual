##########
  Install
##########

*******************
Building the Manual
*******************

The manual is built using Sphinx, see: http://sphinx-doc.org

The manual can be built directly with Sphinx or with the provided Makefile.


Makefile
========

We provide a Makefile tested on Linux and OSX, so you can simply type and run ``make`` to build documents.
To avoid having to build the entire manual, we have support for making single chapters:
eg: ``make render`` or ``make modeling``, see ``make help`` for a full list of options.

This will generate documents in ``./html``

.. note::

   When building single chapters, links to other chapters will report as missing,
   these can be safely ignored.


Sphinx-Build
============

You may want to run sphinx-build directly,
(currently only supported method on MS-Windows):

.. code-block:: sh

   sphinx-build -b html ./manual ./html


*******************
Viewing the changes
*******************

Visualize the changes by opening the generated documents in ``./html`` with a web browser.
The file 'contents_quicky.html' is the landing page for a partial generation and 'contents.html' for a complete one.

.. note::

   You will notice that your local files do not look exactly the same as the ones online, as the theme is different.
   You can change this by enabling a python virtual environment to install the sphinx theme dependencies as instructed
   in the `Getting Started section <http://www.blender.org/documentation/contribute>`__, step 2.
   This is totally optional and only a matter of visualization.
