import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: parent_window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        id: object
        height: 100
        width: 100
        color: "blue"
        x: 0
        y: parent_window.height/2 - height/2

        PropertyAnimation{
            id: rightToLeft
            property: 'x'
            target: object
            duration: 1000
            to: parent_window.width - object.width
        }

        PropertyAnimation{
            id:leftToRight
            property: 'x'
            target: object
            duration: 1000
            to: 0
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                if (object.x == 0 ){
                    rightToLeft.start()
                }else{
                    console.log(object.x)
                    leftToRight.start()
                }
            }
        }
    }
}
