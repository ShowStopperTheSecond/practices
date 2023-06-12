import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root
    Rectangle{
        id: rect
        height: 100
        width:100
        x: 0
        y: parent.height/2 - height/2
        color: area.pressed ? "red":"blue"
        MouseArea{
            id:area
            anchors.fill: parent
            onPressed: {
                rect.x = (rect.x==0)? root.width - width: 0

            }

    }
}
