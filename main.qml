import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

import QtCharts 2.3

Window {
    id: window
    visible: true
    width: 1280
    height: 750
    title: qsTr("Hello World")

    Rectangle{
        height: 750
        color: "#33383d"
        anchors.fill : parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#33383D" }
            GradientStop {
                position: 0.79401
                color: "#33383d"
            }

            GradientStop { position: 1.0; color: "#1C1D20" }

        }
    }

    ColumnLayout {
        id: columnLayout
        height: 100
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
        spacing: 20

        ControlSlot {
        }

        ControlSlot {
        }

        ControlSlot {
        }

        ControlSlot {
        }
    }



}



/*##^## Designer {
    D{i:5;anchors_height:100;anchors_width:100}
}
 ##^##*/
