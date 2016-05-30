
***************************************************************
Installation Guide for Editing the Blender Manual on MS-Windows
***************************************************************

This guide covers the following topics:

#. `Installing Python`_ (used to "convert" the source files to HTML)
#. `Installing SVN and Downloading the Repository`_
#. `Setting up the Build Environment`_
#. `Building the HTML Files`_


Installing Python
=================

#. Download the Python installation package for MS-Windows from here: https://www.python.org/downloads/

      (In this guide version 3.5.x is used).

#. Install Python with the installation wizard.

      (In this guide the default settings are used).


Installing SVN and Downloading the Repository
=============================================

In this guide, we will use TortoiseSVN though any Subversion client will do.

#. Download TortoiseSVN for MS-Windows from `here <https://tortoisesvn.net/downloads.html>`__
#. Install TortoiseSVN with the installation wizard. When choosing which features will be installed,
   it is recommended that you enable *command line client tools* to give you access to SVN from the command line
   (there is no harm in doing this, and it may be helpful if you ever run into any trouble).
#. Once the installation has finished, create a new folder that will contain everything related to the Blender Manual.
   In this guide, we will use ``C:\blender_docs``.
#. Open the new folder, right click and choose *SVN Checkout...* from the context menu.
#. In the *URL of repository* field, enter: ``https://svn.blender.org/svnroot/bf-manual/trunk/blender_docs``.
#. In the *Checkout directory* field, enter: ``C:\blender_docs``.
#. Click *OK* - the repository will now be downloaded
   which may take a few minutes depending on your internet connection.


Setting up the Build Environment
================================

- Open a command prompt and change to the repository folder using

   .. code-block:: sh

      cd C:\blender_docs

- Install the all the dependencies using Python's ``pip`` command

   .. code-block:: sh

      pip install -r requirements.txt

- If all goes well, you should see the following message when it is finished

   .. code-block:: sh

      Successfully installed Jinja2 MarkupSafe Pygments Sphinx docutils sphinx-rtd-theme Cleaning up...

During the setup, some warnings may be shown, but do not worry about them.
However if any errors occur, they may cause some problems.

.. note::

   Every now and then you may want to make sure your dependencies are up to date using:

   .. code-block:: sh

      pip install -r requirements.txt  --upgrade


Building the HTML Files
=======================

We are now ready to convert all those **rst** files into pretty **html**!

- Open a command prompt and change to the repository with ``cd C:\blender_docs``.
- Build using the following command

   .. code-block:: sh

      make

  This is the command you will always use when building the docs.
  The building process may take several minutes the first time (or after any major changes),
  but the next time you build it should only take a few seconds.

  .. note::

     If you encounter an error ending with ``TypeError: an integer is required (got type str)``,
     you may need to install an older version of *Babel* (the Python Internationalization Library).

     To do this, simply run:

     .. code-block:: sh

        pip install sphinx "babel<2.0"

- Once the docs have been built, all the HTML files can be found inside ``C:\blender_docs\build\html``.
  Try opening ``\build\html\contents.html`` in your web browser and read the manual.

Now that you are able to build the manual, please visit the :doc:`writing </about/style_guides/writing_guide>`
and :doc:`markup </about/style_guides/markup_guide>` style guides for standard conventions,
or the :doc:`contribution </about/contribute>` page to see how you can help write this manual.
