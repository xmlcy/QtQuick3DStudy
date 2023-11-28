import QtQuick
import QtQuick3D

Node {
    id: node
    property alias morphTarget7Weight: morphTarget7.weight
    property alias morphTargetWeight: morphTarget.weight

    // Resources
    Texture {
        id: __texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/."
    }
    MorphTarget {
        id: morphTarget
        weight: 1
        attributes: MorphTarget.Position | MorphTarget.Normal
    }
    MorphTarget {
        id: morphTarget7
        weight: 1
        attributes: MorphTarget.Position | MorphTarget.Normal
    }
    MorphTarget {
        id: morphTarget8
        weight: 1
        attributes: MorphTarget.Position | MorphTarget.Normal
    }
    MorphTarget {
        id: morphTarget9
        weight: 1
        attributes: MorphTarget.Position | MorphTarget.Normal
    }
    MorphTarget {
        id: morphTarget10
        weight: 1
        attributes: MorphTarget.Position | MorphTarget.Normal
    }
    MorphTarget {
        id: morphTarget11
        weight: 1
        attributes: MorphTarget.Position | MorphTarget.Normal
    }
    MorphTarget {
        id: morphTarget12
        weight: 1
        attributes: MorphTarget.Position | MorphTarget.Normal
    }
    MorphTarget {
        id: morphTarget13
        weight: 1
        attributes: MorphTarget.Position | MorphTarget.Normal
    }

    // Nodes:
    Node {
        id: rootNode
        Model {
            id: fbhead
            source: "meshes/fbhead_mesh_001.mesh"
            materials: fbhead_preview_mat_material
            morphTargets: [
                morphTarget,
                morphTarget7,
                morphTarget8,
                morphTarget9,
                morphTarget10,
                morphTarget11,
                morphTarget12,
                morphTarget13
            ]
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: fbhead_preview_mat_material
            objectName: "fbhead_preview_mat_material"
            baseColor: "#ffcccccc"
            baseColorMap: __texture
        }
    }

    // Animations:
}
