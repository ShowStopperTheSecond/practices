# Auto-generated deploy QML imports script for target "app17_Tumbler".
# Do not edit, all changes will be lost.
# This file should only be included by qt_deploy_qml_imports().

set(__qt_opts )
if(arg_NO_QT_IMPORTS)
    list(APPEND __qt_opts NO_QT_IMPORTS)
endif()

_qt_internal_deploy_qml_imports_for_target(
    ${__qt_opts}
    IMPORTS_FILE "/home/javid/home/Qt_practice/QML_Beginner/08_Qt_Quick/build-17_Tumbler-Replacement_for_Desktop_Qt_6_4_1_GCC_64bit-Debug/.qt_plugins/Qt6_QmlPlugins_Imports_app17_Tumbler.cmake"
    PLUGINS_FOUND __qt_internal_plugins_found
    QML_DIR     "${arg_QML_DIR}"
    PLUGINS_DIR "${arg_PLUGINS_DIR}"
)

if(arg_PLUGINS_FOUND)
    set(${arg_PLUGINS_FOUND} "${__qt_internal_plugins_found}" PARENT_SCOPE)
endif()
