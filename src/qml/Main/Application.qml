import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import "../Mods/EventFactory" as EventFactory

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("SisLynn")

    menuBar: MenuBar {
        Menu {
            title: "File"
            MenuItem {
                text: "&Open"
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: "Exit"
                onTriggered: Qt.quit();
            }
        }
    }

    EventFactory.MainWindow {
        anchors.fill: parent
    }
}

