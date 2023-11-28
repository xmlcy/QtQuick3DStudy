

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import CyberGenieDesign
import Quick3DAssets.Ulaa 1.0

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
            }

            PerspectiveCamera {
                id: sceneCamera
                z: 350
            }

            Model {
                id: cubeModel
                eulerRotation.y: 45
                eulerRotation.x: 30
                materials: defaultMaterial
                source: "#Cube"
            }

            Ulaa {
                id: ulaa
                eulerRotation.x: 10
                morphTarget7Weight: l_eye.value
                morphTargetWeight: r_eye.value
            }
        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }

    Slider {
        id: l_eye
        value: 0.5
    }

    Slider {
        id: r_eye
        x: 440
        y: 0
        value: 0.5
    }

    Text {
        text: qsTr("Hello CyberGenieDesign")
        anchors.top: parent.top
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 12
        font.family: Constants.font.family
    }
}
