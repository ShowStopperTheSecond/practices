
import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property var midX: height / 2
    property var midY: width / 2

    Shape{
        x:midX
        y:midY
        color: "blue"
    }
    Shape{
        x:midX
        y:midY
        color: "red"
    }
    Shape{
        x:midX
        y:midY
        color: "purple"
    }

}
