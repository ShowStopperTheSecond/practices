cmake_minimum_required(VERSION 3.16)

project(04_Connection_And_Properties VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(app04_Connection_And_Properties
    main.cpp
)

qt_add_qml_module(app04_Connection_And_Properties
    URI 04_Connection_And_Properties
    VERSION 1.0
    QML_FILES main.qml 
)

set_target_properties(app04_Connection_And_Properties PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app04_Connection_And_Properties
    PRIVATE Qt6::Quick)

install(TARGETS app04_Connection_And_Properties
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
