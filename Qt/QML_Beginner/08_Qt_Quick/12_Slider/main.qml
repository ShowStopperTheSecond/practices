import QtQuick
import QtQuick.Layouts 6.3
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    RowLayout {
        id: rowLayout
        width: 246
        height: 52
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("Value")
            font.pointSize: 20
            font.bold: true
        }

        Slider {
            id: slider
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            value: 0.5
            onValueChanged: label.text = Math.round(value * 100)
        }
    }
}
