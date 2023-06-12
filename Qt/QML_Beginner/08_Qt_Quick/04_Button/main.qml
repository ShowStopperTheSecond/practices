import QtQuick
import QtQuick3D 6.4
import QtQuick.Controls 6.3

Window {
    id: root_windows
    width: 640
    height: 480
    visible: true
    property int button_width: 120
    property int button_height: 50
    property int top_bar_height: 30
    property int button_top_margin: 10
    title: qsTr("Hello World")
    color: "blue"
    Column{
        id: column
            width: parent.width
            height: parent.height
            spacing: 30
        Row {
            anchors{
                       horizontalCenter: parent.horizontalCenter
//                       verticalCenter: parent.verticalCenter
                   }

            id: row
            width: parent.width
            height: 50

            padding: 30
            spacing: 30
        Button {
            id: button
            x: 0
            y: 0
            width: button_width
            height: button_height
            text: qsTr("Img1")
            onClicked: image_viwer.source="1.jpg"


        }

        Button {
            id: button1
            x: 173
            y: 0
            width: button_width
            height: button_height
            text: qsTr("Img2")
            onClicked: image_viwer.source = "2.gif"
        }

        Button {
            id: button2
            x: 347
            y: 0
            width: button_width
            height: button_height
            text: qsTr("Img3")
            onClicked: image_viwer.source = "3.jpg"
        }

        Button {
            id: button3
            x: 520
            y: 0
            width: button_width
            height: button_height
            text: qsTr("Img4")
            onClicked: image_viwer.source = "4.png"
        }

    }
        Image{
            id: image_viwer
            width: root_windows.width
            height: root_windows.height - top_bar_height
            anchors.top: row.bottom
            source: "1.jpg"
            anchors.topMargin: top_bar_height
        }
    }

    Item {
        id: __materialLibrary__
    }



}
