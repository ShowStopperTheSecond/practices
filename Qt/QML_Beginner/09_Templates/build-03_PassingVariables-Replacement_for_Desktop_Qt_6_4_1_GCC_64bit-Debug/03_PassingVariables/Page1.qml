import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: root
    anchors.fill: parent
    ColumnLayout{
        anchors.fill: parent
        Label{
            text: "Please Enter your name:"
            Layout.alignment: Qt.AlignHCenter
            font.pixelSize: 20
            font.bold: true
        }
        TextField{
            id: enteredName
            text: ""
            Layout.alignment: Qt.AlignHCenter
        }
        Button{
            text: "Save"
            Layout.alignment: Qt.AlignHCenter
            onClicked: {
                console.log(enteredName.text)
                globalName = enteredName.text
            }
        }

    }


}
