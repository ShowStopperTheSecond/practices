import QtQuick
import "Codes.js" as Code

//import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id:root

    Rectangle{
        id: rect
        height: 100
        width:100
        x: Code.changeLoc(rect, root)
        //        x: 0
        y: parent.height/2 - height/2
        color: Code.swapColors(area)

        MouseArea{
            id: area
            anchors.fill: parent
            onPressed: {
                rect.x = Code.changeLoc(rect, root)
            }
        }
    }



    //    Rectangle{
    //        id: rect
    //        height: 100
    //        width:100
    //        x: 0
    //        y: parent.height/2 - height/2
    //        color: "red"

    //        MouseArea{
    //            id: area
    //            anchors.fill: parent
    //            onPressed: {
    //                test()
    //            }
    //        }
    //    }
}
