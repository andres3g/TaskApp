#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QFontDatabase>
#include <QQuickStyle>
#include <QQmlContext>
#include "utilidades.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QFontDatabase::addApplicationFont(":/utilidades/materialdesignicons-webfont.ttf");

    QQuickStyle::setStyle("material");

    utilidades hola2;


    QQmlApplicationEngine engine;

    auto context = engine.rootContext();

    context->setContextProperty("Hola",&hola2);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}

