import QtQuick
import QtQuick.Controls

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    BusyIndicator {
        id: busyIndicator
        width: 174
        height: 218
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -55
        anchors.horizontalCenterOffset: 2
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: button
        x: 464
        y: 134
        text: qsTr("Button")
    }

    DelayButton {
        id: delayButton
        x: 492
        y: 268
        text: qsTr("Delay Button")
    }

    Control {
        id: control
        x: 90
        y: 400
    }

    CheckDelegate {
        id: checkDelegate
        x: 114
        y: 69
        text: qsTr("Check Delegate")
    }

    CheckBox {
        id: checkBox
        x: 102
        y: 188
        text: qsTr("Check Box")
    }

    Dial {
        id: dial
        x: 166
        y: 329
    }
}
