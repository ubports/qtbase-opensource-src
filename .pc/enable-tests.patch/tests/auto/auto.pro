TEMPLATE = subdirs

SUBDIRS += \
    corelib \
    dbus \
    gui \
    network \
    opengl \
    sql \
    testlib \
    tools \
    xml \
    concurrent \
    other \
    widgets \
    printsupport \
    cmake \
    installed_cmake

installed_cmake.depends = cmake

ios: SUBDIRS  = corelib gui

wince:                                      SUBDIRS -= printsupport
cross_compile:                              SUBDIRS -= tools
!qtHaveModule(opengl):                      SUBDIRS -= opengl
!qtHaveModule(gui):                         SUBDIRS -= gui
!qtHaveModule(widgets):                     SUBDIRS -= widgets
!qtHaveModule(printsupport):                SUBDIRS -= printsupport
!qtHaveModule(concurrent):                  SUBDIRS -= concurrent
!qtHaveModule(network):                     SUBDIRS -= network

# Disable the QtDBus tests if we can't connect to the session bus
qtHaveModule(dbus) {
    !system("dbus-send --session --type=signal / local.AutotestCheck.Hello >/dev/null 2>&1") {
        SUBDIRS -= dbus
    }
} else {
    SUBDIRS -= dbus
}
