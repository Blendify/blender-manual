..    TODO/Review: {{review|text=Needs clarification & updates.
      |fixes=[[User:Rking/Doc:2.6/Manual/Animation/Editors/NLA|X]]}}.


Tracks
======

Tracks are the layering system of the NLA. At its most basic level,
it can help organize strips. But it also layers motion much like an image editor layers pixels --
the bottom layer first, to the top, last.

.. figure:: /images/editors_nla_tracks.png

   NLA Tracks and Strips.


Strips
======

There are three kinds of strips: Action, Transition, and Meta.
Actions contain the actual keyframe data,
Transitions will perform calculations between Actions,
and Meta will group strips together as a whole.


Creating Action Strips
----------------------

Any action used by the NLA first must be turned into an Action strip.
This is done so by clicking the Push Down action button
next to the action listed in the NLA.
Alternatively, you can go to :menuselection:`Add --> Action`.

.. figure:: /images/editors_nla_push-down-button.png

   Push Down action button.


Creating Transition Strips
--------------------------

Select two or more strips on the same track,
and go to: :menuselection:`Add --> Transition`.

.. figure:: /images/editors_nla-basics_transition.png

   Transition Strip.


Grouping Strips into Meta Strips
--------------------------------

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

The contents of Action strips can be edited, but you must be in *Tweak Mode* to do so.

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`View --> Enter Tweak Mode`
   | Hotkey:   :kbd:`Tab`


.. list-table::

   * - .. figure:: /images/editors_nla_strip_nla_mode.png
          :width: 200px

          Strip in NLA mode..

     - .. figure:: /images/editors_nla_strip_editmode.png
          :width: 200px

          Strip in Tweak mode.


If you try moving the strip, while in edit mode,
you will notice that the keys will go along with it. On occasion,
you will prefer the keys to remain on their original frames, regardless of where the strip is.
To do so, hit the *unpin* icon, next to the strip.

.. figure:: /images/editors_nla_pinned_01.png

   Nla strip with pinned keys.

.. figure:: /images/editors_nla_pin_02.png

   Strip moved, notice the keys move with it.

.. figure:: /images/editors_nla_pin_03.png

   The unpinned keys return to their original frames.


When your finished editing the strip, simply go to :menuselection:`View --> Exit Tweak Mode`.
Note the default key for this is Tab.


Re-Instancing Strips
====================

The contents of one Action strip can be instanced multiple times. To instance another strip,
select a strip, go to :menuselection:`Edit --> Duplicate Strips`

Now, when any strip is tweaked, the others will change too.
If a strip other than the original is tweaked,
the original will turn to red.

.. list-table::

   * - .. figure:: /images/editors_nla_original_strip.png
          :width: 190px

          Original strip.

     - .. figure:: /images/editors_nla_linked_duplicate.png
          :width: 190px

          Duplicated strip.

     - .. figure:: /images/editors_nla_linked_duplicate_edited.png
          :width: 190px

          Duplicated strip being edited.
