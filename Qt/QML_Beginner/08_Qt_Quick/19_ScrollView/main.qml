import QtQuick
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        ScrollView {
            id: scrollView
            width: 200
            height: 200
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            TextArea {
                id: textArea
                anchors.fill: parent
                textFormat: Text.RichText
                font.pointSize: 25
                placeholderText: qsTr("Text Area")
            }
        }

        TextField {
            id: textField
            font.pointSize: 25
            Layout.fillWidth: true
            placeholderText: qsTr("Text Field")
            Keys.onReturnPressed: {
                textArea.append(textField.text)
                textField.clear()
                scrollView.contentItem.contentY = textArea.height - scrollView.contentItem.height
            }
        }
    }

}
