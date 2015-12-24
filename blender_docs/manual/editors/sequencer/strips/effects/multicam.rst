*****************
Multicam Selector
*****************

The Multicam Selector stip is used for multi camera editing.
Multicam editing is for when you have multiple cameras recording the same scene from different angles.
To edit these in the :abbr:`VSE (Video Sequence Editor)` can be easy if you do it right.

- First your going to want to add in each of your video strips.
- Next make sure to sync them to each other using there audio waveform see the 
  :doc:`Audio Docs </editors/sequencer/strips/audio>` or by the movement of objects.
- If you are using any effects on you strips it may helpful to use
  `Meta Strips <http://www.blender.org/manual/editors/sequencer/usage.html#meta-strips>`_
- Add a viewer window for every input channel and put it into 25% proxy display mode
- Add a multicam selector effect strip *above* all the channel tracks

After Completing these steps you should get something similar to the image below:

.. figure:: /images/editors_vse_mulitcam.png


- Now select the multicam strip, if you take a look at the strip options (N-key), you will notice,
  that multicam is a rather simple effect strip: it just takes a selected channel as it's input.
  That's all. The magic comes with the convenient keyboard layout.
- When you select the multicam strip, the keys 1-9 are mapped to a python handler,
  that does a cut on the multicam and changes it's input.
- So: you select the multicam strip,
  you start playback and press the keys for the correct input while watching your show.
- You'll end up with a small multicam selector strip for every cut.

In reality, it boils down to: watch a few seconds to see, what's coming,
watch it again and do a rough cut using the number keys,
do some fine tuning by selecting the outer handles of two neighboring multicam for A/B rolling.
