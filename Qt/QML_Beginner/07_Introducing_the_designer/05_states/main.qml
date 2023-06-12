import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Object {
        id: object
        width: 364
        height: 353
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                if (parent.state === "on" ){
                    parent.state = "off"
                }else{
                    parent.state = "on"
                }
            }
        }
    }
}
