import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.11
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

import "./customComponents" as HardlineCmp

Window
{
    visible: true
    height: 360
    width: 360

    Text {
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        text: object.text
    }

    HardlineCmp.Button{
        onClicked: console.log(x);
    }

    function log(x)
    {
        console.log(x);
    }
}
