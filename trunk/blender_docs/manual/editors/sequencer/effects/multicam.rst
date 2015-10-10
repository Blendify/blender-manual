*****************
Multicam Selector
*****************

Ever wanted to do multicam editing with Blender? Now you can and it is mindbogglingly easy:


- Add your input strips on channels say 1 to 4
  (you can use as many you like, interface get's a little bit clumky if you have more than 10, see below).
- Sync the strips up. There is no automatic sync feature in Blender, but you can open two viewer windows,
  choose one camera as the master channel and sync the other against them just by looking at the movement
  of legs or light flashes (depending of the show, you want to edit).
  We might add automatic sync feature based on global brightness of the video frames in the future.
  (Syncing based on the audio tracks, like most commercial applications do, isn't very clever,
  since the speed of sound is only around 340 metres per second and if you have one of you camera 30 meters away,
  which isn't uncommon, you are already 2-3 frames off. Which *is* noticeable...)
- Build small resolution proxies (25%) on all your input video strips.
- Use meta strips, so that every input camera fits in exactly one channel.
- Add a viewer window for every input channel and put it into 25% proxy display mode
  (I suggest to line them up on the left side on top of each other,
  but just do, whatever pleases your personal habits)
- Add a large viewer window for the final output and let it run on full resolution.
- Add a multicam selector effect strip *above* all the channel tracks
- Enlarge it, so that it covers the whole running time of your show
  (just change it's length or drag the right handle,
  the former is probably easier, since you can just type in a very large number and you are done)
- Cross you fingers :) (that's important :) )
- Select the multicam strip, if you take a look at the strip options (N-key), you will notice,
  that multicam is a rather simple effect strip: it just takes a selected channel as it's input.
  That's all. The magic comes with the convenient keyboard layout: when you select multicam,
  the keys 1-0 are mapped to a python handler, that does a cut on the multicam and changes it's input.
- So: you select the multicam strip, you start playback and press the keys 1-4 while watching your show.
- You'll end up with a small multicam selector strip for every cut.

In reality, it boils down to: watch a few seconds to see, what's coming,
watch it again and do a rough cut using the number keys,
do some fine tuning by selecting the outer handles of two neighboring multicam for A/B rolling.
