import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 113
        y: 129
        color: "#2534ff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.bottom
        anchors.bottom: parent.bottom
        anchors.rightMargin: 91
        anchors.bottomMargin: 81
        anchors.leftMargin: 58
        anchors.topMargin: -416
    }
}
