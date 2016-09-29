
************
Introduction
************

Sensors are the logic bricks that cause the logic to do anything.
Sensors give an output when something happens, e.g.
a trigger event such as a collision between two objects, a key pressed on the keyboard,
or a timer for a timed event going off. When a sensor is triggered,
a positive pulse is sent to all controllers that are linked to it.

The logic blocks for all types of sensor may be constructed and changed using the
:doc:`Logic Editor </editors/logic_editor>`
details of this process are given in the :doc:`Sensor Editing </game_engine/logic/sensors/editing>` page.

The following types of sensor are currently available:

:doc:`Actuator </game_engine/logic/sensors/types/actuator>`
   Detects when a particular actuator receives an activation pulse.
:doc:`Always </game_engine/logic/sensors/types/always>`
   Gives a continuous output signal at regular intervals.
:doc:`Collision </game_engine/logic/sensors/types/collision>`
   Detects collisions between objects or materials.
:doc:`Delay </game_engine/logic/sensors/types/delay>`
   Delays output by a specified number of logic ticks.
:doc:`Joystick </game_engine/logic/sensors/types/joystick>`
   Detects movement of specified joystick controls.
:doc:`Keyboard </game_engine/logic/sensors/types/keyboard>`
   Detects keyboard input.
:doc:`Message </game_engine/logic/sensors/types/message>`
   Detects either text messages or property values
:doc:`Mouse </game_engine/logic/sensors/types/mouse>`
   Detects mouse events.
:doc:`Near </game_engine/logic/sensors/types/near>`
   Detects objects that move to within a specific distance of themselves.
:doc:`Property </game_engine/logic/sensors/types/property>`
   Detects changes in the properties of its owner object.
:doc:`Radar </game_engine/logic/sensors/types/radar>`
   Detects objects that move to within a specific distance of themselves, within an angle from an axis.
:doc:`Random </game_engine/logic/sensors/types/random>`
   Generates random pulses.
:doc:`Ray </game_engine/logic/sensors/types/ray>`
   Shoots a ray in the direction of an axis and detects hits.
