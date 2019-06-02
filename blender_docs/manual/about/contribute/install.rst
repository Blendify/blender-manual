.. highlight:: sh

*******
Install
*******

This section documents how to install the software used to generate the manual.
This guide covers the following topics:

#. `Installing Dependencies`_
#. `Downloading the Repository`_
#. `Setting up the Build Environment`_

.. note::

   This guide relies heavily on command-line tools.
   It assumes you are the least familiar with your terminal application.


Installing Dependencies
=======================

.. tabs::

   .. group-tab:: Windows

      .. rubric:: Install Python

      #. Download the `Python installation package <https://www.python.org/downloads/>`__ for MS-Windows.
      #. Install Python with the installation wizard.
         Please make sure that you enable the "Add Python to PATH" option:

         .. figure:: /images/about_contribute_install_windows_installer.png

            The option must be enabled so you can build the manual with the make script.

         All other settings can remain as set by default.

      .. rubric:: Install Subversion

      In this guide, we will use TortoiseSVN though any Subversion client will do.

      #. Download `TortoiseSVN <https://tortoisesvn.net/downloads.html>`__ for MS-Windows.
      #. Install TortoiseSVN with the installation wizard. When choosing which features will be installed,
         make sure to enable *command line client tools* to give you access to SVN from the command line.

   .. group-tab:: macOS

      Install those packages or make sure you have them in your system.

      - `Python <https://www.python.org/>`__
      - `PIP <https://pip.pypa.io/en/latest/installing/>`__
      - `Subversion <https://subversion.apache.org/>`__

   .. group-tab:: Linux

      Below are listed the installation commands for popular Linux distributions.

      For the appropriate system, run the command in a terminal:

      .. tabs::

         .. tab:: Debian/Ubuntu

            .. code-block:: sh

               sudo apt-get install python3 python3-pip subversion

         .. tab:: Redhat/Fedora

            .. code-block:: sh

               sudo yum install python python-pip

         .. tab:: Arch Linux

            .. code-block:: sh

               sudo pacman -S python python-pip subversion


Downloading the Repository
==========================

Simply check out the Blender Manual's repository using the following in your terminal::

      svn checkout https://svn.blender.org/svnroot/bf-manual/trunk/blender_docs

The repository will now be downloaded which may take a few minutes depending on your internet connection.


Setting up the Build Environment
================================

.. tabs::
   .. group-tab:: Windows

      - Open a Command Prompt.
      - Enter the ``blender_docs`` folder which was just added by the SVN checkout::

           cd C:\blender_docs

      - Inside that folder is a file called ``requirements.txt`` which contains a list of all the dependencies we need.
        Install all the dependencies using Python's ``pip`` command::

           pip install -r requirements.txt

      .. note::

         Every now and then you may want to make sure your dependencies are up to date using::

            pip install -r requirements.txt --upgrade

   .. group-tab:: osMac

      - Open a Terminal window.
      - Enter the ``blender_docs`` folder which was just added by the SVN checkout::

           cd ~/blender_docs

      - Inside that folder is a file called ``requirements.txt`` which contains a list of all the dependencies we need.
        To install these dependencies, we can use the ``pip`` command::

           sudo pip install -r requirements.txt

      .. note::

         Every now and then you may want to make sure your dependencies are up to date using::

            sudo pip install -r requirements.txt --upgrade

   .. group-tab:: Linux

      - Open a Terminal window.
      - Enter the ``blender_docs`` folder which was just added by the SVN checkout::

           cd ~/blender_docs

      - Inside that folder is a file called ``requirements.txt`` which contains a list of all the dependencies we need.
        To install these dependencies, we can use the ``pip3`` command::

           sudo pip3 install -r requirements.txt

      .. note::

         Every now and then you may want to make sure your dependencies are up to date using::

            sudo pip3 install -r requirements.txt --upgrade
