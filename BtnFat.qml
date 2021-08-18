import QtQuick 2.12
import QtGraphicalEffects 1.0

Item {

    property string btnLabel: ""
    property bool btnLight: true
    property bool btnDisable: false
    property int btnSize: 60


    height: btnSize
    property alias rect: rect
    width: height * 2.2

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Rectangle {
        anchors.centerIn: parent
        width: parent.width - 4
        height: parent.height - 4
        color: "#0f1418"
        radius: height * 0.4
        opacity: 0.1
        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
            horizontalOffset: -5
            verticalOffset: -5
            samples: 25
            color: "white"
        }
    }

    Rectangle {
        anchors.centerIn: parent
        width: parent.width - 2
        height: parent.height - 2
        radius: height * 0.4
        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
            horizontalOffset: 4
            verticalOffset: 4
            samples: 25
        }
    }


    Rectangle {
        anchors.centerIn: parent
        width: parent.height
        height: parent.width
        color: "#000000"
        radius: width * 0.4
        border.width: 0
        rotation: 90
        gradient: Gradient {
            GradientStop { position: 0.0; color: btnLight ? "#0B6AAC" : "#1A1D21" }
            GradientStop { position: 1.0; color: btnLight ? "#1A87C9" : "#2E3238" }
        }
    }

    Rectangle {
        id: rect
        anchors.centerIn: parent
        width: parent.height - 4
        height: parent.width - 4
        radius: width * 0.4
        border.width: 0
        rotation: mouseArea.pressed && !btnDisable ? -90 : 90
        gradient: Gradient {
            GradientStop { position: 0.0; color: btnLight ? "#0B6AAC" : "#1A1D21" }
            GradientStop { position: 1.0; color: btnLight ? "#1A87C9" : "#2E3238" }
        }
    }

    Text {
        anchors.fill: parent
        id: name
        color: btnDisable ? "#7F7F80" : "#ffffff"
        text: btnLabel
        font {
            weight: Font.DemiBold
            pointSize: 12
            family : "Segoe UI"
        }
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}
