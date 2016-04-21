TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp

RESOURCES += qml.qrc translations.qrc

debug {
  RESOURCES += jslib-debug.qrc
} else {
  RESOURCES += jslib.qrc
}

TRANSLATIONS += translations/en_US.ts
TRANSLATIONS += translations/zh_CN.ts
TRANSLATIONS += translations/ja_JP.ts

qtcreator {
  SOURCES += \
      ../lib/RMMVEventTexts/dist-qml/RMMVEventTexts.js \
      qml/Controls/*.qml \
      qml/Main/*.qml \
      qml/Mods/EventFactory/*.qml \
      qml/Singletons/*.qml
}

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
