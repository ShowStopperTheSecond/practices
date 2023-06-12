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
        width: 478
        height: 132
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter


        SpinBox {
            id: spinBox
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Connections {
                target: spinBox
                onValueChanged: label.text = target.value
            }
        }
        Label {
            id: label
            text: qsTr("Value")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }
    }
}
