import QtQuick
import QtQuick.Controls


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Column{
        height: 400
        layer.smooth: true
        layer.mipmap: true
        layer.wrapMode: ShaderEffectSource.ClampToEdge
        width: 400
        anchors.centerIn: parent

        Label{
            id:label
            text: "This is the label"
//            anchors.top: parent.bottom
        }

        ListView{
            height: 200
            width: 200
            model: ["Option A", "Option B", "Option C"]
            delegate: CheckDelegate{
                text: modelData
                onCheckStateChanged: label.text = index + " - " + modelData + ": " + checked

            }

        }

    }
}
