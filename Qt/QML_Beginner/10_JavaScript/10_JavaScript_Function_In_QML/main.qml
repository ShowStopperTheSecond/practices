import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    Item{
        id: someCode

        function changeLoc(){
            if (rect.x === 0){
                return  root.width - rect.width
            }else {
                return 0
            }
        }
    }

    Rectangle{
        id: rect
        height: 100
        width:100
        x: someCode.changeLoc()
//        x: 0
        y: parent.height/2 - height/2
        color: swapColors()

        MouseArea{
            id: area
            anchors.fill: parent
            onPressed: {
                rect.x = someCode.changeLoc()
            }
        }
        function swapColors(){
            if (area.pressed){
                return "blue"
            }else{
                return "green"
            }

        }
    }
}

