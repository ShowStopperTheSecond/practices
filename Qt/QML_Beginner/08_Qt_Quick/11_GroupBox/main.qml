import QtQuick
import QtQuick.Controls 6.3
import QtQuick.Layouts 6.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property string selectedFood: "None"
    property string selectedFruit: "None"

    Popup{
        id: popupWindow
        anchors.centerIn: parent
        modal: true
        focus: true
        closePolicy: Popup.CloseOnPressOutside | Popup.CloseOnEscape
        Row{
            spacing: 20
            Label{
                text: "Selected food: " + selectedFood + ", Selected Fruit: " + selectedFruit
            }
            Button{
                text: "Close"
                onClicked: popupWindow.close()
            }

        }


    }

    ColumnLayout {
        id: columnLayout2
        anchors.centerIn: parent

        RowLayout {
            id: rowLayout
            anchors.fill: parent
            Layout.fillHeight: false
            Layout.fillWidth: false
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            GroupBox {
                width: 185
                height: 174
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                title: qsTr("Food")
                ColumnLayout {
                    id: foodRdo
                    anchors.fill: parent
                    RadioButton {
                        id: radioButton
                        text: qsTr("Pizza")
                    }

                    RadioButton {
                        id: radioButton1
                        text: qsTr("Stake")
                    }

                    RadioButton {
                        id: radioButton2
                        text: qsTr("Rice")
                    }

                    RadioButton {
                        id: radioButton3
                        text: qsTr("Kebab")
                    }
                }
            }

            GroupBox {

                width: 185
                height: 174
                title: qsTr("Fruit")
                ColumnLayout {
                    id: fruitRdo
                    anchors.fill: parent
                    RadioButton {
                        id: radioButton4
                        text: qsTr("Banana")
                    }

                    RadioButton {
                        id: radioButton5
                        text: qsTr("Orange")
                    }

                    RadioButton {
                        id: radioButton6
                        text: qsTr("Apple")
                    }

                    RadioButton {
                        id: radioButton7
                        text: qsTr("Grapes")
                    }
                }
            }
        }

        Button {
            id: button
            text: qsTr("Save")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            onClicked: {
                for (var i=0; i< foodRdo.children.length; i++ ){
                    if (foodRdo.children[i].checked){
                        selectedFood = foodRdo.children[i].text
                    }
                }
                for (var i=0; i< fruitRdo.children.length; i++ ){
                    if (fruitRdo.children[i].checked){
                        selectedFruit = fruitRdo.children[i].text
                    }

                }

                console.log("Selected food: " + selectedFood + ", Selected Fruit: " + selectedFruit)
                popupWindow.open()

            }
        }


    }
}
