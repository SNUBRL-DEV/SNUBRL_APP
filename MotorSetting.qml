import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0

Item {
    property string settingLabel: ""
    width: 450
    height: 100

    Rectangle {
        width : parent.width - 2
        height : parent.height - 2
        anchors.centerIn: parent

        radius : height * 0.2
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 1
        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
            horizontalOffset: 4
            verticalOffset: 4
            samples: 25
        }
    }

    Rectangle {
        width : parent.width - 2
        height : parent.height - 2
        anchors.centerIn: parent

        radius : height * 0.2
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: -1
        opacity: 0.1
        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
            horizontalOffset: -4
            verticalOffset: -4
            samples: 25
            color: "white"
        }
    }
    Rectangle {
        id : motorinfo
        color: "#34393e"
        radius: height * 0.2
        anchors.fill: parent
        anchors.verticalCenter: parent.verticalCenter
        Text {
            x: 10
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: 0
            width: 164
            height: 72
            id: name
            color: "#ffffff"
            text: settingLabel
            font {
                weight: Font.DemiBold
                pointSize: 12
                family : "Segoe UI"
            }
        }

        RowLayout{
            id: row_setting
            spacing: 30
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.margins: 15

            BtnSlim {
                x: 120
                y: 36
                width: 84
                height: 29
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                btnLabel : "193.2"
                btnLight: false
            }

            BtnFat{
                x: 210
                y: 20
                btnLabel : "Enter"
            }
        }

    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.33}
}
##^##*/
