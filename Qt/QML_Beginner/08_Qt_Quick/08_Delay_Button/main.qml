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

        id: row
        width: 452
        height: 192
        anchors.verticalCenter: parent.verticalCenter
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
//        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        DelayButton {
            id: delayButton
            delay: 3000
            text: qsTr("Delete Everything")
//            Layout.alignment: Qt.AlignHCenter

            onProgressChanged: {
                if(progress===0){
                    text =  qsTr("Delete Everything")
                    label.text = "Status"
                }

                label.text = Math.round(progress*100)/100
            }
            onActivated:{
                label.text = "Done"
                text = "BOOOOOM!"
            }
        }

        Label {
            id: label
            text: qsTr("Label")
//            Layout.alignment: Qt.AlignHCenter
        }

    }


}
