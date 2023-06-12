import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: root
    anchors.fill: parent
    ColumnLayout{
        anchors.fill: parent
        Label{
            text: globalName
            Layout.alignment: Qt.AlignHCenter
            font.pixelSize: 20
            font.bold: true
        }


    }


}
