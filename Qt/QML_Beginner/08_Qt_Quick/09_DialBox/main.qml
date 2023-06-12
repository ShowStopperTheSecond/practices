import QtQuick
import QtQuick.Layouts 6.3
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        id: columnLayout
        width: 184
        height: 220
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("Value")
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 20
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Dial {
            id: dial
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
            onMoved: label.text = Math.round(dial.value*100)/100
        }
    }
}
