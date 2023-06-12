import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle{
        width: 300
        height: 400
        anchors.centerIn: parent
        color: input_tap.pressed ? "red": "green"
        x: drag.xAxis
        y: drag.yAxis
        drag.active
    DragHandler{
        id:drag
    }

    TapHandler{
        id:input_tap
    }
    }
}
