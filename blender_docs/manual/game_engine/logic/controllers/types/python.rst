
*****************
Python Controller
*****************

The python controller runs a python script when a sensor triggers the controller.
This python script can interact with the scene or logic bricks through the
:doc:`Blender game engine API </game_engine/python_api/index>`.

A python script can either run as an entire file or a single module.
A file must be added in the text editor, and is identified simply by its name, not its path. Names are case sensitive.
Modules are identified by the file name *without* the extension followed by a ``.`` and then the name of the module.
For example:


A file ``myscript.py`` contains:

.. code-block:: python

   def myModule ():
      print("Go Open Source!");


The function can be accessed as ``myscript.myModule``, which will run ``print("Go Open Source!");``
every time the controller is triggered.

The entire file can be run by setting the type to *Script* and setting the name to myscript.py.

Parts of the Python Controller
===============================

.. image:: /images/game_engine_python_controller.jpg


#. Type
      Specifies whether it is a module or entire file.
#. Name
      The name of the file to be loaded.
#. D (Use Debug)
      Continuously reload the file.


See :ref:`standard controller parts <standard-controller-parts>` for descriptions of the remaining options.

More information on the python API can be found :doc:`here </game_engine/python_api/index>`.
