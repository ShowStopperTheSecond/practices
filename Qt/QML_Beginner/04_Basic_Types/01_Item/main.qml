
import QtQuick 2.15
import QtQuick.Window 2.15
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item{
        anchors.centerIn: parent
        height: 300
        width: 300

        Rectangle{
            anchors.fill: parent
            color: "red"
        }

    }
}
