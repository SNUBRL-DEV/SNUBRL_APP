import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0

Item {

    height: 170
    width: 640

    Rectangle {
        width : parent.width - 2
        height : parent.height - 2
        anchors.centerIn: parent

        radius : height * 0.2
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
        id : motorslot

        color: "#34393e"
        radius: height * 0.2
        anchors.fill: parent

        RowLayout {
            id: row
            spacing: 30
            anchors.fill: parent
            anchors.margins: 15

            BtnRound{
                btnLabel : "M2"
                btnSize : 60
            }

            Column {
                id: column
                spacing: 10

                BtnRound{
                    btnLabel : "Pos"
                    btnLight : false
                    btnSize : 40
                }

                BtnRound{
                    btnLabel : "Vel"
                    btnSize : 40
                }

                BtnRound{
                    btnLabel : "Tor"
                    btnLight : false
                    btnSize : 40
                }

            }

            ColumnLayout {
                id: column2
                spacing: 10
                Layout.fillHeight: true
                Layout.fillWidth: true

                BtnSlim {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    btnLabel : "193.2"
                    btnLight: false
                }

                GradientSlider {
                    height: 78
                    Layout.fillWidth: true
                    sliderHeight : 100
                }
            }

            Column {
                id: column1
                spacing: 10

                BtnFat{
                    btnLabel : "Enter"
                }

                BtnFat{
                    btnLabel : "Stop"
                    btnLight: false
                }
            }

        }

    }

}
