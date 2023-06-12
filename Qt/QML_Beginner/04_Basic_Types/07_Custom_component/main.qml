import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Button{
        id: button1
        x: root.width/2 - width/2 - 200
        y: root.height/2 - height/2
        normalColor: "green"
        caption: "WTF"
    }

    Button{
        id: button2
        x: root.width/2 - width/2
        y: root.height/2 - height/2
        normalColor: "green"
        caption: "QTF"
    }

    Button{
        id: button3
        x: root.width/2 - width/2 + 200
        y: root.height/2 - height/2
        normalColor: "green"
        caption: "Nothing to say"
    }


    Button{
        id: button4
        width: 400
        height: 50
        x: root.width/2 - width/2
        y: root.height/2 - height/2 + 100
        normalColor: "green"
        caption: "Big Button"

    }

}
