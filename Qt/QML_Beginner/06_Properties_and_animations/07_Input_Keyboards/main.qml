import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        anchors.fill: parent
        color: "black"
        focus: true

        Rectangle{
            id: object
            width: 300
            height: 300
            color: "red"
            anchors.centerIn: parent
        }

        Rectangle{
            width: 300
            height: 300
            color: "transparent"
            border.color: "yellow"
            border.width: 5
            anchors.centerIn: parent
        }

        Keys.onUpPressed: object.height += 100
        Keys.onDownPressed: object.height -= 100
        Keys.onRightPressed: object.width += 100
        Keys.onLeftPressed: object.width -= 100

    }
}
