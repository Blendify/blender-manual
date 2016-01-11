
************
Introduction
************

Rigging makes animation possible. Without a good rig animation is incredibly frustrating.
Imagine animating a bouncing ball without the ability to squash it against the ground?
Try animating a monkey swinging through the trees with no control to make the monkey's hands grab onto the branches.
What if you had to animate an army tank speeding through
the desert by positioning each tread on the tank one at a time?

.. figure:: /images/rigging_introduction_header.png

At its most basic level, rigging solves motion problems. Imagine a door that opens into a hallway. Without a rig, the door won't swing open properly (1). A rig is needed to help the door swing open on its hinges (2,3,4), and there are many ways to rig the door. Door 2 gets rigged by repositioning the :term:`Object Center` of the door.
Door 3 gets rigged by :term:`Parenting` the door to an :term:`Empty`.
Door 4 gets rigged by :term:`Weight Painting` all of its :term:`Vertices` to a :term:`Bone` in an :term:`Armature`.

.. figure:: /images/rigging_introduction_door.png

Most production rigs are more complicated than a simple door, but be careful not to rush off building complicated rigs until you have developed some experience. Rigging is a discipline that takes practice. Start by building simple rigs (like a bouncing ball,
a tumbling box, an odometer, a clock). Stay humble. Stay patient.
Study the fundamental concepts that make a bouncing ball bounce.
Add one rigging tool to your toolbox at a time. Test your simple rigs in actual animation projects.
And only after much trial and error,
consider putting everything together into the sophisticated character rig of your dreams.

The content of this chapter is simply a reference to how rigging is accomplished in Blender.
It should be paired with additional resources such as Nathan Vegdahl's excellent (and free!)
introduction to the fundamental concepts of character rigging,
`Humane Rigging <https://www.youtube.com/playlist?list=PL3wFcRXImVPOQpi-wi7uriXBkykXVUntv>`__.
