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
                text: "Organiza tu mercado"
                width: parent.width
                font.pixelSize: tamtitulos
                horizontalAlignment: Qt.AlignHCenter
            }
        }
        ListView{
            id: listamercado
            Layout.fillHeight: true
            Layout.fillWidth: true
            clip: true
            anchors.centerIn: parent

            model: ListModel{}
            spacing: 10
            delegate: Label{
                text: index+1 +". " + articulo + "     $" + valor
                font.pixelSize: tamtitulos
                                                             }
        }
        AddShopping{
            id: agregarCompra
        }
        RowLayout{
            anchors.horizontalCenter: parent.horizontalCenter

            Text{text: "Agregar Articulo"}
            ToolButton{
                anchors.horizontalCenter: parent
                width: tamIncon
                onClicked: agregarCompra.open()
                Text{
                    anchors.fill: parent
                    anchors.centerIn: parent
                    font.family: "Material Design Icons"
                    text: Icons.Icon.plus
                    color: "green"
                    font.pixelSize: tamIncon
                }
            }
        }
        Item{
            Layout.fillWidth: true
            height: 10
        }
    }
    function agregar_articulo(articulo,valor){
        listamercado.model.append({articulo:articulo, valor: valor})
    }

}

