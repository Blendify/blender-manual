***********************
Troubleshooting Crashes
***********************

The most common causes of Blender crashes.

- Running out of memory.
- Issues with graphics hardware/drivers.
- Bugs in Blender.


Firstly, you may be able to recover your work with :menuselection:`File --> Recover Last Session`.

To prevent the problem from happening again, you can check that the graphics drivers are up to date, upgrade your
machine's hardware (the RAM or graphics card), and disable some options that are more memory intensive:

- Disable *Region Overlap* and *Triple buffering* at
  :menuselection:`User Preferences --> System --> Window Draw Method`.
- Using multisample, anti-aliasing also increase the memory usage and make display slower.
- On Linux, the Window Manager (KDE, Gnome, Unity) may be using hardware accelerated effects
  (eg. window shadows and transparency) that are using up the memory that Blender needs.
  Try disabling the desktop effects or switch to a light-weight Window Manager.
