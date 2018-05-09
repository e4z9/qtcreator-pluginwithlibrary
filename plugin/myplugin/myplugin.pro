DEFINES += MYPLUGIN_LIBRARY

INCLUDEPATH *= $$PWD/../../

# MyPlugin files

SOURCES += \
        mypluginplugin.cpp

HEADERS += \
        mypluginplugin.h \
        myplugin_global.h \
        mypluginconstants.h

###### If the plugin can be depended upon by other plugins, this code needs to be outsourced to
###### <dirname>_dependencies.pri, where <dirname> is the name of the directory containing the
###### plugin's sources.

QTC_PLUGIN_NAME = MyPlugin
QTC_LIB_DEPENDS += \
    supportlib

QTC_PLUGIN_DEPENDS += \
    coreplugin

QTC_PLUGIN_RECOMMENDS += \
    # optional plugin dependencies. nothing here at this time

###### End _dependencies.pri contents ######

include(../../qtc.pri)
include($$IDE_SOURCE_TREE/src/qtcreatorplugin.pri)
