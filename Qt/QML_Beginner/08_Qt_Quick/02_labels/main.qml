import QtQuick
import QtQuick.Controls 6.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Label {
        id: label
        x: 73
        y: 47
        width: 343
        height: 71
        text: qsTr("What the heck is going on here")
        wrapMode: Text.WordWrap
    }

    Label {
        id: label1
        x: 73
        y: 164
        width: 343
        height: 71
        text: "This is a test <font color='red'><br><b> HTML<i> Example</i></b></br></font>"
        wrapMode: Text.WordWrap
    }
}
