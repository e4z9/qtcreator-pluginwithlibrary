#pragma once

#include "myplugin_global.h"

#include <extensionsystem/iplugin.h>
#include <lib/supportlib/supportlib.h>

namespace MyPlugin {
namespace Internal {

class MyPluginPlugin : public ExtensionSystem::IPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QtCreatorPlugin" FILE "MyPlugin.json")

public:
    MyPluginPlugin();
    ~MyPluginPlugin();

    bool initialize(const QStringList &arguments, QString *errorString);
    void extensionsInitialized();
    ShutdownFlag aboutToShutdown();

private:
    void triggerAction();

    SupportLib support;
};

} // namespace Internal
} // namespace MyPlugin
