import QtQuick 2.15
import QtQuick.Window
import QtQuick.Layouts
import QtQuick.Controls 2.15

ApplicationWindow {
    id: root
    visible: true
    title: "LogiBase"
    color: "#f0f0f0"

    width: (Qt.platform.os === "android" || Qt.platform.os === "ios") ? Screen.width : Screen.width * 0.8
    height: (Qt.platform.os === "android" || Qt.platform.os === "ios") ? Screen.height : Screen.height * 0.8

    RowLayout {
        anchors.fill: parent

        Loader {
            source: "qrc:/Menu/LeftMenu.qml" 
            Layout.preferredWidth: 200
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#ffffff"

            Text {
                anchors.centerIn: parent
                text: "Основний вміст"
                font.pixelSize: 24
            }
        }
    }
}

