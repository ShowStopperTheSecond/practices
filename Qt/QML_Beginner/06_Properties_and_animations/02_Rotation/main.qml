import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        id: object
        width: 300
        height: 300
        anchors.centerIn: parent
        color: "purple"
        Text {
            id: name
            text: Math.round(object.rotation)
            anchors.centerIn: parent
            font.pixelSize: 60
            font.bold: true
//            color: "darkred"
        }
        RotationAnimation{
            id: rotation_animation
            target: object
            from: 0
//            direction: RotationAnimation.Counterclockwise
            to: 90
            duration: 360
            loops: RotationAnimation.Infinite
            running: true
        }
        MouseArea{
            anchors.fill: object

            onClicked: {
                if (rotation_animation.paused){
                    rotation_animation.resume()
                }else{
                    rotation_animation.pause()
                }
            }
        }

    }
}
