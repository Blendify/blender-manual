*****************
Viewport Overlays
*****************

Using the Viewport Overlays pop-over settings for the overlays can be configured.
There is a switch to turn off all overlays for the 3D View.

The options that are visible in the pop-over depends on the mode that the 3D View
is in.

Object Mode
-----------

The next options are always present, independent the mode

Guides
    Grid
        Show grid in ortho side view
    Floor
        Show the ground plane

        X
            Show the X-Axis line
        Y
            Show the Y-Axis line
        Z
            Show the Z-Axis line

    Scale
        The distance between lines in the grid/floor
    Subdivision
        The number of subdivisions between grid lines.

    Text Info
        Show text overlay
    3D Cursor
        Show the 3D Cursor Overlay
    Annotations 
        Show the annotation overlay

Objects
    Extra
        Show details of objects including empty wires, cameras and other
        visual guides.
    Relationship Lines
        Show dashed lines indicating parents or constraint relationships
    Outline Selected
        Show an outline highlight around selected objects
    Bones
        Show Bones. Disable to only show motion path
    Motion Paths
        Show the motion path overlay.
    Origin
        Show the object center of the active object
    Origin (All)
        Show the object center of all objects

Geometry
    Wireframe
        Show the face edges overlay

        Wireframe
            Adjust the number of wires to display. 1.0 = show all wires

    Face Orientation
        Show the face orientation overlay. In the face orientation overlay all
        faces where the face normal point towards the camera are colored blue. All
        faces where the face normal point away from the camera are colored red.
        With this overlay it is easy to detect the orientation of the face normals.

Motion Tracking
    Show the motion tracking overlay

    Camera Path
        Show the reconstruction camera path
    Marker Names
        Show the names for reconstructed track objects
    
    Tracks
        Change the display of the reconstructed tracks. Possible options are

        - Plain Axes
        - Arrows
        - Single Arrow
        - Circle
        - Cube
        - Sphere
        - Cone

    Size
        Change the display size of the recontructed tracks

Mesh Edit Mode
--------------

The next options are available when in Edit Mesh Mode

Mesh Edit Mode
    Edges
        Highlight the selected edges
    Faces 
        Highlight selected faces
    Center
        Display face center.
    Creases
        Display the creases created for subdivision surface modifier
    Sharp
        Display sharp edges, used with the edge split modifier
    Bevel
        Display weights created for the bevel modifier
    Seams
        Display the UV unwrapping seams

Shading
    Hidden Wire
        Use hidden wire display
    Vertex Groups Weights
        Display weights in edit mode

        Zero Weights
            Display unweighted vertices

            - None
            - Active: Show vertices with no weights in the active group
            - All: Show vertices with no weights in any group
    
    Mesh Analysis
        Show the mesh analysis overlay

        Type
            Type of data to visualize. Possible options are:

            *Overhang*
                Minimum
                    Minimum angle to display
                Maximum
                    Maximum angle to display
                Axis
                    Axis and direction to use as the bases to calculate
                    the angle to visualize.
            *Thickness*
                Minimum
                    Minimum thickness to display
                Maximum
                    Maximum thickness to display
                Samples
                    Number of samples to use to calculate the thickness
            *Intersect*
                At what places does the mesh intersect with itself.
            *Distortion*
                Minimum
                    Minimum distortion to display
                Maximum
                    Maximum distortion to display
            *Sharp*
                Minimum
                    Minimum angle to display
                Maximum
                    Maximum angle to display

Measurement
    Edge Length
        Display the length of selected edges as part of the text info
        overlay
    Edge Angle
        Display the angle of selected edges as part of the text info overlay
    Face Area
        Display the area of selected faces as part of the text info overlay
    Face Angles
        Display the angles of the corners of selected faces in the text info
        overlay
Normals
    Display vertex normals
    Display face normals at vertices
    Display face normals 

    Size
        The size to draw the selected normals

Developer
    Indices
        Display the indexes of selected vertices, edges and faces.
        
Freestyle
    Edge Marks
        Display Freestyle edge marks, used with the Freestyle renderer 
    Face Marks
        Display Freestyle face marks, used with the Freestyle renderer


Sculpt Mode
-----------

Show Diffuse Color
    Show diffuse color of object and overlay sculpt mask on top of it

Mask
    Show mask as overlay on object. The opacity of the overlay can be controlled.


Vertex Paint
------------
Opacity
    The opacity of the overlay
Show Wire
    Use wireframe display in paint modes


Weight Paint
------------
Opacity
    The opacity of the overlay
Zero Weights
    Zero Weights
        Display unweighted vertices

        - None
        - Active: Show vertices with no weights in the active group
        - All: Show vertices with no weights in any group
Show Weight Contours
    Show contour lines formed by points with the same interpolated weight
Show Wire
    Use wireframe display in paint modes

Texture Paint
-------------
Opacity
    The opacity of the overlay

Pose Mode
---------
Fade Geometry
    Show the bones on top and face other geometry to the back. The opacity can 
    be controlled by the slider.

Edit Grease Pencil
------------------

Onion Skin
    Show ghosts of the keyframes before and after the current frame
Canvas
    Display a grid over grease pencil paper. The opacity of the grid can be
    controlled by a slider.
Fade 3D Objects
    Cover all viewport with a full color layer to improve visibility while 
    drawing over complex scenes. The opacity of the paper can be adjusted.
Edit Lines
    Show edit lines when editing strokes
Show Edit Lines only in multiframe
    Only show edit lines for additional frames
Vertex Opacity
    Opacity for edit vertices
