import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "utilidades/Icons.js" as Icons

Drawer {
    id: drawer
    width: parent.width*0.6
    height: parent.height-mytoolbar.height
    y : mytoolbar.height
    edge: Qt.LeftEdge
    ColumnLayout{
        id: columnamenu
        anchors.centerIn: parent
        spacing: 3
        //ListView- Modelo y delegado
        MenuItem{
        text: "Configuraciones"
        width: parent.width
        height: 22

        onTriggered: viewIndex = 5

        }
 }
}


