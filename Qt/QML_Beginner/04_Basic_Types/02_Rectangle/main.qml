import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle{
        anchors.centerIn: parent
        width: 200
        height: 200
        color: "red"
        radius: 30
        border.width: 10
        border.color: 'black'

        gradient: Gradient{
            GradientStop{
            position: 0.3
            color: "blue"
            }
            GradientStop{
            position: 1.0
            color: "purple"
            }


        }

    }
}
