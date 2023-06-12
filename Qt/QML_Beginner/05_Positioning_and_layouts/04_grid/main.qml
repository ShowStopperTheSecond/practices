import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid{
        anchors.centerIn: parent
        spacing: 3
        rows:3
        columns: 3
        rowSpacing: 10
        Shape{color:"green"}
        Shape{color:"blue"}
        Shape{color:"red"}
        Shape{color:"yellow"}
        Shape{color:"orange"}
        Shape{color:"gray"}
        Shape{color:"black"}
        Shape{color:"pink"}
        Shape{color:"silver"}
        Shape{color:"brown"}
        Shape{color:"purple"}
        Shape{color:"violet"}

    }
}
