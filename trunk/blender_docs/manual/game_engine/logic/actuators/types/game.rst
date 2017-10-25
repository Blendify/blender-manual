.. _bpy.types.GameActuator:

*************
Game Actuator
*************

The *Game Actuator* allows the user to perform Game-specific functions,
such as Restart Game, Quit Game, and Load Game.

.. figure:: /images/game-engine_logic_actuators_types_game_node.jpg
   :width: 271px

   Game actuator.


Properties
==========

See :doc:`Actuator Common Options </game_engine/logic/actuators/common_options>` for common options.

Game
   Load ``bge.logic.globalDict``
      Load ``bge.logic.globalDict`` from ``.bgeconf``.
   Save ``bge.logic.globalDict``
      Save ``bge.logic.globalDict`` to ``.bgeconf``.
   Quit Game
      Once the actuator is activated, the blenderplayer exits the runtime.
   Restart Game
      Once the actuator is activated, the blenderplayer restarts the game (reloads from file).
   Start Game From File
      Once the actuator is activated, the blenderplayer starts the blend-file from the path specified.

      File
         Path to the blend-file to load.

.. note::

   If you use the keyboard sensor as a hook for :kbd:`Esc`,
   in the event that the quit game actuator fails, such as an error in a Python file,
   the game will be unable to close. Data may be recovered from ``quit.blend``
   :menuselection:`File --> Recover Last Session`


Example
=======

TODO.
