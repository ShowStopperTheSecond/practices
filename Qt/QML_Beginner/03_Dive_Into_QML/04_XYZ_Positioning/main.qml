import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        color: "red"
        width: 300
        height: 300
        x: 200
        y: 200
        z: 2


        Rectangle{
            color: "blue"
            width:300
            height:300
            x:50
            y:50
//            opacity: .5
            z:0
        }
    }

    Rectangle{
        color: "purple"
        width: 300
        height: 300
        x: 300
        y: 300
        z: 1
        opacity: .5
}
}
