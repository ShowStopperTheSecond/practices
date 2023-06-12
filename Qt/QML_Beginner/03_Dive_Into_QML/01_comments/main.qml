import QtQuick 2.15
import QtQuick.Window 2.15
//import QtQuick 2.0


Window {
    width: 640
    height: 480
    visible: true
    color: "#005500"
    title: qsTr("Hello World")

//    what the heck is going on here


/* This is a mutli line
  comment
  here
  */

    Image {
        id: myimage
        width: 800
        height: 800
        sourceSize.width: 500
        sourceSize.height: 500
        source: "file:/home/javid/Qt_practice/QML_Beginner/03_Dive_Into_QML/01_comments/tmp.jpg"
        anchors.centerIn: parent
    }

}
