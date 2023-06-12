import QtQuick
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        id: row
        width: parent.width
        height: rectangle1.height
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            id: rectangle1
            width: 200
            height: 200
            color: "#00007f"
            anchors.right: parent.right
            property string title: "title"
            anchors.rightMargin: 50

            Text {
                id: text1
                color: "#e5dede"
                text: parent.title
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 35
                font.strikeout: false
                font.underline: true
                font.italic: true
                font.weight: Font.Light
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Rectangle {
            id: rectangle
            width: 200
            height: 200
            color: "#00ff00"
            anchors.left: parent.left
            anchors.leftMargin: 50

            MouseArea {
                id: mouseArea
                anchors.fill: parent

                Connections {
                    target: mouseArea
                    onClicked: rectangle1.title = "Hello"
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0}D{i:5;invisible:true}D{i:1}
}
##^##*/
