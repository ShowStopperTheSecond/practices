import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Shape{
        //        anchors.centerIn: parent
        id: centralShape
        label: "Center"
        x:100
        y:100
        Rectangle{
            width: 25
            height: 25
            color: "pink"
            anchors.right: centralShape.right
            anchors.top:  centralShape.top
        }
    }

    Shape{
        id: rightShape
        label: "left"
//        anchors.right: centralShape.left
//        anchors.bottom: centralShape.bottom
        color: "blue"
    }





}
