import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Row{
        spacing: 10
        anchors.centerIn: parent
        Rectangle{
            width: 300
            height: 300
            radius: width
            border.color: "red"
            border.width: 20
            antialiasing: false
            Text {
                anchors.centerIn: parent
                text: qsTr("AntiAliasing Off")
            }
        }

        Rectangle{
            width: 300
            height: 300
            radius: width
            border.color: "red"
            border.width: 20
            Text {
                anchors.centerIn: parent
                text: qsTr("AntiAliasing ON")
            }
        }
    }
}
