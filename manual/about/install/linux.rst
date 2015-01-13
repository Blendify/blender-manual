
**********************************************************
Installation Guide for Editing the Blender Manual on Linux
**********************************************************

This guide covers the following topics:

#. `Installing Python`_ (used to "convert" the source files to HTML)
#. `Installing SVN and Downloading the Repository`_
#. `Setting up the Build Environment`_
#. `Building the HTML Files`_
#. `Building a Single Chapter`_


Installing Python
=================

You probably already have Python, but just in case you can enter the following command into a terminal to double check:

.. code-block:: sh

   sudo apt-get install python

Both Python 2.7 and 3.4 will work.


Installing SVN and Downloading the Repository
=============================================

#. To install :abbr:`SVN (Subversion)`, open a terminal and enter:

   .. code-block:: sh

      sudo apt-get install subversion

#. Create a new folder that will contain everything related to the Blender Manual
   (in this guide we'll use ``~/blender_docs``), as well as a sub-folder ``svn`` and change to it:

   .. code-block:: sh

      mkdir -p ~/blender_docs/svn
      cd ~/blender_docs/svn

#. Now simply checkout the blender-manual repository using:

   .. code-block:: sh

      svn checkout https://svn.blender.org/svnroot/bf-manual/trunk/

   The repository will now be downloaded which may take a few minutes depending on your internet connection.


Setting up the Build Environment
================================

In a terminal, enter the ``trunk`` folder which was just added by the SVN checkout:

.. code-block:: sh

   cd ~/blender_docs/svn/trunk

Inside that folder is a file called ``requirements.txt`` which contains a list of all the dependencies we need.
To install these dependencies, we can use the ``pip`` command:

.. code-block:: sh

   sudo pip install -r requirements.txt

.. note::

   If you do not have pip installed, you can get it by running: ::

      sudo apt-get install python-pip


Building the HTML Files
=======================

We are now ready to convert all those **rst** files into pretty **html**!

Open a terminal to the folder ``~/blender_docs/svn/trunk`` and simply run:
  
.. code-block:: sh
  
   make

This is the command you will always use when building the docs.
The building process may take several minutes the first time (or after any major changes),
but the next time you build it should only take a few seconds.

Once the docs have been built, all the html files can be found inside ``~/blender_docs/svn/trunk/build/html``.
Try opening ``build/html/contents.html`` in your web browser and read the manual.

Now that you are able to build the manual,
please visit `blender.org/documentation <http://blender.org/documentation>`__
for more information such as the style guide and how to submit patches and gain commit access.


Building a Single Chapter
=========================

If you are working on a specific chapter of the manual, you can build it quickly using:

.. code-block:: sh

   make <chapter name>

For example, to build only the documentation for the modifiers, use ``make modifiers``.
You can then view this quick build by opening ``html/contents_quicky.html``.

This will build very quickly, but it will mean your next complete build of all the chapters will be slow.
