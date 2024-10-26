import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Rectangle {
    id: userMenu
    width: 200
    color: "#333333"
    height: parent.height

    Item {
        anchors.fill: parent
        anchors.margins: 10

        ColumnLayout {
            anchors.fill: parent
            spacing: 10

            Label {
                text: "Меню користувача"
                font.pixelSize: 20
                color: "#000000"
            }

            Button {
                text: "Головна"
                Layout.fillWidth: true
            }

            Button {
                text: "Бази даних"
                Layout.fillWidth: true
            }

            Button {
                text: "Налаштування"
                Layout.fillWidth: true
            }

            Button {
                text: "Вийти"
                Layout.fillWidth: true
                onClicked: Qt.quit()
            }
        }
    }
}

