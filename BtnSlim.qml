import QtQuick 2.12
import QtGraphicalEffects 1.0

Item {

    property string btnLabel: ""
    property bool btnLight: true
    property bool btnDisable : false
    property int btnSize: 15

    width: textMetrics.width * 1.4
    height: textMetrics.height * 1.2

    TextMetrics {
        id: textMetrics
        font {
            family: "Segoe UI"
            weight: Font.DemiBold
            pixelSize: btnSize
        }
        text: btnLabel
    }

    Rectangle {

        anchors.fill: parent
        color: "transparent"

        Rectangle {
            anchors.centerIn: parent
            width: parent.width - 2
            height: parent.height - 2
            color: "#0f1418"
            radius: height * 0.5
            opacity: 0.1
            layer.enabled: true
            layer.effect: DropShadow {
                transparentBorder: true
                horizontalOffset: -3
                verticalOffset: -3
                samples: 25
                color: "white"
            }
        }

        Rectangle {
            anchors.centerIn: parent
            width: parent.width - 2
            height: parent.height - 2
            radius: height * 0.5
            layer.enabled: true
            layer.effect: DropShadow {
                transparentBorder: true
                horizontalOffset: 4
                verticalOffset: 4
                samples: 25
            }
        }

        Rectangle {
            id: rect
            anchors.centerIn: parent
            width: parent.height
            height: parent.width
            radius: width * 0.5
            rotation: -90
            gradient: Gradient {
                GradientStop { position: 0.0; color: btnLight ? "#0B6AAC" : "#2E3238" }
                GradientStop { position: 1.0; color: btnLight ? "#1A87C9" : "#1A1D21" }
            }
        }

        Text {
            anchors.centerIn: parent
            text : textMetrics.text
            verticalAlignment: Text.AlignVCenter
            font : textMetrics.font
            color: btnDisable ? "#7F7F80" : "#ffffff"
        }
    }
}
