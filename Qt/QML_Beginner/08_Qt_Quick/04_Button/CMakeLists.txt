cmake_minimum_required(VERSION 3.16)

project(04_Button VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(app04_Button
#    Resources.qrc
    main.cpp
)

qt_add_qml_module(app04_Button
    URI 04_Button
    VERSION 1.0
    QML_FILES
    main.qml
    RESOURCES
    1.jpg
    2.gif
    3.jpg
    4.png
    5.jpg
)



set_target_properties(app04_Button PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app04_Button
    PRIVATE Qt6::Quick)

install(TARGETS app04_Button
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
