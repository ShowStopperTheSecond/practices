import QtQuick 2.15

Item {
    property string label: "Label"
    property color color: "green"
    id: root
    width: 100
    height: 100

    Rectangle{

        anchors.fill: parent
        color: root.color
        Text {
            text: root.label
            anchors.centerIn: parent
            font.pixelSize: 30
        }
    }
    MouseArea{
        anchors.fill: root
//        drag.target: root.parent
        drag.target: root
        onClicked: root.z++
    }
}
