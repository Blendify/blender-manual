��          |               �   i   �   %   G  0  m  �   �     �  �  �  !   A  	   c  �   m  �    �   	  �  �	  s   $  %   �  �  �    S     Y  �  g  %   8  	   ^  �   h      �   -   A given bone can be the parent of several children, and hence be part of several chains at the same time. An armature with two chains of bones. Armatures mimic real skeletons. They are made out of bones, which are (by default) rigid elements. But you have more possibilities than with real skeletons: In addition to the "natural" rotation of bones, you can also translate and even scale them! And your bones do not have to be connected to each other; they can be completely free if you want. However, the most natural and useful setups imply that some bones are related to others, forming so-called "chains of bones", which create some sort of "limbs" in your armature, as detailed in `Chains of Bones`_. Bones are chained by linking the tip of the parent to the root of the child. Root and tip can be *connected*, i.e. they are always exactly at the same point; or they can be *free*, like in a standard parent-child object relationship. Chains of Bones Chains of bones are a particularly important topic in :doc:`posing </rigging/armatures/posing/index>` (especially with the standard *forward kinematics* versus "automatic" *inverse kinematics* posing techniques). You create/edit them in *Edit Mode*, but except in case of connected bones, their relationships have no effect on bone transformations in this mode (i.e. transforming a parent bone will not affect its children). Example of a very basic armature. Structure The bone at the beginning of a chain is called its *root bone*, and the last bone of a chain is the *tip bone* (do not confuse them with similar names of bones' joints!). The bones inside an armature can be completely independent from each other (i.e. the modification of one bone does not affect the others). But this is not often a useful set up: To create a leg, all bones "after" the thigh bone should move "with" it in a well-coordinated manner. This is exactly what happens in armatures by parenting a bone to the next one in the limb, you create a "chains of bones". These chains can be ramified. For example, five fingers attached to a single "hand" bone. The easiest way to manage bones relationships is to use the :ref:`Relations panel <bone_relations_parenting>` in the *Bone* tab. Project-Id-Version: Blender Reference Manual 2.76
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-12-11 13:24-0500
PO-Revision-Date: 2017-03-12 13:56+0100
Last-Translator: phan <phahoatho@gmail.com>
Language: uk
Language-Team: français <bf-docboard@blender.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 un os donné peut être le parent de plusieurs enfants, et ainsi faire partie de plusieurs chaînes en même temps. Une armature avec deux chaînes d'os. Les armatures copient les squelettes réels. Elles sont faites d'os, qui sont (par défaut) des éléments rigides. Mais vous avez plus de possibilités que les squelettes réels : en plus de la rotation "naturelle" des os, vous pouvez aussi les translater et même les dimensionner ! Et vos os n'ont pas à être connectés les uns aux autres ; ils peuvent être complètement libres si vous le voulez. Cependant, les organisations les plus naturelles et utiles impliquent que certains os soient en relation avec d'autres, formant des soi-disant "chaînes d'os", qui créent des sortes de "membres" dans votre armature, comme détaillé dans `Chaînes d'os`_. Les os sont chaînés en liant l'extrémité d'un parent à la racine de l'enfant. Racine et extrémité peuvent être *connectées*, càd qu'elles sont exactement au même point ; ou elles peuvent être *libres*, comme dans une relation parent-enfant standard. Chaînes d'os Les chaînes d'os sont un sujet particulièrement important dans :doc:`posing </rigging/armatures/posing/index>` (spécialement avec les techniques de *posing* standard *forward kinematics* versus *inverse kinematics* "automatique"). Vous les créez/éditez en Mode Edit*, mais à l'exception du cas d'os connectés, leurs relations n'ont pas d'effet sur les transformations des os dans ce mode (càd la transformation d'un os parent n'affectera pas ses enfants).  Exemple d'une armature très basique. Structure L'os au début de la chaîne est appelé son *os racine* et le dernier os d'une chaîne est l'*os extrémité* (ne les confondez pas avec les noms semilaires des bouts d'os !). Les os dans une armature peuvent être complètement indépendants les u ns des autres (càd la modification d'un os n'affecte pas les autres). Mais c'est pas souvent une organisation utile : pour créer une jambe, tous les os "après" l'os de la cuisse devraient se déplacer avec lui d'une manière bien coordonnée. C'est exactement ce qui arrive dans les armatures en "parentant" un os au suivant dans le membre, vous créez une "chaîne d'os". Ces chaînes peuvent être ramifiées, cinq doigts attachés à un seul os "main". La manière la plus aisée de gérer les relations est d'utiliser le :ref:`Panneau Relations <bone_relations_parenting>` dans l'onglet *Bone*. 