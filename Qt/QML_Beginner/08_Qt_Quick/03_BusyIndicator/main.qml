import QtQuick
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Label {
        id: label
        y: 107
        text: "Running: " + busyIndicator.running
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: mouseArea
            width: 100
            height: 100
            onClicked: busyIndicator.running = ! busyIndicator.running
        }
    }

    BusyIndicator {
        id: busyIndicator
        width: 241
        height: 189
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
