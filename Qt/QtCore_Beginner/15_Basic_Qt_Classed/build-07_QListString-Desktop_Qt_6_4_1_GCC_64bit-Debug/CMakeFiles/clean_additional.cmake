# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "07_QListString_autogen"
  "CMakeFiles/07_QListString_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/07_QListString_autogen.dir/ParseCache.txt"
  )
endif()
