
*******************
Writing Style Guide
*******************


Primary Goals
=============

The main goals for this manual are as follows.

User Focused
   While some areas of computer graphics are highly technical,
   this manual shall be kept understandable by non-technical users.
Complete
   So there is a canonical source of truth for each of Blender's key areas.
   This doesn't mean we have to document every small detail,
   but users shouldn't have to rely on searching elsewhere to find the purpose of key features.
Concise
   Computer graphics is an incredibly interesting field,
   there are many rules, exceptions to the rules and interesting details.
   Expanding into details can add unnecessary content,
   so keep the text concise and relevant to the topic at hand.
Maintainable
   Keep in mind that Blender has frequent releases,
   so try to write content that won.t have to be redone
   the moment some small change is made.
   This also helps a small documentor community to maintain the manual.


Content Guidelines
==================

In order to maintain a consistent writing style within the manual,
please keep this page in mind and only deviate from it when you have a good reason to do so.

Rules of thumb:

- *Spell checking is strongly recommended.*
- Use American English (eg: modeling and not modelling, color and not colour).
- Take care about grammar, appropriate wording and use simple English.
- Keep Sentences short and clear, resulting in text that is easy to read, objective and to the point.
- Including why or how an option might be useful is a good idea.
- If you are unsure about how a feature works, ask someone else or find out who developed it and ask them.

To be avoided:

- Avoid to write in first person perspective, about yourself or your own opinions.
- Avoid `weasel words <http://en.wikipedia.org/wiki/Weasel_word>`__ and being unnecessarily vague, eg:

  | *"Reloading the file will probably fix the problem"*
  | *"Most people don't use this option because ..."*
- Avoid including specific details such as:

  | *Blender has 23 different kinds of modifiers.*
  | *Enabling previews adds 65536 bytes to the size of each Blend file
    (unless its compressed).*

  These details aren't useful for users to memorize and they become quickly out-dated.
- Avoid documenting bugs.

  Blender has often has 100's of bugs fixed between releases, so its not realistic to reference
  even a fraction of them from the manual, while keeping this list up to date.

  Issues which are known to the developers and aren't going to be resolved before the next release
  can be documented as **Known Limitations**,
  in some cases it may be best to include them the in the **Troubleshooting** section.
- Avoid *Product Placement* - unnecessarily promoting software or hardware brands.
  Keep content vendor-neutral where possible.
- Avoid technical explanations about the mathematical/algorithmic implementation of a feature
  if there is a simpler way to explain it (e.g. explaining how mesh smoothing algorithms work is unnecessary,
  but the blending types of a mix node do need a mathematical explanation).
- Avoid repetition of large portions of text - simply explain it once, and from then on refer to that explanation.

  In some cases you might also consider defining a ``:term:`` in the **glossary**.
- Avoid enumerating similar options, such as listing every preset or every frame-rate in a drop-down.

  Their contents may be summarized or simply omitted.

  *Such lists are only showing what is already obvious in the interface
  and end up being a lot of text to read & maintain.*
- Avoid documenting changes in Blender between releases, thats what the release notes are for.
  We only need to document the current state of Blender.
- Unless the unit a value is measured in is obscure and unpredictable, there is no need to mention it.
- Do not simply copy the tool-tips from Blender.

  *People will come to the manual to learn more than is provided by the UI.*

  As a last resort you can add comment (which is not shown in the html page, but useful for other editors): ::

     .. TODO, how does this tool work? ask Joe Blogg's


Glossary
--------

This section is specifically about the :doc:`Glossary </glossary/index>` section,
where we define common terms in Blender and computer-graphics.

Rules of thumb:

- Define the term before providing any further information.
- Avoid using constructs such as *"It is"* or *"xyz is"* before the definition.
- Avoid repeating the term immediately or using it in the definition.
- Avoid adding terms not found in Blender's interface or the manual.
- Avoid overly long entries.
  If an explanation of a complex term is needed, supplement with external links.
- Avoid duplicating documentation;
  if explaining the term is the primary focus of another section of the manual
  (e.g. if the term is the name of a tool),
  either just link to that section, or avoid creating a glossary entry entirely.


Examples
^^^^^^^^

This entry:

.. code-block:: rst

   Displacement Mapping
      Uses a greyscale heightmap, like Bump Mapping,
      but the image is used to physically move the vertices of the mesh at render time.
      This is of course only useful if the mesh has large amounts of vertices.

Would be written like this instead, putting a definition first:

.. code-block:: rst

   Displacement Mapping
      Method for distorting vertices based on an image.
      Similar to Bump Mapping, but instead operates on the mesh's actual geometry.
      This relies on the mesh having enough geometry.

----

This entry:

.. code-block:: rst

   Doppler Effect
      The Doppler effect is the change in pitch that occurs
      when a sound has a velocity relative to the listener.

Would be written more like this, avoiding the immediate repetition of the term:

.. code-block:: rst

   Doppler Effect
      Perceived change in pitch that occurs
      when the source of a sound is moving relative to the listener.

----

This entry:

.. code-block:: rst

   Curve
      It’s a class of objects.
      In Blender there are Bézier curves and NURBS curves.

Would be written more like this, avoiding the *"it's"*:

.. code-block:: rst

   Curve
      A type of object defined in terms of a line interpolated between Control Vertices.
      *Available types of curves include Bézier and NURBS.*

