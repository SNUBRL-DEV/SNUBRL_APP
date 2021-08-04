import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0
import QtQuick.Shapes 1.12

Item {
    property int sliderWidth: 200
    property int sliderHeight : 60

    width: sliderWidth
    height: sliderHeight < 60 ? 60 : sliderHeight

    Rectangle {
        anchors.centerIn: myslider
        width: myslider.width-2
        height: myslider.height-2
        color: "#0f1418"
        radius: height * 0.5
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
        anchors.centerIn: myslider
        width: myslider.width-2
        height: myslider.height-2
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
        id: myslider
        width: parent.width
        height : parent.height - 55
        radius: height*0.5
        border.width: 0
        y: 5
        gradient: Gradient {
            orientation: Gradient.Horizontal
            GradientStop { position: 0.0; color: "#1A87C9" }
            GradientStop { position: 1.0; color: "#0B6AAC" }
        }
    }

    Item {
        width : myslider.width - myslider.height
        height : 40
        anchors.top: myslider.bottom
        anchors.topMargin: 0
        anchors.horizontalCenter: myslider.horizontalCenter

        property int mouseX : 0

        Shape {
            x : parent.mouseX - width * 0.5
            y : -myslider.height * 0.5

            ShapePath {
                id: shapePath
                property var d1 : 2
                property var d2 : 10
                property var l1 : myslider.height + 10
                property var l2 : 5
                property var l3 : 40

                fillColor: "white"
                startX: 0; startY: 0
                strokeWidth: -1
                PathLine { x: -shapePath.d1/2 ; y: -shapePath.l1/2 }
                PathLine { x: shapePath.d1/2 ; y: -shapePath.l1/2 }
                PathLine { x: shapePath.d1/2 ; y: shapePath.l1/2 }
                PathLine { x: shapePath.d2/2 ; y: shapePath.l1/2 + shapePath.l2 }
                PathLine { x: shapePath.d2/2 ; y: shapePath.l1/2 + shapePath.l2 + shapePath.l3 }
                PathLine { x: -shapePath.d2/2 ; y: shapePath.l1/2 + shapePath.l2 + shapePath.l3 }
                PathLine { x: -shapePath.d2/2 ; y: shapePath.l1/2 + shapePath.l2 }
                PathLine { x: -shapePath.d1/2 ; y: shapePath.l1/2 }
                PathLine { x: -shapePath.d1/2 ; y: -shapePath.l1/2 }
            }
        }

        MouseArea{
            anchors.fill: parent
            onPositionChanged: (m) => {
                                   let v = 0;
                                   if(m.x < 0){
                                       parent.mouseX = 0;
                                       v = 0;
                                   }else if(m.x > parent.width){
                                       parent.mouseX = parent.width;
                                       v = 1.0;
                                   }else{
                                       parent.mouseX = m.x;
                                       v = m.x/parent.width;
                                   }
                               }
        }

    }
}
