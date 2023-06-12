import QtQuick 2.15

Item {
    id: root
    property color normal_color: "green"
    property color hover_color: "purple"
    property color clicked_color: "orange"
    property string caption: "caption"
    property color caption_normal_color: "white"
    property color caption_clicked_color: "black"
    property alias button: rectangle
    property alias mouse: mouseares
    property alias text: text


    Rectangle{
        id: rectangle
        width: root.width
        height: root.height
        color: root.normal_color
        Text {
            id:text
            text: root.caption
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 25
        }
        MouseArea{
            id: mouseares
            hoverEnabled: true
            anchors.fill: parent
            onEntered: rectangle.color = root.hover_color
            onExited: rectangle.color = root.normal_color
            onPressed: {
                rectangle.color = root.clicked_color
            }
            onReleased: {
                rectangle.color = root.hover_color
            }
        }
    }


}
