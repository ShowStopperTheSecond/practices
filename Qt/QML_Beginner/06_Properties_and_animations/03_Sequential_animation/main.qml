import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        id: object
        height:300
        width: 300
        color: "red"
        anchors.centerIn: parent
        Text {
            text: Math.round(object.rotation)
            color: "darkred"
            font.pixelSize: 60
            font.bold: true
            anchors.centerIn: parent
        }
        RotationAnimation{
            loops: Animation.Infinite
            target: object
            running: true
            to: 360
            duration: 3600
        }

        SequentialAnimation{
            id: animation
            loops: Animation.Infinite
            running: true
            ScaleAnimator{
                target: object
                from: .5
                to: 1
                duration: 1000
            }
            ScaleAnimator{
                target: object
                from: 1
                to: .5
                duration: 1000
            }


        }

    }


}
