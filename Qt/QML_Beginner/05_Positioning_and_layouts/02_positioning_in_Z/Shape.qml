import QtQuick 2.15


Rectangle{
    width: 100
    height: 100
    color: "blue"
    MouseArea{
        anchors.fill: parent
        drag.target: parent
        onClicked: parent.z ++
    }
}

