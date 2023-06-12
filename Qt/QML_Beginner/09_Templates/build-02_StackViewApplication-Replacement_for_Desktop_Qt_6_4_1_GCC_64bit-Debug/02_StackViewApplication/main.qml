import QtQuick
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    StackView{
        id: rootStack
        anchors.fill: parent
        initialItem: customView


    }
    
    Component{
        id: customView
        RowLayout {
            id: rowLayout
            x: 239
            y: 217
            width: 100
            height: 100
            anchors.fill: parent
            Button{
                id: previousBtn
                text: "Previous"
                onPressed: rootStack.pop()
                Layout.alignment: Qt.AlignHCenter
            }
            Button{
                id: nextBtn
                text: "Next"
                onPressed: rootStack.push(customView)
                Layout.alignment: Qt.AlignHCenter
            }

        }
    }

}
