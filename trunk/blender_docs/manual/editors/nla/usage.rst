..    TODO/Review: {{review|text=Needs clarification & updates.
      |fixes=[[User:Rking/Doc:2.6/Manual/Animation/Editors/NLA|X]]}}.

*****
Usage
*****

Tracks
======

Tracks are the layering system of the NLA. At its most basic level,
it can help organize strips. But it also layers motion much like an image editor layers pixels --
the bottom layer first, to the top, last.

.. figure:: /images/editors_nla_tracks.png

   NLA Tracks and Strips.

Solo (Star icon)
   Toggling *Solo Track* causes only the selected tracks effects to be visible when animating.
Mute (Speaker icon)
   Keeps the track from having an effect on the animation.
Lock (Lock icon)
   Prevents changes from being made to this layer.


Action Track
------------

Push Down (double down arrow peak icon)
   Turns the action into a new action strip.

   .. figure:: /images/editors_nla_push-down-button.png

   Push Down action button.

Pin (Pin icon)
   If you try moving the strip, while in *Tweak Mode*,
   you will notice that the keys will go along with it. On occasion,
   you will prefer the keys to remain on their original frames, regardless of where the strip is.
   To do so, hit the *unpin* icon, next to the strip.

   .. figure:: /images/editors_nla_pinned_01.png

      Nla strip with pinned keys.

   .. figure:: /images/editors_nla_pin_02.png

      Strip moved, notice the keys move with it.

   .. figure:: /images/editors_nla_pin_03.png

      The unpinned keys return to their original frames.

.. add track


Strips
======

There are four kinds of strips: Action, Transition, Sound clip and Meta.


Action Strips
-------------

An Action Strip is a container of keyframe data of an action.
Any action used by the NLA first must be turned into an Action strip.
This is done so by clicking the Push Down action button see above.
Alternatively, you can go to :menuselection:`Add --> Action`.


Transition Strips
-----------------

Transitions interpolate between Actions. They must be placed in between other strips.
Select two or more strips on the same track,
and go to: :menuselection:`Add --> Transition`.

.. figure:: /images/editors_nla-basics_transition.png

   Transition Strip.


Sound Clip Strips
-----------------

Controls when a speaker plays a sound clip.
:menuselection:`Add --> Sound Clip`.


Meta Strips
-----------

Meta strips group strips together as a whole, so you can move them as one. 
If you find yourself moving a lot of strips together, you can group them into a Meta strip.
A meta strip can be moved and duplicated like a normal strip.

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Add --> Add Meta-Strips`
   | Hotkey:   :kbd:`Shift-G`


.. list-table::

   * - .. figure:: /images/editors_nla_meta_strips_01.png
          :width: 200px

          Shift-select two or more strips..

     - .. figure:: /images/editors_nla_meta_strips_02.png
          :width: 200px

          Combine them into a meta strip.


A meta strip still contains the underlying strips. You can ungroup a Meta strip.

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Add --> Remove Meta-Strips`
   | Hotkey:   :kbd:`Alt-G`


Editing Strips
==============

Start Tweaking Strips Action
----------------------------

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Edit --> Start Tweaking Strips Action`
   | Hotkey:   :kbd:`Tab`

The contents of Action strips can be edited, but you must be in *Tweak Mode* to do so.
The keyframes of the action can then be edited in the Dope Sheet. 

.. list-table::

   * - .. figure:: /images/editors_nla_strip_nla_mode.png
          :width: 200px

          Strip in NLA mode..

     - .. figure:: /images/editors_nla_strip_editmode.png
          :width: 200px

          Strip in Tweak mode.


When your finished editing the strip, simply go to :menuselection:`Edit --> Tweaking Strips Action`
or press :kbd:`Tab`.


Linked Duplicate
----------------

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Edit --> Linked Duplicate`
   | Hotkey:   :kbd:`Alt-D`

The contents of one Action strip can be instanced multiple times. To instance another strip,
select a strip, go to :menuselection:`Edit --> Linked Duplicate`

Now, when any strip is tweaked, the others will change too.
If a strip other than the original is tweaked,
the original will turn to red.

.. figure:: /images/editors_nla_linked-strip-edit.png

   Linked duplicated strip being edited.
