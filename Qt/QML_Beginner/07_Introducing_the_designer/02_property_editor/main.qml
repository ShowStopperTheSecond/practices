import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 120
        y: 120
        width: 200
        height: 200
        color: "#637029"
        radius: 48
        border.color: "#000000"
        border.width: 9

        Rectangle {
            id: rectangle1
            x: 255
            y: 0
            width: 200
            height: 190
            color: "#d0b0b0b0"
            radius: 48
            border.color: "#000000"
            border.width: 15
        }
    }
}
