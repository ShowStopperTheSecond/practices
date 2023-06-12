
import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        anchors.centerIn: parent
        width: 300
        height: 400
        color: "brown"
        clip: false



        Flow{
            spacing: -50
            flow: Flow.LeftToRight
            Shape{color:"blue"}
            Shape{color:"green"}
            Shape{color:"black"}
            Shape{color:"white"}


        }


    }
}
