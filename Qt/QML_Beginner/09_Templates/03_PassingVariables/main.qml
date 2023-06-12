import QtQuick
import QtQuick.Controls


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property string globalName: ""
    SwipeView{
        id: mainView
        anchors.fill: parent
        Item{
            Page1{}
        }
        Item{
            Page2{}
        }

    }

    PageIndicator{
        count: mainView.count
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter


    }
}
