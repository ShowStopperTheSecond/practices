import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    property string specialKey: "value"
    property color droppedOn: "green"
    property color droppedOff: "red"
    property color ballOn: "yellow"
    property color ballOff: "orange"
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: ball
        color: ballOff
        height: 100
        width: 100
        radius: width
        border.color: "black"
        border.width: 5
        x: root.width/4
        y: root.height/4
        z: 3

        Drag.active: drag_area.drag.active

        Text {
            anchors.centerIn: parent
            text: "x: " + Math.round(ball.x) + " y: " + Math.round(ball.y)
        }

        MouseArea{
            id: drag_area
            anchors.fill: ball
            Drag.active: true
            onPressed:{
                ball.color = ballOn
                goal.color = droppedOff
            }
            onReleased:{
                ball.color = ballOff
                ball.Drag.drop()
            }
            drag.target: ball

        }



    }

    Row{
//        anchors.centerIn: root

        Rectangle{
            id: src
            width: root.width/2
            height: root.height
            color: "white"
        }

        Rectangle{
            id: goal
            width: root.width/2
            height: root.height
            //            anchors.fill: root
            color: "red"
            border.width: 5
            border.color: "black"
            DropArea{
                anchors.fill: parent
                Drag.keys: [specialKey]
                onDropped: {
                    parent.color = droppedOn
                }

            }
        }

    }
}
