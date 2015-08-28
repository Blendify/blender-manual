
**********************************************************
Installation Guide for Editing the Blender Manual on Linux
**********************************************************

This guide covers the following topics:

#. `Installing Dependencies`_
#. `Downloading the Repository`_
#. `Setting up the Build Environment`_
#. `Building the HTML Files`_


Installing Dependencies
=======================

Below are listed the installation commands for popular Linux distributions.

For the appropriate system, run the command in a terminal:

Debian/Ubuntu
   .. code-block:: sh

      sudo apt-get install python python-pip subversion

Redhat/Fedora
   .. code-block:: sh

      sudo yum install python python-pip
Arch Linux
   .. code-block:: sh

      sudo pacman -S python python-pip subversion


Downloading the Repository
==========================


Simply checkout the blender-manual repository using:

   .. code-block:: sh

      cd ~
      svn checkout https://svn.blender.org/svnroot/bf-manual/trunk/blender_docs

   The repository will now be downloaded which may take a few minutes depending on your internet connection.


Setting up the Build Environment
================================

In a terminal, enter the ``blender_docs`` folder which was just added by the SVN checkout:

.. code-block:: sh

   cd ~/blender_docs

Inside that folder is a file called ``requirements.txt`` which contains a list of all the dependencies we need.
To install these dependencies, we can use the ``pip`` command:

.. code-block:: sh

   sudo pip install -r requirements.txt


Building the HTML Files
=======================

We are now ready to convert all those **rst** files into pretty **html**!

Open a terminal to the folder ``~/blender_docs`` and simply run:

.. code-block:: sh

   make

This is the command you will always use when building the docs.
The building process may take several minutes the first time (or after any major changes),
but the next time you build it should only take a few seconds.

Once the docs have been built, all the html files can be found inside ``~/blender_docs/build/html``.
Try opening ``build/html/contents.html`` in your web browser and read the manual.

.. code-block:: sh

   xdg-open build/html/contents.html

Now that you are able to build the manual,
please visit the :doc:`writing </about/writing_style_guide>` and :doc:`markup </about/markup_style_guide>`
style guides for standard conventions, or the :doc:`contribution </about/contribute>`
page to see how you can help write this manual.


Building a Single Chapter
-------------------------

If you are working on a specific chapter of the manual, you can build it quickly using:

.. code-block:: sh

   make <chapter name>

For example, to build only the documentation for the modifiers, use ``make modifiers``.
You can then view this quick build by opening ``build/html/contents_quicky.html``.

This will build very quickly, but it will mean your next complete build of all the chapters will be slow.
