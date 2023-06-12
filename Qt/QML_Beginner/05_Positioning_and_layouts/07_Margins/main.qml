import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        height:400
        width:300
        color: "red"
        anchors.centerIn: parent
        Rectangle{
            height:100
            width:100
            color: "blue"
            anchors.left: parent.left
            anchors.top: parent.top
//            anchors.margins: 30
            anchors.leftMargin: 30
            anchors.topMargin: 10


        }
    }
}
