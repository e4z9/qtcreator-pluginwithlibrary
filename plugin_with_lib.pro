TEMPLATE = subdirs

SUBDIRS += \
    supportlib \
    myplugin

supportlib.subdir = lib/supportlib

myplugin.subdir = plugin/myplugin
myplugin.depends = supportlib
