import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Window 2.10
import QtQuick.Layouts 1.3
import "utilidades/Icons.js" as Icons

Page {

    ColumnLayout{
        anchors.fill: parent
        Item{
            Label{
                text: "Configuración de la Aplicación"
                font.pixelSize: tamtitulos
                horizontalAlignment: Qt.AlignHCenter
            }
        }
        Column {
            Text{ text: "Ventanas visibles:"}
            Switch{ text: "Tareas" }
            Switch{ text: "Manejo de dinero" }
            Switch{ text: "Compras" }
            Switch{ text: "Tareas en grupo" }
            Switch{ text: " ..." }
        }


    }
}

