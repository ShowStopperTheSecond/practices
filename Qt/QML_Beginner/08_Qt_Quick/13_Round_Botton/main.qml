import QtQuick
import QtQuick.Layouts 6.3
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property int value: 0
    RowLayout {
        id: rowLayout
        width: 176
        height: 106
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        RoundButton {
            id: roundButton
            text: "+"
            Layout.fillWidth: false
            onClicked: value ++
        }

        Label {
            id: label
            text: "#value#"
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: false
        }

        RoundButton {
            id: roundButton1
            text: "-"
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.fillWidth: false
            onClicked: value --
        }

    }
}
