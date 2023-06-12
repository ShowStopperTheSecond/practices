import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root_window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property int r: 100

    SequentialAnimation{
        loops: Animation.Infinite
        running: true
        PropertyAnimation{
            property: 'r'
            target: root_window
            from: 150
            to: 500
            duration: 2000
        }
        PropertyAnimation{
            property: 'r'
            target: root_window
            from: 500
            to: 150
            duration: 2000
        }

    }


    Item{
        id: root
        anchors.centerIn: parent

        Rectangle{
            color: "black"
            width: 10
            height: 10
            radius: width
            anchors.centerIn: parent
        }
        Rectangle{
            color: "transparent"
            width: 50
            height: 50
            radius: width
            anchors.centerIn: parent
            border.color: "black"
            border.width: 5
        }

        Rectangle{
            id: blue_rect
            color: "blue"
            opacity: 0.5
            width: r
            height: r
            radius: width
            anchors.centerIn: parent
            transform: Translate{x: 100; y: 100}
        }

        Rectangle{
            id: yellow_rect
            color: "yellow"
            opacity: 0.5
            width: r
            height: r
            radius: width
            anchors.centerIn: parent
            transform: Translate{x: 100; y: -100}
        }

        Rectangle{
            id: green_rect
            color: "green"
            opacity: 0.5
            width: r
            height: r
            radius: width
            anchors.centerIn: parent
            transform: Translate{x: -100; y: 100}
        }

        Rectangle{
            id: red_rect
            color: "red"
            opacity: 0.5
            width: r
            height: r
            radius: width
            anchors.centerIn: parent
            transform: Translate{x: -100; y: -100}
        }
    }

    RotationAnimation{
        loops: Animation.Infinite
        target: root
        from: 0
        to: 360
        duration: 3000
        running: true
    }

}
