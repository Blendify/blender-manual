
**************
Patch & Commit
**************

Submit Patches
==============

The first few times you make changes to the manual,
you will need to submit them as patches for the section owner to review.
This is just to make sure that we maintain a quality user manual,
and that you do not accidentally break anything vital before you get used to the system.

In order to submit a patch, follow this process:

#. Make any changes that you want
#. Create a patch file by running:
   ::

      svn diff > filename.diff

   This creates a simple text file that shows what text was added,
   removed or changed between your working files and the central repository.

   If you have created or deleted files, you will need to run ``svn add /path/to/file``
   or ``svn rm /path/to/file`` before creating the diff. To see a list of affected files, run ``svn status``.
#. `Upload the diff file here <https://developer.blender.org/differential/diff/create/>`__.
   If you do not have an account already, you can `register for one <https://developer.blender.org/auth/register/>`__.
#. After submitting the diff, you will be asked to "Create a new Revision"
   before you can add a title and description of your changes.
#. If you know who the Section Owner
   (see `Documentation Team <https://developer.blender.org/project/profile/53>`__) of that chapter is,
   assign them as the *Reviewer* and they will be notified of your patch.
   If you cannot find out who that is (or there is no one),
   instead, mail the `bf-docboard <https://lists.blender.org/mailman/listinfo/bf-docboard>`__ mailing list,
   or tell someone in ``#blenderwiki`` on :ref:`IRC <irc-channels>`.
#. They will review your patch and let you know about any changes you could make,
   or commit the patch if it is accepted.

.. note::

   If your patch includes changes to or additional images, simply attach them when you are creating the revision.


Straight-forward patches are bound to be accepted very quickly.
Once you get accustomed to making changes and no longer need feedback,
we cut out the middle man and give you direct access to edit the manual.


Commit Directly
===============

Instead of creating a patch file, committing will submit the change directly to our central repository.

All you need to do now is run:

.. code-block:: sh

   svn commit -m "This is what I did"

If you leave out ``-m "message"``, you will be prompted to type the message in a text editor.

Do not forget to always run ``svn update`` before committing.

Then you will be asked for your username (from ``developer.blender.org``) and password before the change is committed.
