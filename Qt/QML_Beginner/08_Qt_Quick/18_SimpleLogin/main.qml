import QtQuick
import QtQuick.Layouts 6.3
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property string username: "javid"
    property string password: "javid"
    property string status: "welcome"

    Popup{
        id: statusWindow
        anchors.centerIn: parent
        focus: true
        modal: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        Label{
            text: status
            font.pixelSize: 120
        }
    }

    ColumnLayout {
        id: columnLayout
        width: 463
        height: 306
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: label
                text: qsTr("UserName")
                font.pointSize: 30
                font.bold: true
            }

            TextField {
                id: usernameTxt
                font.pointSize: 30
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                placeholderText: qsTr("User Name")
            }
        }

        RowLayout {
            id: rowLayout1
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: label1
                text: qsTr("Password")
                font.pointSize: 30
                font.bold: true
            }

            TextField {
                id: passwordTxt
                font.pointSize: 30
//                anchors.left: textField.left
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                placeholderText: qsTr("Password")
                echoMode: TextInput.Password
            }
        }

        Button {
            id: button
            text: qsTr("Login")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onPressed: {
                if (usernameTxt.text === username & passwordTxt.text === password){
                    status = "Unlocked"
                    statusWindow.open()

                }else{
                    status = "Failed to unlock! Try again!"
                    statusWindow.open()
                }
            }
        }

    }
}
