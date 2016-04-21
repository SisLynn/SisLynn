import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 640
    height: 480

    property alias button1: button1
    property alias button2: button2

    RowLayout {
        anchors.centerIn: parent

        Button {
            id: button1
            text: "Press Me 1"
        }

        Button {
            id: button2
            text: "Press Me 2"
        }
    }
}

