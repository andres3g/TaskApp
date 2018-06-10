import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.2
import "utilidades/Icons.js" as Icons


ApplicationWindow {
    id: ventanaprincipal
    visible: true
    width: 450
    height: 480
    title: qsTr("TaskApp")

    //propiedades de la app
    property int tamtoolbar: 48
    property int tamIncon: 32
    property int alturafila: 32
    property color  colorboton: "#9DFF1C"
    property int tamtitulos: 25
    property int viewIndex : 0

    header: MyToolBar{
        id: mytoolbar
    }

    PanelConfig{
        id: panelconfig
    }

    SwipeView{
        id: swipeview
        anchors.fill: parent
        currentIndex: viewIndex
        onCurrentIndexChanged: viewIndex = currentIndex
        TaskWindow{
            id: ventana0
        }
        CashWindow{
            id: ventana1
        }
        ShoppingWindow{
            id: ventana2
        }
        GrupWindow{
            id: ventana3

        }
        SaveWindow{
            id: ventana4
        }
        Configuracion{
            id: configuracion
        }
    }
}
