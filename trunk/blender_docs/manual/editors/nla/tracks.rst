
******
Tracks
******

Tracks are the layering system of the NLA. At its most basic level,
it can help organize strips. But it also layers motion much like an image editor layers pixels --
the bottom layer first, to the top, last.

.. figure:: /images/editors_nla_tracks.png

   NLA Tracks and Strips.

Solo (Star icon)
   Toggling *Solo Track* causes only the selected tracks effects to be visible when animating.
Mute (Speaker icon)
   Keeps the track from having an effect on the animation. (Mute only applies when *Solo* is not used).
   All strips in that track drawing as being muted (dashed outline).
Lock (Lock icon)
   Prevents changes from being made to this layer.


Action Track
============

By default, the Action Editor automatically stores the keyframes you create through the 3D View by storing them into an action based on the name as the object you are working on.

.. (alt) icon: downwards chevron

Push Down (double down arrow peak icon)
   Turns the active action into a new NLA strip at the top of the NLA stack.

   .. figure:: /images/editors_nla_push-down-button.png

   Push Down action button.

Pin (Pin icon)
   If you try moving the strip, while in *Tweak Mode*,
   you will notice that the keys will go along with it. On occasion,
   you will prefer the keys to remain on their original frames, regardless of where the strip is.
   To do so, hit the *unpin* icon, next to the strip.

   .. figure:: /images/editors_nla_pinned_01.png

      NLA strip with pinned keys.

   .. figure:: /images/editors_nla_pin_02.png

      Strip moved, notice the keys move with it.

   .. figure:: /images/editors_nla_pin_03.png

      The unpinned keys return to their original frames.

.. (todo) add track


.. (todo) Action Stashing http://aligorith.blogspot.com/2015/03/action-management-roadmap-2015-version.html

Action Stashing
===============

When creating a new action, if the existing action only has a single user (i.e. the current reference only),
it will get "stashed" in the NLA stack. Action Stashing should prevent most cases actions getting lost.

The action "stashing" method works by storing otherwise unused/dormant actions in the NLA stack
as strips in special muted NLA Tracks. This way, Blender can "know" that the action is related
to a particular data-block (i.e. to a specific object, or to a specific material/lamp/etc.) and
that you still want to keep it for later use.


Deleting & Converting
---------------------

If you decide that you no longer want a stashed action anymore, simply delete the corresponding NLA strip,
then save and reload the file.

Also, note that since these are NLA strips, you can reuse these as normal NLA strips simply by un-muting
(and renaming) the NLA track they live in. You may also want to move it above all the other stashed-action tracks.
