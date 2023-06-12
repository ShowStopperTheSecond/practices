import QtQuick
import QtQuick.Controls


ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    header: TabBar{
        id: tabBar
        currentIndex: view.currentIndex

        TabButton{
            text: "page 1"
        }
        TabButton{
            text: "page 2"
        }
        TabButton{
            text: "page 3"
        }

    }

    SwipeView {
        id: view

        currentIndex: tabBar.currentIndex
        anchors.fill: parent

        Item {
            id: firstPage
            Label{
                anchors.centerIn: parent
                text: "This is the first page"
            }
        }
        Item {
            id: secondPage
            Label{
                anchors.centerIn: parent
                text: "This is the second page"
            }
        }
        Item {
            id: thirdPage
            Label{
                anchors.centerIn: parent
                text: "This is the third page"
            }
        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
