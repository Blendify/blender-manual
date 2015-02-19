
**************************
Licensing of Blender Games
**************************

Blender and the Blender Game Engine (BGE) is licensed as GNU GPL, which means that your games (if they include Blender
software) have to comply with that license as well. This only applies to the software, or the bundle if it has software
in it, not to the artwork you make with Blender. All your Blender creations are your sole property.

GNU GPL - also called "Free Software" - is a license that aims at keeping the licensed software free, forever.
GNU GPL does not allow you to add new restrictions or limitations on the software you received under that license.
That works fine if you want your clients or your audience to have the same rights as you have (with Blender).

For people who prefer to lockup software or to restrict distribution or copying of their games, the BGE is not a good
choice. The best you can achieve is to separate the contents (.blend files with game design) from the software (BGE) in
their distribution, and license the first under own copyrights and keep the latter as GNU GPL.



Standalone Games
================

In case you save out your game as a single "Standalone" the .blend file gets included in the binary (the BGE player).
That requires the .blend file to be compatible with the GNU GPL license.

In this case, you could decide to load and run another .blend file game (using the Game Actuator logic brick).
That file then is not part of the binary, so you can apply any license you wish on it.



More Information
================

More information you can find in the `blender.org FAQ <http://www.blender.org/support/faq/>`__.


(Disclaimer: the former text on this page was inaccurate and had wrong statements in it.
The current text has been rewritten by Blender Foundation's chairman.
If you have questions about GPL, consult the `Free Software Foundation website <fsf.org>`__ .)
