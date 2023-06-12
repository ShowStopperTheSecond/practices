import QtQuick 2.15

Item {
    id: root
    property var caption: "Button"
    property color normalColor: "#808080"
    property color clickedColor: "blue"
    width: 150
    height:75
    Rectangle{
        color: normalColor;
        width: root.width
        height: root.height
        Text {
            anchors.centerIn: parent

            text: qsTr(caption)
        }
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onPressed: parent.color = root.clickedColor
            onReleased: parent.color = root.normalColor
            onEntered: {
                parent.border.color = "purple"
                parent.border.width = 3
            }

            onExited: parent.border.width = 0

        }
    }
}
