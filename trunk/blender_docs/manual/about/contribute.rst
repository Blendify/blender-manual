
**********
Contribute
**********

Whether you'd like to fix a tiny spelling mistake or rewrite an entire chapter,
your help with the Blender manual is most welcome!


How It Works
============

In plain English:

- The manual is written in the `reStructuredText <http://sphinx-doc.org/rest.html>`__ markup language and
  contained in a central repository.
- Writers can download the source files from this repository and edit them using a text editor.
- They can "convert" the source files into HTML web pages to see exactly what it'll look like on
  `blender.org/manual <http://blender.org/manual/>`__.
- When they're happy with their changes, they publish them to the central repository so that everyone
  else can work from them.


Install and Build
=================

The installation and building process is different for each operating system, instructions have been written for:

- :doc:`Linux </about/install/linux>`
- :doc:`Mac OSX </about/install/osx>`
- :doc:`MS-Windows </about/install/windows>`


Make Your Changes
=================

Firstly, make sure that your local copy of the manual is up to date with the online repository using:

.. code-block:: sh

   svn update


You can now **edit** the documentation files, which are the ``.rst`` files inside the ``manual`` folder using
a text editor of your choice.

For instructions on using different editors,
see the `Editor Configuration <http://wiki.blender.org/index.php/Dev:Doc/Tools/User_Reference_Manual>`__
section of the community wiki.

Be sure to check the :doc:`Writing Style Guide </about/writing_style_guide>`
for conventions and :doc:`Markup Style Guide </about/markup_style_guide>`
to learn how to write in the reStructuredText markup language.

If you are going to add or overhaul a section, be sure to check carefully that it doesn't already exist.
In some places the docs are so disorganized that sections may be duplicated or in a strange location.
In the case that you find a duplicate or out of place section,
`create a task <https://developer.blender.org/maniphest/task/create/?project=53>`
explaining the issue, and optionally include a revision (actual changes).

To **view** your changes, build the manual :doc:`as instructed </about/install/index>`.
Keep in mind that you can also build only the chapter you just edited to view it quickly.
Open the generated ``.html`` files inside the ``build/html`` folder using your web browser,
or refresh the page if you have it open already.

When you are happy with your changes, you can **upload** them, so that they will be in the online manual.
At first, this is done by submitting patches so that someone can review your changes and give you feedback.
After, you can commit your changes directly.


Submit Patches
==============

The first few times you make changes to the manual,
you'll need to submit them as patches for the section owner to review.
This is just to make sure that we maintain a quality user manual,
and that you don't accidentally break anything vital before you get used to the system.

In order to submit a patch, follow this process:

#. Make any changes that you want
#. Create a patch file by running:
   ::

      svn diff > filename.diff

   This creates a simple text file that shows what text was added,
   removed or changed between your working files and the central repository.

   If you have created or deleted files, you will need run ``svn add /path/to/file``
   or ``svn rm /path/to/file`` before creating the diff. To see a list of affected files, run ``svn status``.
#. `Upload the diff file here <https://developer.blender.org/differential/diff/create/>`__.
   If you don't have an account already, you can `register for one <https://developer.blender.org/auth/register/>`__.
#. After submitting the diff, you'll be asked to "Create a new Revision"
   before you can add a title and description of your changes.
#. If you know who the Section Owner
   (see *Documentation Team* `here <https://developer.blender.org/project/profile/53>`__) of that chapter is,
   assign them as the *Reviewer* and they'll be notified of your patch.
   If you can't find out who that is (or there is no one),
   instead mail the `bf-docboard <http://lists.blender.org/mailman/listinfo/bf-docboard>`__ mailing list,
   or tell someone in ``#blenderwiki`` on :ref:`IRC <irc-channels>`.
#. They will review your patch and let you know about any changes you could make,
   or commit the patch if it is accepted.

.. note::

   If your patch includes changes to or additional images, simply attach them when you're creating the revision.

Once you have had a few patches accepted, we cut out the middle man and give you direct access to edit the manual!


Commit Directly
===============

Instead of creating a patch file, committing will submit the change directly to our central repository.

All you need to do now is run:

.. code-block:: sh

   svn commit -m "This is what I did"

If you leave out ``-m "message"``, you'll be prompted to type the message in a text editor.

Do not forget to always run ``svn update`` before committing.

Then you'll be asked for your username (from ``developer.blender.org``) and password before the change is committed.
