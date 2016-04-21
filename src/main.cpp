#include <QApplication>
#include <QTranslator>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QTranslator translator;

    translator.load(QStringLiteral(":/translations/zh_CN"));
    app.installTranslator(&translator);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/qml/Main/Application.qml")));

    return app.exec();
}

