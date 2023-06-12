# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/app12_QML_And_JavaScript_Connections_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/app12_QML_And_JavaScript_Connections_autogen.dir/ParseCache.txt"
  "app12_QML_And_JavaScript_Connections_autogen"
  )
endif()
