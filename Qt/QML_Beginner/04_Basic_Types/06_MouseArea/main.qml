import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
//    Rectangle{
//        width: 300
//        height: 300
//        anchors.centerIn: parent
//        color: "red"

//        MouseArea{
//             anchors.fill: parent
//             hoverEnabled: true
//             acceptedButtons: Qt.LeftButton | Qt.RightButton
//             onClicked: {
//                 if (mouse.button === Qt.LeftButton){
//                     console.log("Left Clicked")
//                 }
//                 if (mouse.button === Qt.RightButton){
//                     console.log("Right Clicked")
//                 }



//             }
//            onEntered: parent.color = "orange"
//            onExited: parent.color = "purple"

//            onPositionChanged: console.log("x: " + mouse.x + ",y: " +  mouse.y)

//        }
//    }

    Rectangle{
        width: 100
        height: 100
        anchors.centerIn: parent
        color: tap.pressed ? "red": "blue"
        TapHandler{
            id: tap

        }
    }
}
