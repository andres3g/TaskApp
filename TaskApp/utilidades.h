#ifndef UTILIDADES_H
#define UTILIDADES_H

#include <QObject>

class utilidades : public QObject
{
    Q_OBJECT
public:
    explicit utilidades(QObject *parent = nullptr);
    Q_INVOKABLE void salir(QString);
    Q_INVOKABLE QString getTiempo();

signals:

public slots:
};

#endif // UTILIDADES_H
