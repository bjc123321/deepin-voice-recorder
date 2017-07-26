######################################################################
# Automatically generated by qmake (3.0) ?? 2? 4 17:49:37 2017
######################################################################

TEMPLATE = app
TARGET = deepin-voice-recorder
INCLUDEPATH += .

CONFIG += link_pkgconfig
CONFIG += c++11 
PKGCONFIG += dtkwidget libavformat libavcodec libavutil
RESOURCES = deepin-voice-recorder.qrc

# Input
HEADERS += src/toolbar.h \
           src/utils.h \
           src/home_page.h \
           src/expand_animation_button.h \
           src/shrank_animation_button.h \
           src/record_page.h \
           src/main_window.h \
           src/list_page.h \
		   src/waveform.h \
           src/recording_button.h \
           src/file_view.h \
           src/label.h \
           src/file_item.h \
           src/line_edit.h
		   
SOURCES += src/main.cpp \
		   src/toolbar.cpp \
		   src/utils.cpp \
		   src/home_page.cpp \
           src/expand_animation_button.cpp \
           src/shrank_animation_button.cpp \
		   src/record_page.cpp \
		   src/main_window.cpp \
		   src/list_page.cpp \
		   src/waveform.cpp  \
		   src/recording_button.cpp \
		   src/file_view.cpp \
		   src/label.cpp \
		   src/file_item.cpp \
		   src/line_edit.cpp

QT += core
QT += widgets
QT += gui
QT += multimedia

QMAKE_CXXFLAGS += -g

isEmpty(BINDIR):BINDIR=/usr/bin
isEmpty(ICONDIR):ICONDIR=/usr/share/icons/hicolor/scalable/apps
isEmpty(APPDIR):APPDIR=/usr/share/applications
isEmpty(DSRDIR):DSRDIR=/usr/share/deepin-voice-recorder
isEmpty(DOCDIR):DOCDIR=/usr/share/dman/deepin-voice-recorder

target.path = $$INSTROOT$$BINDIR
icon.path = $$INSTROOT$$ICONDIR
desktop.path = $$INSTROOT$$APPDIR
translations.path = $$INSTROOT$$DSRDIR/translations
manual.path = $$INSTROOT$$DOCDIR

icon.files = image/deepin-voice-recorder.svg
desktop.files = deepin-voice-recorder.desktop
manual.files = manual/*

INSTALLS += target icon desktop manual

isEmpty(TRANSLATIONS) {
     include(translations.pri)

}

TRANSLATIONS_COMPILED = $$TRANSLATIONS
TRANSLATIONS_COMPILED ~= s/\.ts/.qm/g

translations.files = $$TRANSLATIONS_COMPILED
INSTALLS += translations
CONFIG *= update_translations release_translations

CONFIG(update_translations) {
    isEmpty(lupdate):lupdate=lupdate
    system($$lupdate -no-obsolete -locations none $$_PRO_FILE_)
}
CONFIG(release_translations) {
    isEmpty(lrelease):lrelease=lrelease
    system($$lrelease $$_PRO_FILE_)
}

DSR_LANG_PATH += $$DSRDIR/translations
DEFINES += "DSR_LANG_PATH=\\\"$$DSR_LANG_PATH\\\""
