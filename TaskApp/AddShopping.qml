import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Window 2.10
import QtQuick.Layouts 1.3
import "utilidades/Icons.js" as Icons

Dialog {
    id: agragarCompra
    height: parent.height
    width: parent.height

    ColumnLayout{
        width: parent.width/2
        anchors.fill: parent
        anchors.centerIn: parent
        Label{
            text: "Añadir Compra"
            font.pixelSize: tamtitulos
            horizontalAlignment: Qt.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }
        RowLayout{
            TextField{
                id: campocompra
                horizontalAlignment: Qt.AlignHCenter
                placeholderText: qsTr("Nombre de la compra...")
                Layout.alignment: Qt.AlignHCenter
            }
            TextField{
                id: campoprecio
                horizontalAlignment: Qt.AlignHCenter
                placeholderText: qsTr("Precio...")
                Layout.alignment: Qt.AlignHCenter

            }
        }
        ScrollBar.vertical: ScrollBar{visible: true }
    }
    standardButtons:Dialog.Save | Dialog.Cancel

    onAccepted: {

        var articulo = campocompra.text
        var precio = campoprecio.text
        var tiempo = Hola.getTiempo()
        console.log(articulo, precio, tiempo)
        agregar_articulo(articulo,precio)
        campocompra.clear()
        campoprecio.clear()
    }
}
