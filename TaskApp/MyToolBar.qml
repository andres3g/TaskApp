import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "utilidades/Icons.js" as Icons


ToolBar{
    height: tamtoolbar
    width: parent.width
    background: Rectangle{
        color: "#333"
    }
    RowLayout{
        anchors.fill: parent
        spacing: 30
        ToolButton{
            id: menu
            onClicked: panelconfig.visible? panelconfig.close() : panelconfig.open()
            anchors.verticalCenter: parent.verticalCenter
            width: tamIncon
            Text {
                id: icon
                text: Icons.Icon.menu
                anchors.centerIn: parent
                font.family: "Material Design Icons"
                font.pixelSize: tamIncon
                color: "white"
            }
        }
        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        ToolButton{
            Layout.fillWidth: true
            Layout.fillHeight: true
            anchors.verticalCenter: parent.verticalCenter
            width: tamIncon
            onClicked: viewIndex = 0
            Text {
                id: icontareas
                text: Icons.Icon.pencilBoxOutline
                anchors.centerIn: parent
                font.family: "Material Design Icons"
                font.pixelSize: tamIncon
                color: viewIndex === 0?colorboton:"white"
            }
        }
        ToolButton{
            anchors.verticalCenter: parent.verticalCenter
            width: tamIncon
            Layout.fillWidth: true
            Layout.fillHeight: true
            onClicked: viewIndex = 1
            Text {
                text: Icons.Icon.coin
                anchors.centerIn: parent
                font.family: "Material Design Icons"
                font.pixelSize: tamIncon
                color:  viewIndex === 1?colorboton:"white"
            }
        }
        ToolButton{
            onClicked: viewIndex = 2
            anchors.verticalCenter: parent.verticalCenter
            width: tamIncon
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                text: Icons.Icon.shopping
                anchors.centerIn: parent
                font.family: "Material Design Icons"
                font.pixelSize: tamIncon
                color: viewIndex=== 2?colorboton:"white"
            }
        }
        ToolButton{
            onClicked: viewIndex = 3
            anchors.verticalCenter: parent.verticalCenter
            width: tamIncon
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                text: Icons.Icon.ubuntu
                anchors.centerIn: parent
                font.family: "Material Design Icons"
                font.pixelSize: tamIncon
                color: viewIndex=== 3?colorboton:"white"
            }
        }
        ToolButton{
            onClicked: viewIndex = 4
            anchors.verticalCenter: parent.verticalCenter
            width: tamIncon
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                text: Icons.Icon.bookmark
                anchors.centerIn: parent
                font.family: "Material Design Icons"
                font.pixelSize: tamIncon
                color: viewIndex === 4?colorboton:"white"
            }
        }
        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Item {
            width: menu.width
            height: menu.height
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
