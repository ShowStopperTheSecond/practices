import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Row {
        id: row
        width: 200
        height: rectangle.height
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.verticalCenterOffset: -10
        anchors.horizontalCenterOffset: -100
        anchors.leftMargin: -100
        layoutDirection: Qt.RightToLeft
        anchors.horizontalCenter: parent.horizontalCenter

        spacing: 9
//        anchors.centerIn: parent


        Rectangle {
            id: rectangle2
            width: 143
            height: 142
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#abada0"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
                orientation: Gradient.Vertical
            }
        }

        Rectangle {
            id: rectangle1
            width: 143
            height: 142
            gradient: Gradient {
                orientation: Gradient.Vertical
                GradientStop {
                    position: 0
                    color: "#d2ab7978"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
            }

            MouseArea {
                id: mouseArea
                visible: true
                anchors.fill: parent
                anchors.rightMargin: -13
                anchors.bottomMargin: 3
                anchors.leftMargin: 13
                anchors.topMargin: -3
                hoverEnabled: false
                transformOrigin: Item.Center

                Connections {
                    target: mouseArea
                    onClicked: console.log("clicked")
                }
            }
        }

        Rectangle {
            id: rectangle
            width: 143
            height: 142
            gradient: Gradient {
                orientation: Gradient.Vertical
                GradientStop {
                    position: 0
                    color: "#686b56"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
            }
        }
    }
}
