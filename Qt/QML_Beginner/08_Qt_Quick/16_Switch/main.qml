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
        x: 236
        y: 214
        anchors.fill: parent

        Image {
            id: borderImage
            width: 500
            height: 500
            source: "sad_face"
            sourceSize.width: 400
            fillMode: Image.PreserveAspectFit
//            fillMode: Image.PreserveAspectFit
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Switch {
            id: switch1
            text: qsTr("Switch")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onCheckedChanged: {
                if (checked){
                    borderImage.source="happy_face.jpg"
                }
                else{
                    borderImage.source="sad_face.png"
                }

            }

        }
    }
}
