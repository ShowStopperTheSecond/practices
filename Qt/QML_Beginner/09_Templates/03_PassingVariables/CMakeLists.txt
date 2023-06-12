cmake_minimum_required(VERSION 3.16)

project(03_PassingVariables VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(app03_PassingVariables
    main.cpp
)

qt_add_qml_module(app03_PassingVariables
    URI 03_PassingVariables
    VERSION 1.0
    QML_FILES main.qml Page1.qml Page2.qml


)

set_target_properties(app03_PassingVariables PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app03_PassingVariables
    PRIVATE Qt6::Quick)

install(TARGETS app03_PassingVariables
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
