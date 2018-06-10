#include "utilidades.h"
#include <QDateTime>
#include <QDebug>

utilidades::utilidades(QObject *parent) : QObject(parent)
{

}

void utilidades::salir(QString hola)
{
    qDebug()<<hola;

}

QString utilidades::getTiempo()
{
    return QDateTime::currentDateTime().toString();

}
