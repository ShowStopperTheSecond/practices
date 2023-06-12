import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    color: "#ffffff"
    title: qsTr("Hello World")
    Text {
        id: element
        text: qsTr("Hello World! ")
        anchors.centerIn: parent
        font.pixelSize: 25
        anchors.verticalCenterOffset: -94
        anchors.horizontalCenterOffset: -14
    }
}
