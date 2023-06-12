cmake_minimum_required(VERSION 3.14)

project(06_QVariant LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core)

add_executable(06_QVariant
  main.cpp
)
target_link_libraries(06_QVariant Qt${QT_VERSION_MAJOR}::Core)

install(TARGETS 06_QVariant
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
