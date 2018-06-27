
***
STL
***

{{ScriptInfo
|name= Import/Export STL
|tooltip= Import and export of STL files
|menu= Operator > Import/Export STL | file > import/export > stl
|usage= Use the operator to import ASCII or binary files, you can select multiples files. For exporting you can select multiples objects and they will be exported as an single STL file. You can select between ASCII/binary file format (binary is more compact). You can also choose to enable or disable the modifiers during the export.
|version= 0
|blender= 2.56
|category= Import-Export
|author= Guillaume Bouchard (Guillaum) and al.
|license= Same as Blender
|distribution= Release
|note= Currently the script does not handle importing or exporting of normals. If someone needs support for exporting, file a bug report.
|exe= 
|download= builtins
|modules= os, itertools, mmap
|deps=
|data=
|bugtracker= http://projects.blender.org/tracker/?func=detail&atid=469&aid=22837&group_id=153
|link= 
|releaselog=
|issues= Does not handle normals import/export and does not handle endianess. There is nothing in the STL spec about it.
}}
