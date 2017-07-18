��          �               l     m  ,  r  +  �     �  #   �  4     0   :  4   k  �   �     b     j     �     �     �  Y  �  
    :    H   N	     �	  �   �	  �  w
     K  ,  P  +  }     �  #   �  4   �  0     4   I  �   ~     @     H     `     p     w  Y  �  
  �  :  �  H   ,     u  �   |   Bind Bind the current state of the modified mesh to the current state of the target mesh, such that any later change in the target mesh will deform the modified mesh as well. Note that until the bind has been executed, this modifier will have no effect whatsoever. (This does not affect the target object) How much a vertex bound to one face of the target will be affected by the surrounding faces. This essentially controls how smooth the deformations are. Note that while lower values result in smoother deformations, they may also introduce slight artifacts. (This setting is unavailable after binding) Interpolation falloff Must **not** contain concave faces. Must **not** contain edges with more than two faces. Must **not** contain faces with collinear edges. Must **not** contain overlapping vertices (doubles). Once the mesh is bound, the *Bind* button changes to *Unbind*. Executing this frees the modified mesh from the target, and resets it its original shape. (This does not affect the target object) Options Surface Deform Modifier Surface Deform. Target Target Mesh Validity The Surface Deform Modifier allows an arbitrary mesh surface to control the deformation of another, essentially transferring its motion/deformation. One great use for this is to have a proxy mesh for cloth simulation, which will in turn drive the motion of your final and more detailed mesh, which would otherwise not be suitable for simulation. The further a mesh deviates from the target mesh surface, the more likely it is to get undesirable artifacts. This is an inherent characteristic of surface binding in general, so it is recommended to have reasonably well matching meshes, in order to get a good bind. The meshes are bound with regard to global coordinates, but later transformations on the objects are ignored. This means that one can freely transform the target or modified object after binding, without affecting the modified object. The modified mesh will only pick up changes to the target object's mesh itself. The object to which to bind. (This setting is unavailable after binding) Unbind While there are no restrictions with regard to the modified mesh, the target object's mesh has a few constraints, which if not followed, will prevent a successful bind. The target mesh has to follow these conditions: Project-Id-Version: Blender 2.78 Manual 2.78
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-19 13:41-0400
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: uk
Language-Team: uk <LL@li.org>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 Bind Bind the current state of the modified mesh to the current state of the target mesh, such that any later change in the target mesh will deform the modified mesh as well. Note that until the bind has been executed, this modifier will have no effect whatsoever. (This does not affect the target object) How much a vertex bound to one face of the target will be affected by the surrounding faces. This essentially controls how smooth the deformations are. Note that while lower values result in smoother deformations, they may also introduce slight artifacts. (This setting is unavailable after binding) Interpolation falloff Must **not** contain concave faces. Must **not** contain edges with more than two faces. Must **not** contain faces with collinear edges. Must **not** contain overlapping vertices (doubles). Once the mesh is bound, the *Bind* button changes to *Unbind*. Executing this frees the modified mesh from the target, and resets it its original shape. (This does not affect the target object) Options Surface Deform Modifier Surface Deform. Target Target Mesh Validity The Surface Deform Modifier allows an arbitrary mesh surface to control the deformation of another, essentially transferring its motion/deformation. One great use for this is to have a proxy mesh for cloth simulation, which will in turn drive the motion of your final and more detailed mesh, which would otherwise not be suitable for simulation. The further a mesh deviates from the target mesh surface, the more likely it is to get undesirable artifacts. This is an inherent characteristic of surface binding in general, so it is recommended to have reasonably well matching meshes, in order to get a good bind. The meshes are bound with regard to global coordinates, but later transformations on the objects are ignored. This means that one can freely transform the target or modified object after binding, without affecting the modified object. The modified mesh will only pick up changes to the target object's mesh itself. The object to which to bind. (This setting is unavailable after binding) Unbind While there are no restrictions with regard to the modified mesh, the target object's mesh has a few constraints, which if not followed, will prevent a successful bind. The target mesh has to follow these conditions: 