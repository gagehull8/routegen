######################################################################
# Automatically generated by qmake (2.01a) di 27. nov 22:05:49 2007
######################################################################

TEMPLATE = app
TARGET = routegen
DEPENDPATH += . debug
INCLUDEPATH += .
QT += webkit

# Input
HEADERS += RGMainWindow.h RGMapWidget.h RGVehicleDialog.h RGRoute.h RGSettings.h RGSettingsDialog.h RGGoogleMap.h \
    RGVehicle.h \
    RGSmoothRoute.h \
    RGVehicleList.h
FORMS += routegen.ui settings.ui googlemap.ui \
    vehicledialog.ui
SOURCES += main.cpp RGMainWindow.cpp RGMapWidget.cpp RGVehicleDialog.cpp RGRoute.cpp RGSettings.cpp RGSettingsDialog.cpp RGGoogleMap.cpp \
    RGVehicle.cpp \
    RGSmoothRoute.cpp \
    RGVehicleList.cpp
RESOURCES += routegen.qrc

win32 {
  RC_FILE = routegen.rc
} 
