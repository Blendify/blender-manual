
*************
Sound Editing
*************
As well as images and movies the VSE can also edit audio tracks. You can add WAV,
Mp3 and other audio formates files from your hard disk as a file, or as encoded within a movie,
and mix them using an F-Curve as a volume control.


.. figure:: /images/SoundEdit.jpg

   A sound strip in the sequence editor.


Options
=======
Pack
   This allows you to save the audio file into the .blend file.
Caching
   Caching loads a file into ram and plays it from there, apposed to reading it for the hard drive.

.. note:: Hiss, Crackle and Pop

   Some audiophile users report that Hiss is introduced sometimes if Audio RAM is used.
   There must be some decoding or sampling going on, that does not occur when Audio HD is used,
   that introduces some playback noise. If you hear pops and crackles,
   usually that is a sign that your hardware cannot keep up in real-time playback.
   They will not be present in your final rendered animation output (but they may show up in Game mode).

   Also,
   static hiss seems to occur whenever two or more audio strips are overlapping in the timeline...


Draw Waveform
   Draws a waveform over top of the sequence strip. This can be useful for syncing two or more audio strips.

Volume
   Changes the loudness of the audio.
Pitch
   Changes the frequency of the audio.
Pan
   Used to pan the audio from left an right channels -2 being hard left, 2 being hard right.


Working with Audio Tracks
=========================

An audio track (strip) is just like any other strip in the VSE. You can grab and move it,
adjust its starting offset using :kbd:`RMB` over the arrow end handles,
and :kbd:`K` cut it into pieces.
A useful example is cutting out the "um's" and dead voice time.

You can have as many Audio strips as you wish and the result will be the mixing of all of
them. You can give each strip its own name and volume via the :kbd:`N` menu.

Overlapping strips are automatically mixed down during ANIM processing. For example,
you can have the announcer on channel 5, background music on channel 6,
and Foley sound effects on channel 7.


Animating Audio Track Properties
================================

To animate audio strips simply hit :kbd:`I` over any of its values. Examples of animating 
an audio strip are to fade in/out background music or to adjust volume levels.
Layered/crossed audio strips are added together;
the lower channel does not override and cut out higher channels (unlike image and video strips).
This makes Blender an audio mixer.
By adding audio tracks and using the curves to adjust each tracks' sound level,
you have an automated dynamic multi-track audio mixer!


Output
======

There are two ways to render out your audio. You can either have it encoded with a video file
or in its own audio file. To render your audio in an video file make sure to use a video format
as the output with an audio codec and hit the render *ANIMATION* button in the properties editor.
Read more on how to do this :doc:`here </render/output/video>`. To render as a audio file simple
use the *AUDIO* button. Read more on how to do this :doc:`here </render/output/video>`.
