import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:root
    width: 1600
    height: 800
    visible: true
    title: qsTr("Hello World")
    property int sideBarWidth : 200
    property color sideBarColor: "green"
    //    property alias image_frame: image


    Rectangle{
        id:sidebar
        height: root.height
        width: root.sideBarWidth
        color: root.sideBarColor
        Column{

            ButtomHover{
                height: 100
                width: root.sideBarWidth
                text.text: "cat"
                mouse.onPressed: image_frame.source = "qrc:/Photos/wallhaven-k7dv8d.jpg"
            }
            ButtomHover{
                height: 100
                width: root.sideBarWidth
                text.text: "dog"
                mouse.onPressed: image_frame.source = "qrc:/Photos/13.jpeg"
            }
            ButtomHover{
                height: 100
                width: root.sideBarWidth
                text.text: "flower"
                mouse.onPressed: image_frame.source = "qrc:/Photos/wallhaven-j8ok5w.png"
            }
        }


    }
    Rectangle{
        //        id:image_frame
        anchors.left: sidebar.right
        height: root.height
        width: root.width - root.sideBarWidth
        color: "orange"
        Image{
            id: image_frame
            anchors.margins: 25
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }
    }



}
