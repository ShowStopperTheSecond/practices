import QtQuick
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        id: row
        x: 20
        y: 21
        width: 606
        height: 434
        anchors.fill: root
        padding: 16
        spacing: 12
        layoutDirection: Qt.RightToLeft

        Column {
            id: column
            layer.smooth: true
            layer.mipmap: true
            layer.wrapMode: ShaderEffectSource.RepeatHorizontally

            CheckBox {
                id: checkBox
                text: qsTr("Normal")
                onCheckedChanged: text1.text = "Normal: " + checkState
            }

            CheckBox {
                id: checkBox1
                text: qsTr("Not chackable")
                checkable: false
                onCheckedChanged: text1.text = "Not chackable: " + checkState
            }

            CheckBox {
                id: checkBox2
                text: qsTr("TriState")
                tristate: true
                checkable: false
                onCheckedChanged: text1.text = "TriState: " + checkState
            }

            CheckBox {
                id: checkBox3
                text: qsTr("Exclusive")
                autoExclusive: true
                onCheckedChanged: text1.text = "Exclusive: " + checkState

            }

            CheckBox {
                id: checkBox4
                text: qsTr("Repeat")
                autoRepeat: true
                checkable: true
                onCheckedChanged: text1.text = "Repeat: " + checkState
            }

            Button {
                id: button
                text: qsTr("Reset")
                onClicked: {
                    checkBox.checkState = Qt.Unchecked
                    checkBox1.checkState = Qt.Unchecked
                    checkBox2.checkState = Qt.Unchecked
                    checkBox3.checkState = Qt.Unchecked
                    checkBox4.checkState = Qt.Unchecked
                }
            }
        }

        Text {
            id: text1
            width: 21
            text: qsTr("WTF")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            wrapMode: Text.NoWrap
            anchors.horizontalCenter: parent.horizontalCenter
            fontSizeMode: Text.FixedSize
        }
    }
}
