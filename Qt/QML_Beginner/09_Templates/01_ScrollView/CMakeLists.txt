cmake_minimum_required(VERSION 3.16)

project(01_ScrollView VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(app01_ScrollView
    main.cpp
)

qt_add_qml_module(app01_ScrollView
    URI 01_ScrollView
    VERSION 1.0
    QML_FILES main.qml 
)

set_target_properties(app01_ScrollView PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app01_ScrollView
    PRIVATE Qt6::Quick)

install(TARGETS app01_ScrollView
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
