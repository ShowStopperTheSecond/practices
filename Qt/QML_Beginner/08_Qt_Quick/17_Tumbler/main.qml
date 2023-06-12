import QtQuick
import QtQuick.Layouts 6.3
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property int pass: 000

    Popup{
        id: messageBox
        property string message: "No Message"
        focus: true
        modal: true
        anchors.centerIn: parent
        closePolicy: Popup.CloseOnEscape| Popup.CloseOnPressOutside

        Label{
            anchors.fill: parent
            font.pixelSize: 100
            text: messageBox.message
        }
    }

    ColumnLayout {
        id: columnLayout
        width: 386
        height: 350
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter


        Label {
            id: label
            text: pass
            font.pointSize: 50
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }
        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Tumbler {
                id: hundreds
                model: 10
                onCurrentIndexChanged: pass = hundreds.currentIndex*100 + tens.currentIndex*10 + ones.currentIndex
            }

            Tumbler {
                id: tens
                model: 10
                onCurrentIndexChanged: pass = hundreds.currentIndex*100 + tens.currentIndex*10 + ones.currentIndex
            }

            Tumbler {
                id: ones
                model: 10
                onCurrentIndexChanged: pass = hundreds.currentIndex*100 + tens.currentIndex*10 + ones.currentIndex
            }
        }

        Button {
            id: button
            text: qsTr("Check")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                if (pass === 123){
                    messageBox.message = "Welcome!"
                    messageBox.open()
                }else{
                    messageBox.message = "Try again!"
                    messageBox.open()
                }
            }



        }
    }
}
