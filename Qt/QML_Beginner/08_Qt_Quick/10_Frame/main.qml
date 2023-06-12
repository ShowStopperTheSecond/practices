import QtQuick
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Popup{
        id: popupWindow
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        anchors.centerIn: parent
        modal: true

        ColumnLayout {
            spacing: 20
            Label {
                text: qsTr("Fruit") + ": " + checkBox.checked
            }

            Label {
                text: qsTr("IceCream")+ ": " + checkBox1.checked
            }

            Label {
                text: qsTr("Juice")+ ": " + checkBox2.checked
            }

            Button {
                text: qsTr("Close")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: popupWindow.close()

            }
        }

    }

    Frame {
        id: frame
        width: 190
        height: 326
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter



        ColumnLayout {
            id: columnLayout
            anchors.fill: parent

            CheckBox {
                id: checkBox
                text: qsTr("Fruit")
            }

            CheckBox {
                id: checkBox1
                text: qsTr("IceCream")
            }

            CheckBox {
                id: checkBox2
                text: qsTr("Juice")
            }

            Button {
                id: button
                text: qsTr("Save")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: popupWindow.open()
            }
        }
    }
}
