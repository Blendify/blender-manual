
**************
AND Controller
**************

This controller gives a positive (TRUE) output when
All its inputs are TRUE, and
The object is in the designated State.
For all other conditions the controller gives a negative (FALSE) output.

Options:


.. figure:: /images/BGE_Controller_And.jpg
   :width: 292px

   AND Controller


Controller Type menu
   Specifies the type of the controller.
Controller Name
   The name of the controller. This can be selected by the user.
   It is used to access controllers with python; it needs to be unique among the selected objects.
State Index
   Sets the designated state for which this controller will operate.
Preference Button
   If on, this controller will operate before all other non-preference controllers (useful for start-up scripts).
:kbd:`X` **Button**
   Deletes the sensor.


