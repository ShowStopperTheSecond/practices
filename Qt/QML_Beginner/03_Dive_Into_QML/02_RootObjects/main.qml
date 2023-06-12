import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rect
        width: parent.width/2
        height: parent.width/2
        anchors.centerIn: parent
        color: "red"


        Rectangle{
            id: rect2
            width: parent.width/2
            height: parent.width/2
            color: "blue"
            anchors.centerIn: parent
        }

    }
}
