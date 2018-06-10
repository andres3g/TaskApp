import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.2
import "utilidades/Icons.js" as Icons

Menu{
    MenuItem{
    text: "Editar"
    onTriggered: console.log(text)
    }
    MenuItem{
    text: "Borrar"
    onTriggered: console.log(text)
    }
    MenuItem{
    text: "Marcar como importante"
    onTriggered: console.log(text)
    }

}
