import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Window 2.10
import QtQuick.Layouts 1.3
import "utilidades/Icons.js" as Icons

Page{
    id: paginatask

    Menu01{id: menutask}

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
                text: "Tareas pendientes"
                width: parent.width
                font.pixelSize: tamtitulos
                horizontalAlignment: Qt.AlignHCenter
            }
        }
        ListView{
            id: lista
            Layout.fillHeight: true
            Layout.fillWidth: true
            clip: true
            anchors.centerIn: parent
            model: ListModel{}
            spacing: 10
            delegate: Rectangle
            {
                id: rectangulopadre
                Rectangle{
                    color: "purple"
                    Text {text: "<b>" + titulo + "</b>" ; font.pointSize: 15 ; anchors.horizontalCenter: parent.horizontalCenter }
                    height: parent.height/2
                    width: parent.width
                }
                Rectangle{
                    y: rectangulopadre.height/2
                    height: parent.height/2
                    width: parent.width
                    color: "red"
                    TextArea {
                        font.pointSize: 15
                        wrapMode: TextEdit.Wrap
                        width: parent.width
                        textFormat: "RichText"
                        text: "<b>Resumen: </b>" + texto;
                    }
                }
                color: "blue"
                anchors.horizontalCenter: parent.horizontalCenter
                height: paginatask.height/4
                width: paginatask.width/3
                MouseArea{
                    acceptedButtons: Qt.AllButtons
                    anchors.fill: parent
                    onPressAndHold:{
                        menutask.popup()
                    }
                    onClicked:{
                        if(mouse.button === Qt.RightButton){
                            console.log("boton derecho")
                            menutask.popup()
                        }
                    }
                }
            }
            ScrollBar.vertical: ScrollBar{visible: true }
        }

        AddTask{
            id: addtask
        }
        Item{

            Layout.fillWidth: true
            height:64

            RowLayout{
                anchors.fill: parent
                Item{ Layout.fillWidth: true}
                Text{ text: "Agregar Tarea"}
                ToolButton{
                    id: botonadd
                    anchors.verticalCenter: parent.verticalCenter
                    height: tamIncon
                    width: tamIncon
                    onClicked: addtask.open()
                    Text{
                        anchors.centerIn: parent
                        font.family: "Material Design Icons"
                        text: Icons.Icon.plus
                        color: "green"
                        font.pixelSize: tamIncon
                    }
                }
                Item{
                    Layout.fillWidth: true
                    height: 10
                }
            }
        }
    }
    function agregar(titulo,texto){
        lista.model.append({titulo:titulo,texto:texto})
    }
}

