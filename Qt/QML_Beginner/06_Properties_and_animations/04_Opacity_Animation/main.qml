import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "black"
    Image{
        id: ghost
        anchors.fill: parent
        source: "qrc:/photos/wp3114563.jpg"
        opacity: 0
    }
    SequentialAnimation{
        running: true
        loops: Animation.Infinite
        OpacityAnimator{
            target: ghost
            from: 0
            to: 1
            duration: 3000
        }
        OpacityAnimator{
            target: ghost
            from: 1
            to: 0
            duration: 3000
        }
    }
}
