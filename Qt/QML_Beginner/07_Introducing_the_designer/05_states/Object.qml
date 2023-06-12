import QtQuick

Item {
    id: element
    property color onColor: "red"
    property color defaultColor: "black"
    property color offColor: "green"

    Rectangle {
        id: rectangle
        color: defaultColor
        anchors.fill: parent
        radius: width
    }
    states: [
        State {
            name: "off"

            PropertyChanges {
                target: rectangle
                color: onColor
            }
        },
        State {
            name: "on"

            PropertyChanges {
                target: rectangle
                color: offColor
            }
        }
    ]

}
