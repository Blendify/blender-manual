
************************
Game Logic Screen Layout
************************

The design, construction, debugging and running of a game utilizes a wide range of Blender functions.
To help with the process, Blender incorporates a suggested screen layout for setting up BGE games.
This includes many already-familiar panels but also a new
:doc:`Logic Editor </editors/logic_editor>` panel (4) concerned solely with the BGE.

The diagram below shows this default Game Logic screen layout,
together with the appropriate options for game setup/debug/running
(these should be set up in the order shown).

.. figure:: /images/bge_game_logic_screen_layout1.jpg
   :width: 640px

   Game Logic Screen Layout.

.. figure:: /images/bge_game_logic_screen_layout4.jpg

   Game Logic Menu.


.. rubric:: 1) Game Logic

Selected from the list of screen layouts for various applications.
This includes many already-familiar panels Information, 3D View,
Properties but also a new Logic Editor panel concerned solely with the BGE.

.. figure:: /images/bge_game_logic_screen_layout2.jpg

   Render Engine Menu.


.. rubric:: 2) Blender Game

Selected from the render engine menu.
This specifies that all output will be output by the real-time Blender Game Engine renderer.
It also opens various other menu options such as the Game options (see below)
and a range of Properties for the BGE renderer properties (see below)

.. figure:: /images/bge_game_logic_screen_layout3.jpg

   Game Options.


.. rubric:: 3) Game

This menu gives various options for conditions for running the Game Engine.
Note that this menu is only available when the render engine is set to Blender Game.

Start Game
   Run game in Game Engine (:kbd:`p` or :kbd:`Shift-P` when the mouse cursor is over the 3D View editor).
Show Debug Properties
   Show properties marked for debugging while game runs
Show framerate and profile
   :Show framerate and profiling information while game runs
Show Physics visualization
   show a vizualisation of physics bounds and interactions
Deprecation warnings
   Print warnings when using deprecated features in the python API
Record animation
   Record animation to F-Curves
Auto Start
   Automatically start game at load time


.. rubric::  4) Logic Editor panel

The :doc:`Logic Editor </editors/logic_editor>` is where the
:doc:`logic, properties and states </game_engine/logic/index>` are set up to control the behaviour of
the objects in the game.
(The Logic Editor panel can also be displayed by selecting Logic Editor in the Display Editor menu,
by pressing :kbd:`Shift-F2`, or by pressing :kbd:`Ctrl-Right`).


.. rubric::  5) Properties

.. tip:: Two Meanings for the Same Word

   Note that the name "Property" has two different uses in Blender terminology -
   firstly in the wider use of the Property Display Panel as described here,
   and secondly as the term used for specific Game Engine logic variables which are also called "properties".


The Property panel of the screen is selected as usual from the main Information menu.
However, note that several sections of the Property panel are changed when the render engine
(2) is changed from Blender Render to Blender Game.

See following sections for details of the content of :doc:`Physics </game_engine/physics/index>` Properties panels.
