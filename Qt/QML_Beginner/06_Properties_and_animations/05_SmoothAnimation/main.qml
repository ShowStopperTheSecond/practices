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
            id: src_rect
            width: 100
            height: 100
            radius: width
            color: "yellow"
            x: dst_rect.x - 10
            y: dst_rect.y - 10
            Behavior on x{SmoothedAnimation{velocity: 150}}
            Behavior on y{SmoothedAnimation{velocity: 150}}
        }

        Rectangle{
            id: dst_rect
            width: 80
            height: 80
            radius: width
            color: "red"
            x: parent.height/2 - height/2
            y: parent.width/2 - width/2
        }
        Keys.onRightPressed: dst_rect.x +=100
        Keys.onLeftPressed: dst_rect.x -= 100
        Keys.onUpPressed: dst_rect.y -=100
        Keys.onDownPressed: dst_rect.y += 100
    }

}
