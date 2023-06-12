
import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var middle_y: width/2
    property var middle_x: height/2

    Image{
        source: "qrc:/Photos/wallhaven-4ymve7.jpg"
//        anchors.centerIn: parent
        width: 300
        x: middle_x - height/2
        y: middle_y - width/2
        fillMode: Image.PreserveAspectFit

    }


    Image{
        id: remoteImage
        source: "https://imgs.search.brave.com/QGatfdm-f3ezh77mcPldzj-0IBweGBluk3jN-RVHxdI/rs:fit:150:110:1/g:ce/aHR0cDovL3VwbG9h/ZC53aWtpbWVkaWEu/b3JnL3dpa2lwZWRp/YS9jb21tb25zL3Ro/dW1iLzAvMGIvUXRf/bG9nb18yMDE2LnN2/Zy8xNTBweC1RdF9s/b2dvXzIwMTYuc3Zn/LnBuZw"
        onProgressChanged: {console.log("This is a log from Javid *****"); console.log(remoteImage.status);}
        onStatusChanged: if (Image.status == Image.Ready) console.log("Image is ready!")
    }
}


