import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        anchors.centerIn: parent
        Shape{color:"blue"}
        Shape{color:"red"}
        Shape{color:"green"}
        spacing: 10

    }

    Row{

        anchors.centerIn: parent
        Shape{color:"purple"}
        Shape{color:"violet"}
        Shape{color:"yellow"}
        spacing: 10
    }
}
