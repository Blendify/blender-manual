
*****
Audio
*****

.. _render-output-audio-settings:

Audio Settings
==============

Audio settings can be found in the :menuselection:`Properties Editor --> Scene tab --> Audio`.

Volume
   Volume for the scene.

Update Animation Cache
   Updates the audio animation cache. This is useful if you start noticing artifact in the audio.

Distance Model
   TODO.

Speed
   Speed of the sound for the Doppler effect calculations.
Doppler
   Pitch factor for Doppler effect calculation.


Audio Rendering
===============

Audio can be rendered from the :menuselection:`Properties Editor --> Render tab --> Render --> Audio`


Options
-------

Relative Path
   Select the file relative to the blend-file.

Accuracy
   Sample accuracy, important for animation data (the lower the value, the more accurate).

Audio Containers
   See :doc:`here </data_system/files/media/video_formats>`.

Codec
   Some *Audio Containers* also have option to choose a codec.
   For more information see :doc:`here </data_system/files/media/video_formats>`.

Split Channels
   Each audio channel will be rendered into a separate file.
