import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Component{
        id: delegate
        Item {
            width: 200
            height: 50
            Column{
                anchors.fill: parent
                Label{
                    text: name
                    font.pixelSize: 25
                    font.bold: true
                }
                Label{
                    text: number
                    font.pixelSize: 25
                }
                Label{
                    text: "_________________________________________________"
                    font.pixelSize: 25
                }
            }
        }
    }

    ListModel{
        id: model
        ListElement{
            name: "javid"
            number: "dsdf"
        }
        ListElement{
            name: "Javad sdf"
            number: "dsf3"
        }
        ListElement{
            name: "asdf"
            number:"sdfs"
        }
    }

    ScrollView{
        anchors.fill: parent
        ListView{
            width: parent.width
            model: model
            delegate: delegate
        }
    }
}
