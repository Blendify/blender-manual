��          �               l  �  m     �  �        �  �   �  �   t  T    �   b  �   *  �      �	  �  �
  %   :     `  	   o  �   y  �  (  �   �  G  �     �  �  �  �  �     i  �   ~  %     �   9  �   !  �  �  �   p    J  �  Q      �  !  )   �     #  	   ;  �   E  �  �  �   �!  x  �"     0$   A "row" is a set of control points forming one "line" in one interpolation direction (a bit similar to :ref:`edge loops <modeling-mesh-structure-edge-loops>` for meshes). So you have "U-rows" and "V-rows" in a NURBS surface. The key point is that *all* rows of a given type (U or V) have the *same* number of control points. Each control point belongs to exactly one U-row and one V-row. A sphere surface. All this forms a "grid", or "cage", the shape of which controls the shape of the NURBS surface. A bit like a :doc:`lattice </rigging/lattice>`... Control Points, Rows and Grid Control points for NURBS surfaces are the same as for NURBS curves. However, their layout is quite constraining. The concept of "segment" disappears, replaced by "rows" and the overall "grid". Guess what? Yes, it works exactly like :ref:`NURBS Curves <modeling-curve-weight>`! *Weight* specifies how much each control point "pulls" on the curve. However, you can have "2D" surfaces made of curves (using the :doc:`extrusion tools </modeling/curves/properties/geometry>`, or, to a lesser extent, the filling of closed 2D curves). And you can have "1D" curves made of surfaces, like a NURBS surface with only one row (either in U or V direction) of control points produces only a curve... If all the control points have the same *Weight* then each effectively cancels each other out. It is the difference in the weights that cause the surface to move towards or away from a control point. In Fig. :ref:`fig-surface-intro-weight` a single control point, labeled "C", has had its *Weight* set to 5.0 while all others are at their default of 1.0. As you can see, that control point *pulls* the surface towards it. It is very important to understand the difference between NURBS curves and NURBS surfaces: the first one has one dimension, the latter has two. Blender internally treats NURBS surfaces and NURBS curves completely differently. There are several attributes that separate them but the most important is that a NURBS curve has a single interpolation axis (U) and a NURBS surface has two interpolation axes (U and V). Many of the concepts from :doc:`curves </modeling/curves/introduction>`, especially :ref:`NURBS <curve-nurbs>` ones, carry directly over to NURBS surfaces, such as control points, *Order*, *Weight*, *Resolution*, etc. Here we will just talk about the differences. NURBS can create pure shapes such as circles, cylinders, and spheres (note that a Bézier circle is not a pure circle). To create pure circles, globes, or cylinders, you must set to specific values the weights of the control points. Some of which are provided as presets in the *Curve Tools* panel (lower right corner). This is not intuitive, and you should read more on NURBS before trying this. One control point with a weight of 5. Preset Weights Structure The *Weight* of any particular control point is visible in the :doc:`/editors/3dview/object/properties/transforms` :kbd:`N`, in the *W* field (and not the *Weight* field...). This is very important to grasp: you cannot add a single control point to a NURBS surface; you have to add a whole U- or V-row at once (in practice, you will usually use the Extrude tool, or perhaps the Duplicate one, to add those...), containing exactly the same number of points as the others. This also means that you will only be able to "merge" different pieces of surfaces if at least one of their rows match together. To create a sphere with 2D surfaces, its the same principle as with a 2D circle. You will note that the four different weights needed for creating a sphere (1.0, 0.707 = sqrt(0.5), 0.354 = sqrt(2)/4, and 0.25). Visually you can tell which is which by entering *Edit Mode* and looking at the 3D View header: either the header shows *Surface* or *Curve* as one of the menu choices. Also, you can :doc:`extrude </modeling/curves/properties/geometry>` a whole NURBS surface curve to create a surface, but you cannot with a simple NURBS curve. Weight Project-Id-Version: Blender 2.77 Manual 2.77
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-02-13 18:14-0500
PO-Revision-Date: 2017-03-25 15:35+0100
Last-Translator: phan <phahoatho@gmail.com>
Language: uk
Language-Team: français <bf-docboard@blender.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 Une "ligne" (row) est un ensemble de points de contrôle formant une ligne dans une direction d'interpolation (un peu semblable à des :ref:`edge loops <modeling-mesh-structure-edge-loops>` pour les maillages). Ainsi vous avez des "lignes-U" et des "lignes-V" dans une surface NURBS. Le point clé est que *toutes* les lignes d'un type donné (U ou V) ont le *même* nombre de points de contrôle. Chaque point de contrôle appartient à exactement une ligne-U et une ligne-V. Une surface Sphère. Tout cela forme une "grille", ou "cage", dont la forme contrôle la forme de la surface NURBS. Un peu comme un :doc:`treillis </rigging/lattice>`... points de contrôle, Lignes et Grille Les points de contrôle pour les surfaces NURBS sont les mêmes que pour les courbes NURBS. Cependant, leur disposition est tout à fait contraignante. Le concept de "segment" disparaît, remplacé par "lignes" et "grille" globale. Devinez quoi ? Oui, il fonctionne exactement comme les :ref:`Courbes NURBS <modeling-curve-weight>`! Le *Poids* spécifie la manière dont chaque point de contrôle "tire" sur la courbe. Cependant, vous pouvez avoir des surfaces "2D" faites de courbes (en utilisant les :doc:`outils d'extrusion </modeling/curves/properties/geometry>`, ou, à un moindre degré, le remplissage de courbes 2D fermées). Et vous pouvez avoir des courbes "1D" faites de surfaces, comme une surface NURBS avec seulement une ligne (dans la direction U ou V) de points de contrôle produit seulement une courbe... Si tous les points de contrôle ont le même *poids* alors les uns annulent effectivement les autres. C'est la différence dans les poids qui fait que la surface se déplace vers ou s'éloigne d'un point de contrôle. Dans Fig. :ref:`fig-surface-intro-weight` un seul point de contrôle, portant le label "C", a son "poids" fixé à 5.0 tandis que tous les autres sont à leur valeur de 1.0 par défaut. Comme vous pouvez le voir, ce point de contrôle "tire" la surface vers lui. Il est très important de comprendre la différence entre les courbes NURBS et les surfaces NURBS : les premières ont une dimension, les autres en ont deux. Blender traite en interne Les surfaces NURBS et les courbes NURBS complètement différemment. Il y a plusieurs attributs qui les séparent mais le plus  important est qu'une courbe NURBS a un seul axe d'interpolation (U) et une surface NURBS a deux axes d'interpolation (U et V). Nombre de concepts de :doc:`courbes </modeling/curves/introduction>`, spécialement les :ref:`NURBS <curve-nurbs>`, porte directement sur les surfaces NURBS, tels que les points de contrôle, *Order*, *Weight*, *Resolution*, etc. Ici nous discuterons simplement des différences.  Les NURBS peuvent créer des formes pures telles que des cercles, cylindres et sphères (notez qu'un cercle Bézier n'est pas un cercle pur). Pour créer des cercles, globes ou cylindres purs, vous devez attribuer des valeurs spécifiques aux poids des points de contrôle. Certains d'entre eux sont fournis comme des préréglages dans le panneau *Curve Tools* (coin inférieur droit). Ce n'est pas intuitif, et vous devriez lire plus sur les NURBS avant d'essayer cela. un point de contrôle avec un poids de 5. Préréglages des poids Structure Le *Poids* d'un point de contrôle particulier est visible dans les :doc:`/editors/3dview/object/properties/transforms` :kbd:`N`, dans le champ *W* (et non dans le champ *Weight*...). il est très important de comprendre : vous ne pouvez pas ajouter un point de contrôle seul à une surface NURBS ; vous devez ajouter une ligne -U ou -V entière (en pratique, vous utiliserez l'outil Extrude, ou peut-être l'outil Duplicate, pour en ajouter...), contenant exactement le même nombre de points que les autres. Cela signifie aussi que vous ne serez capable de "fusionner" différentes morceaux de surfaces que si au moins une de leurs lignes se correspond. Pour créer une sphère avec des surfaces 2D, c'est le même principe qu'avec un cercle 2D. Vous noterez les quatre différents poids nécessaires pour créer une sphère (1.0, 0.707 = sqrt(0.5), 0.354 = sqrt(2)/4, et 0.25). Visuellement vous pouvez dire quoi est quoi en entrant en *Mode Édition* et en regardant l'entête de la Vue 3D : soit l'entête affiche *Surface* ou *Curve* comme un des choix de menus. Aussi, vous pouvez :doc:`extruder </modeling/curves/properties/geometry>` une surface NURBS entière pour créer une surface, mais vous ne pouvez pas le faire avec une simple courbe NURBS. Poids 