
*******************
Installing on Linux
*******************

Check the :doc:`minimum requirements and where to get Blender </getting_started/installing_blender/installing>`,
if you haven't done so yet.


Specific packages for distributions
===================================

Some Linux distributions may have on their repositories a specific package for Blender.

Installing Blender via the distribution's native mechanisms ensures consistency with other packages on the system
and may provide other features (given by the package manager), such as listing of packages, update notifications and
automatic menu configuration.
Be aware, though, that the package may be outdated comparing to the latest official release, or not include some
features of Blender. For example, some distributions do not build Blender with CUDA support for licensing reasons.

If there is a specific package for your distribution, you may choose what is preferable and most convenient,
otherwise there is nothing wrong with the official binary on `blender.org <http://www.blender.org/download/>`__.


Download from blender.org
=========================

Download the Linux version for your architecture and uncompress the file to the desired location (eg. ~/software or
/usr/local).

Blender can now be launched by double-clicking the executable.


For easy access, you can configure your system by adding a menu entry or shortcut for Blender and associate and open
``.blend`` files with Blender when opening from the file browser.
These settings typically belong to the Window Manager (KDE, Gnome, Unity).


Running from the terminal
=========================

To run Blender from the terminal without needing to be in the executable directory, add the extracted folder to the
environment PATH.

Add the following command to .bash_rc or .bash_profile with Blender's binary:

.. code:: bash

   export PATH=$/path/to/blender-VERSION-linux-glibcVERSION-ARCH:$PATH


.. tip::

   If you use daily builds and update Blender frequently,
   you can link or always rename your folder to 'blender' and use this name for the ``PATH``
   environment variable and for keeping the window manager menu up to date.


Avoiding Alt+Mouse Conflict
===========================

Many Window Managers default to :kbd:`Alt-LMB` for moving windows,
which is a shortcut that Blender uses to simulate a
3 button mouse.
You can either have this feature disabled :menuselection:`User Preferences --> Input --> Emulate 3 Button Mouse`
or you can change the Window Manager settings to use the Meta key instead (also called Super or Windows key):

- **KDE:** System Settings > Window Behavior > Window Behavior > Window Actions , Switch 'Alt' for 'Meta' key
- **Unity/Gnome:** enter the following in a command line (effective at next login):

.. code:: bash

   gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'
