import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text{
        id: myText
        anchors.centerIn: parent
        text: "<html>
<b>Hello world</b><br>
<i><font color='green'> Who the heck are you</font></i>
<a href='http://google.com'> google.com </a><br>
<b><font color='red'> the end</font> </b>
</html>"
        font.pixelSize: 25
        linkColor: "purple"
        onLinkHovered: {
            console.log("Hovered" + link)
            if(link){

                myText.font.bold=true
            }else{
                myText.font.bold=false
            }
        }
        onLinkActivated: Qt.openUrlExternally(link)

    }
}
