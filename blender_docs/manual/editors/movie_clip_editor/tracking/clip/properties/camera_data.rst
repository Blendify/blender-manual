
***********
Camera Data
***********

This panel contains all settings of the camera used for filming the movie which is currently
being edited in the clip editor.

Camera
======

Camera Presets
   Predefined settings can be used here.
   But such settings as distortion coefficients and principal point are not included in the presets and
   should be filled in even if camera presets are used.
Sensor
   Width
      Is the width of the CCD sensor in the camera. This value can be found in camera specifications.
   Pixel Aspect Ratio
      Is the pixel aspect of the CCD sensor. This value can be found in camera specifications,
      but can also be guessed. For example, you know that the footage should be 1920×1080,
      but the images themselves are 1280×1080. In this case, the pixel aspect is: 1920 / 1280 = 1.5.
Optical Center
   Is the optical center of the lens used in the camera. In most cases it is equal to the image center,
   but it can be different in some special cases. Check camera/lens specifications in such cases.
   To set the optical center to the center of image, there is a :kbd:`Return` button below the sliders.


Lens
====

Focal Length
   Is self-explanatory; it is the focal length with which the movie was shot.
   It can be set in millimeters or pixels. In most cases focal length is given in millimeters,
   but sometimes (for example in some tutorials on the Internet) it is given in pixels.
   In such cases it is possible to set it directly in the known unit.
Lens Distortion
   Are coefficients used to compensate for lens distortion when the movie was shot. Currently these values can be
   tweaked by hand only (there are no calibration tools yet)
   using tools available in Distortion mode. Basically, just
   tweak K1 until solving is most accurate for the known focal length (but also take grid and grease pencil into
   account to prevent "impossible" distortion).
   
   K1, K2 and K3
