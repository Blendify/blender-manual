��    $      <              \  �   ]                -  -   ;  <   i  J   �  V   �     H     W     `  �   g     �  !   �  r        �     �     �  .   �     �     �  0   �  v  ,  $   �  	   �  �   �     �  w   �     	  A   *	  t   l	     �	     �	  �   
  �     �  �  �   m     '     0     =  -   K  <   y  J   �  V        X     g     p  �   w     �  !     r   &     �     �     �  .   �     �     �  0     v  <  $   �  	   �  �   �     �  w   �     -  A   :  t   |     �       �     �      A value between (-1 to 1) to change whether the wireframes are generated inside or outside the original mesh. Set to zero, *Offset* will center the wireframes around the original edges. Boundary Crease Edges Crease Weight Creates wireframes on mesh island boundaries. Cube and Subdivision Surface with 0 / 0.5 / 1 crease weight. Define how much crease (0 to 1) (no to full) the junctions should receive. Determines the edge thickness by the length of the edge. Longer edges will be thicker. Even Thickness Examples Factor If this option is enabled, the original mesh is replaced by the generated wireframe. If not, the wireframe is generated on top of it. Invert Inverts the vertex group weights. Maintain thickness by adjusting for sharp corners. Sometimes improves quality but also increases computation time. Material Offset Offset Options Original / Wireframe / Original and Wireframe. Relative Thickness Replace Original Restrict the modifier to only this vertex group. The Wireframe Modifier transforms a mesh into a wireframe by iterating over its faces, collecting all edges and turning those edges into four sided polygons. Be aware of the fact that your mesh needs to have faces to be wireframed. You can define the thickness, the material and several other parameters of the generated wireframe dynamically via the given modifier options. The depth or size of the wireframes. Thickness This option is intended for usage with the :doc:`Subdivision Modifier </modeling/modifiers/generate/subsurf>`. Enable this option to crease edges on their junctions and prevent large curved intersections. ToDo, Uses the chosen material index as the material for the wireframe; this is applied as an offset from the first material. Vertex Group Vertex Group weighting: One half 0 weighted, one half 1 weighted. When you got more Faces that meet at one point they are forming a star like pattern like seen in the examples below. Wireframe Modifier Wireframe Modifier. Wireframe thickness is an approximation. While *Even Thickness* should yield good results in many cases, skinny faces can cause ugly spikes. In this case you can either reduce the extreme angles in the geometry or disable the *Even Thickness* option. Wireframes on a displaced plane. In this example, the wireframes carry a second (dark) material while the displaced plane uses its original one. Project-Id-Version: Blender Reference Manual 2.76
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-02-20 15:39-0500
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: uk
Language-Team: uk <LL@li.org>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 A value between (-1 to 1) to change whether the wireframes are generated inside or outside the original mesh. Set to zero, *Offset* will center the wireframes around the original edges. Boundary Crease Edges Crease Weight Creates wireframes on mesh island boundaries. Cube and Subdivision Surface with 0 / 0.5 / 1 crease weight. Define how much crease (0 to 1) (no to full) the junctions should receive. Determines the edge thickness by the length of the edge. Longer edges will be thicker. Even Thickness Examples Factor If this option is enabled, the original mesh is replaced by the generated wireframe. If not, the wireframe is generated on top of it. Invert Inverts the vertex group weights. Maintain thickness by adjusting for sharp corners. Sometimes improves quality but also increases computation time. Material Offset Offset Options Original / Wireframe / Original and Wireframe. Relative Thickness Replace Original Restrict the modifier to only this vertex group. The Wireframe Modifier transforms a mesh into a wireframe by iterating over its faces, collecting all edges and turning those edges into four sided polygons. Be aware of the fact that your mesh needs to have faces to be wireframed. You can define the thickness, the material and several other parameters of the generated wireframe dynamically via the given modifier options. The depth or size of the wireframes. Thickness This option is intended for usage with the :doc:`Subdivision Modifier </modeling/modifiers/generate/subsurf>`. Enable this option to crease edges on their junctions and prevent large curved intersections. ToDo, Uses the chosen material index as the material for the wireframe; this is applied as an offset from the first material. Vertex Group Vertex Group weighting: One half 0 weighted, one half 1 weighted. When you got more Faces that meet at one point they are forming a star like pattern like seen in the examples below. Wireframe Modifier Wireframe Modifier. Wireframe thickness is an approximation. While *Even Thickness* should yield good results in many cases, skinny faces can cause ugly spikes. In this case you can either reduce the extreme angles in the geometry or disable the *Even Thickness* option. Wireframes on a displaced plane. In this example, the wireframes carry a second (dark) material while the displaced plane uses its original one. 