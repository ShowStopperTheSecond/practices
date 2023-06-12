import QtQuick
import "Code.js" as Code
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root
    Component.onCompleted:{
        Code.onStartUp(root, rectangle)
        mouse.clicked.connect(Code.clicked)
    }



    Rectangle{
        id: rectangle
        height: 200
        width: 200
        y: root.height/2 - height/2
        color: "red"

        MouseArea{
            id: mouse
            anchors.fill: parent
        }

    }
}
