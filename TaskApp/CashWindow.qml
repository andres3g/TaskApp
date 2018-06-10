import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Window 2.10
import QtQuick.Layouts 1.3
import "utilidades/Icons.js" as Icons

Page {
    ColumnLayout{
        spacing: 10
        anchors.fill: parent
        width: parent.width
        Item
        {
            Layout.fillWidth: true
            height: 22
            Label
            {
                text: "Manejo de tu dinero"
                width: parent.width
                font.pixelSize: tamtitulos
                horizontalAlignment: Qt.AlignHCenter
            }
        }
        Item{
            Layout.fillWidth: true
            height: 10
        }

    }
}



