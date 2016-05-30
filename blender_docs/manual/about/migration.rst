
*****************************
MediaWiki to Sphinx Migration
*****************************

At the end of 2014, we migrated the manual from MediaWiki to Sphinx, which uses the reStructuredText markup language.

This is a somewhat controversial decision,
so this sections explains some of the reasons why we felt Sphinx was worth moving to.

We realize that a change in technology alone will not solve all problems,
at the end of the day, it is really up to us to write a better manual, but there were some issues with
``wiki.blender.org`` which made it difficult to work with.


Comparisons
===========

Note that these are subjective points, more could be written on this.
However for the purpose of maintaining a manual, here are some pros and cons for each system.


MediaWiki
---------


Pros
^^^^

Online editing
   Only a web browser required.
Quick Feedback
   No need to *generate* docs locally before you can see the change on the web page.
Low *barrier of entry*
   Easy to get involved.
Single Pages
   Each page is an isolated document - this works well for Wikipedia, and Blender developer documents.


Cons
^^^^

Poor version handling
   With a wiki, we cannot easily document new features during the development process.
   The current wiki may include information which is valid for a nightly build, but not the latest stable release.
Low quality *drive-by* edits
   many pages would have incomplete edits, incorrect information or too much
   highly detailed text written on a topic. So while ease of contribution has its benefits,
   it proved to be problematic too.
Poor Peer Review
   It was hard to properly peer review edits, a lot of changes would be made with no feedback.
   Writers did not really know if their work was considered good quality or not.
Page Hierarchy
   The hierarchy in Blender's wiki was supported with an extension to MediaWiki,
   but it is something that MediaWiki does not support, managing this tree online is cumbersome.
No Project Management
   Without some project management,
   it is difficult to keep track of who does what, assign tasks, report issues etc.


Sphinx/reStructuredText
-----------------------


Pros
^^^^

Release with Blender
   We can release a version of the manual with each Blender release,
   make it available online as well as downloadable.
Local Structure
   More easily manage the overall structure of the manual,
   move pages and chapters around as regular files and folders.
Automated Edits
   Local files means we can more easily manipulate text, using text editors of choice,
   search/replace words and generally edit the manual without having to load up a webpage first.
   (``wiki.blender.org`` access is slow in some countries).

   Tasks such as running a spell-checker, on the entire manual, was not really possible with MediaWiki.
Project Management
   While this is not directly a feature of Sphinx, using version-control
   means we can integrate a `project management system <https://developer.blender.org/project/profile/53>`__
   (Phabricator in this case).

   This means we can have a central place to track issues, set goals for releases and assign tasks.


Cons
^^^^

No online editing.
   This is not inherently a limitation of reStructuredText,
   and at some point, we may investigate ways to support this.
Must be built
   Docs need to be compiled into HTML, which takes time.
Higher *barrier of entry*
   Installing SVN and Sphinx is not so easy depending on your platform and experience.


Barrier of Entry
================

Increasing the barrier of entry is not something to be taken lightly,
however, it is our opinion that the trade-off is worthwhile.

The short term benefit of quick & easy editing with the Wiki,
has to be weighed against the long-term benefits of using a system better suited
to collaboratively writing a document.

We have observed the quality of drive-by edits varies a lot,
sometimes adding redundant text and even misinformation at times.

Often, low-quality content would stay un-edited or incomplete,
instead of being improved by others or removed.


Conclusion
==========

Both systems have their strengths and weaknesses,
it is yet to be seen if we can effectively maintain a manual with the new system that has been proposed.

But ``wiki.blender.org`` had some years to create the manual and while some areas were very high quality,
it remained a mix of old docs and poor quality content for the most part.

