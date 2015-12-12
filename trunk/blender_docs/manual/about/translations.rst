
************
Translations
************

.. note::

   At time of writing we are setting up translations workflow,
   this page shows the initial steps for translators to get started.


Installing Dependencies
=======================

For translations we use Sphinx's internationalization package.
However this is not included with Sphinx and needs to be installed.

.. code-block:: sh

   pip install sphinx-intl


Downloading the Repository
==========================

First of all, its assumed that you have the manual already building.

From the directory containing your checkout of the manual run the following command.

.. code-block:: sh

   svn checkout https://svn.blender.org/svnroot/bf-manual-translations/trunk/blender_docs/locale manual/locale

This will create a ``manual/locale/`` subdirectory.

Now you can edit the PO translation files,
eg: ``manual/locale/fr/LC_MESSAGES/getting_started/about_blender/introduction.po``

These files can be edited and committed back to svn.


Building with Translations
==========================

.. note::

   This is quite involved, and it may not be expected that translators have to build the translated manual locally.

   Instead we may rely on the docs being build automatically online.

----

To creates the ``.mo`` files (needed for building translation).

.. code-block:: sh

   cd manual
   sphinx-intl build
   cd ..

Now you can build the manual with the translation applied.

.. code-block:: sh

   make -e SPHINXOPTS="-D language='fr'"

If you're on ms-windows and don't have ``make``, run:

.. code-block:: sh

   sphinx-build -b html -D language='fr' ./manual ./build/html

.. note::

   See the `translation design task <https://developer.blender.org/T43083>`__
   for discussion on the proposed process.

.. seealso::

   `Sphinx Intl documentation <http://sphinx-doc.org/latest/intl.html>`__

