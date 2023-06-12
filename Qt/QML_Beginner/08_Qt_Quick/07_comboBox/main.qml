import QtQuick
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    ColumnLayout
    {
        id: columnLayout
        width: 278
        height: 346
        anchors.verticalCenter: parent.verticalCenter
        spacing: 30
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.alignment: Qt.AlignHCenter

        Label {
            Layout.alignment: Qt.AlignHCenter
            id: label
            color: "red"
            text: qsTr("Select Item")
            font.pixelSize: 20
        }

        ComboBox {
            Layout.alignment: Qt.AlignHCenter
            model: ["Pizza", "Pasta", "Chicken", "Hamburger"]
            id: comboBox
            onCurrentTextChanged: label.text = currentText
        }

        Label {
            Layout.alignment: Qt.AlignHCenter
            id: label1
            color: "red"
            text: qsTr("Select Item")
            font.pixelSize: 20
        }

        ComboBox {
            Layout.alignment: Qt.AlignHCenter
            id: comboBox1
            textRole: "name"
            editable: true
            model: ListModel{
                id:listmodel
                ListElement{name: "dog1"; age: "23"}
                ListElement{name: "dog43"; age: "34"}
                ListElement{name: "sdf"; age: "34"}
            }
            onCurrentTextChanged: label1.text = "name: " +  model.get(currentIndex).name + " , age: "+ model.get(currentIndex).age
            onAccepted: {
                if (find(editText) ===-1 ){
                    listmodel.append({"name": editText, "age": "0"})

                }
            }
        }

    }
}
