import QtQuick 2.0

Rectangle{
    id: root
    color: "#49BAB6"
    property int duration
    property string medium
    property alias ball: ball
    property alias ballWeight : ball.weight
    property alias ballSource : ball.source
    property alias ballVisible : ball.visible
    signal clicked;

    Ball {
        id: ball
        weight: 0
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {
            root.clicked();
        }

        Behavior on y{
            NumberAnimation{
                duration: root.duration;
                easing.type: Easing.InOutSine
            }
        }

    }
}