import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    TextInput{
        id: my_text
        anchors.centerIn: parent
        font.pixelSize: 27
        text: "Hello world!"
    }

    TextInput{
        anchors.top: parent
        font.pixelSize: 29
        color: "red"
        text: my_text.text

    }
}
