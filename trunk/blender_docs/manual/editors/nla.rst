..    TODO/Review: {{review|text=Needs clarification & updates.
      |fixes=[[User:Rking/Doc:2.6/Manual/Animation/Editors/NLA|X]]}}.

.. |snowflake-button| image:: /images/icons_snowflake.png
   :width: 1.1em

***************************
Non-Linear Animation Editor
***************************

The NLA editor can manipulate and repurpose actions, without the tedium of keyframe handling.
Its often used to make broad, significant changes to a scene's animation, with relative ease.
It can also repurpose, and "layer" actions, which make it easier to organize,
and version-control your animation.


Tracks
======

Tracks are the layering system of the NLA. At its most basic level,
it can help organize strips. But it also layers motion much like an image editor layers pixels --
the bottom layer first, to the top, last.

.. figure:: /images/nla_track.png


Strips
======

There are three kinds of strips: Action, Transition, and Meta.
Actions contain the actual keyframe data,
Transitions will perform calculations between Actions,
and Meta will group strips together as a whole.


Creating Action Strips
----------------------

Any action used by the NLA first must be turned into an Action strip.
This is done so by clicking the |snowflake-button|
next to the action listed in the NLA. Alternatively, you can go to :menuselection:`Add --> Action`.

.. figure:: /images/nla_action_strip.png

   Action Strip.


Creating Transition Strips
--------------------------

Select two or more strips on the same track, and go to:

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`Add --> Transition`

.. figure:: /images/nla-basics_transition.png

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

   * - .. figure:: /images/nla_meta_strips_01.png
          :width: 200px

          Shift-select two or more strips..

     - .. figure:: /images/nla_meta_strips_02.png
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

   * - .. figure:: /images/nla_strip_nla_mode.png
          :width: 200px

          Strip in NLA mode..

     - .. figure:: /images/nla_strip_editmode.png
          :width: 200px

          Strip in Tweak mode.


If you try moving the strip, while in edit mode,
you will notice that the keys will go along with it. On occasion,
you will prefer the keys to remain on their original frames, regardless of where the strip is.
To do so, hit the *unpin* icon, next to the strip.

.. figure:: /images/nla_pinned_01.png

   Nla strip with pinned keys.

.. figure:: /images/nla_pin_02.png

   Strip moved, notice the keys move with it.

.. figure:: /images/nla_pin_03.png

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

   * - .. figure:: /images/nla_original_strip.png
          :width: 190px

          Original strip.

     - .. figure:: /images/nla_linked_duplicate.png
          :width: 190px

          Duplicated strip.

     - .. figure:: /images/nla_linked_duplicate_edited.png
          :width: 190px

          Duplicated strip being edited.


Strip Properties
================

Strip properties can be accessed via the NLA header.

.. admonition:: Reference
   :class: refbox

   | Menu:     :menuselection:`View --> Properties`


Renaming Strips
---------------

All strips can be renamed, in the "Active Track" section in the Strip Properties.

.. figure:: /images/nla_striprename.png


Active Track
------------

This is which track the strip currently belongs to.

.. figure:: /images/activetrack.jpg


Active Strip
------------

Elements of the strip itself. An Action Strip can be either an Action Clip,
or a Transition Clip.

.. note::

   Note that the 'Strip Extents' fields determine strictly the strip, and not the action.
   Also, the "Hold" value in the Extrapolation section means hold both beginning, and after.
   This can cause previous clips to not work, if checked.

.. figure:: /images/activestrip.jpg


Active Action
-------------

This represents the 'object data' of the strip. Much like the transform values of an object.

.. figure:: /images/actionclip.png


Evaluation
----------

This determines the degree of influence the strip has, and over what time.

.. figure:: /images/evaluation.jpg


If influence is not animated, the strips will fade linearly, during the overlap.

.. figure:: /images/nla_influence_strip.jpg


Strip Modifiers
===============

Like its close cousins in mesh and graph editing,
Modifiers can stack different combinations of effects for strips.
Obviously there will be more to come on this.

.. figure:: /images/modifier.png
