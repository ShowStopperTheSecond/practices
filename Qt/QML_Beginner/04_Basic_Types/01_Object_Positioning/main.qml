import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        id: rectangle
        width: 100
        height: 100
        //        anchors.centerIn:  parent
        color: "red"

//        anchors.centerIn: parent


        function update(){
            console.log("x: " + Math.round(x) + " y: " + Math.round(y))
            label.text = "x: " + Math.round(x) + " y: " + Math.round(y)
        }
        onXChanged: update()
        onYChanged: update()
        Component.onCompleted: update()
        Text {
            id: label
            anchors.centerIn: parent
        }

        MouseArea{
            id: mouse
            anchors.fill: rectangle
            drag.target: rectangle

        }
    }
}
