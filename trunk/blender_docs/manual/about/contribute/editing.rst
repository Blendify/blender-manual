
******************
Make Your Changes
******************

Update
======

Firstly, make sure that your local copy of the manual is up to date with the online repository using:

.. code-block:: sh

   svn update


Editing the manual
==================

You can now edit the documentation files, which are the ``.rst`` files inside the ``manual`` folder using
a text editor of your choice.

For instructions on using different editors,
see the `Editor Configuration <https://wiki.blender.org/index.php/Dev:Doc/Tools/User_Reference_Manual>`__
section of the community wiki.

Be sure to check the :doc:`/about/contribute/style_guides/writing_guide`
for conventions and :doc:`/about/contribute/style_guides/markup_guide`
to learn how to write in the reStructuredText markup language.

If you are going to add or overhaul a section, be sure to check carefully that it does not already exist.
In some places, the docs are so disorganized that sections may be duplicated or in a strange location.
In the case that you find a duplicate or out of place section,
`create a task <https://developer.blender.org/maniphest/task/create/?project=53>`__
explaining the issue, and optionally include a revision (actual changes).


Preview
=======

To view your changes, build the manual :doc:`as instructed </about/contribute/build/index>`.
Keep in mind that you can also build only the chapter you just edited to view it quickly.
Open the generated ``.html`` files inside the ``build/html`` folder using your web browser,
or refresh the page if you have it open already.


Upload
======

When you are happy with your changes, you can upload them, so that they will be in the online manual.
At first, this is done by submitting patches so that someone can review your changes and give you feedback.
After, you can commit your changes directly. This process is described in detail in the next section.
