
***************
NAND Controller
***************

This controller *activates* all connected actuators if...

- the game object is in the designated state.
- at least one connected sensor triggers the controller.
- at least one connected sensor evaluated False.

This controller *deactivates* all connected actuators if...

- the game object is in the designated state.
- at least one connected sensor triggers the controller.
- ALL connected sensor evaluated True.

Options:

.. figure:: /images/bge_controller_nan.png
   :width: 292px

   NAND Controller.


See :ref:`standard controller parts <standard-controller-parts>` for descriptions of the remaining options.
