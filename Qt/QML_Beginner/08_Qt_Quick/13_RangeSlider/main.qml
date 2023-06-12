import QtQuick
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    RangeSlider {
        id: rangeSlider
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        second.value: 0.75
        first.value: 0.25
        first.onValueChanged:{
            label.text = "from " + Math.round(first.value*1000)/1000 + " to " + Math.round(second.value*1000)/1000
        }
        second.onValueChanged:{
            label.text = "from " + Math.round(first.value*1000)/1000 + " to " + Math.round(second.value*1000)/1000
        }

    }

    Label {
        id: label
        x: 462
        y: 241
        width: 71
        height: 34
        text: qsTr("0")
        anchors.bottom: rangeSlider.top
        horizontalAlignment: Text.AlignHCenter
        font.bold: true
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 20
    }
}
