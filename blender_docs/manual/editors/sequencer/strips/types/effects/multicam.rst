
*****************
Multicam Selector
*****************

The Multicam Selector strip is used for multi camera editing.
Multicam editing is for when you have multiple cameras recording the same scene from different angles.
To edit these in the :abbr:`VSE (Video Sequence Editor)` can be easy if you do it right.

#. First your going to want to add in each of your video strips.
#. Next make sure to sync them to each other using there audio waveform see the
   :doc:`Audio Docs </editors/sequencer/strips/types/audio>` or by the movement of objects.
#. If you are using any effects on you strips it may helpful to use
   :doc:`Meta Strips </editors/sequencer/strips/meta>`.
#. Add a viewer region for every input channel and put it into 25% proxy display mode.
#. Add a multicam selector effect strip *above* all the channel tracks.

   After completing these steps you should get something similar to the image below:

   .. figure:: /images/editors_sequencer_stips_mulitcam.png

      Multi camera editing setup.


#. Now select the multicam strip, if you take a look at the strip options (Properties region),
   you will notice, that multicam is a rather simple effect strip:
   It just takes a selected channel as its input. That is all.
   The magic comes with the convenient keyboard layout.
#. When you select the multicam strip, the keys 1-9 are mapped to a Python handler,
   that does a cut on the multicam and changes its input.
#. So: you select the multicam strip,
   you start playback and press the keys for the correct input while watching your show.
#. You will end up with a small multicam selector strip for every cut.

In reality, it boils down to: watch a few seconds to see, what is coming,
watch it again and do a rough cut using the number keys,
do some fine tuning by selecting the outer handles of two neighboring multicam for A/B rolling.
