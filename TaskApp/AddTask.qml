import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Window 2.10
import QtQuick.Layouts 1.3
import "utilidades/Icons.js" as Icons



Dialog {
    id: rectangulochido
    height: parent.height
    width: parent.width

    ColumnLayout{
        width: parent.width/2
        anchors.fill: parent
        anchors.centerIn: parent
        Label{
            text: "Añadir tarea"
            font.pixelSize: tamtitulos
            horizontalAlignment: Qt.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }
        TextField{
            id: campotitulo
            horizontalAlignment: Qt.AlignHCenter
            placeholderText: qsTr("Titulo...")
            Layout.alignment: Qt.AlignHCenter
        }
        TextField{
            id: campotexto
            horizontalAlignment: Qt.AlignHCenter
            placeholderText: qsTr("Texto...")
            Layout.alignment: Qt.AlignHCenter
        }
        ScrollBar.vertical: ScrollBar{visible: true }

    }
    standardButtons: Dialog.Save | Dialog.Cancel

    onAccepted: {
        var titulo = campotitulo.text
        var texto = campotexto.text
        var tiempo = Hola.getTiempo()
        console.log(titulo, texto, tiempo)
        agregar(titulo,texto)
        campotitulo.clear()
        campotexto.clear()
    }
}


