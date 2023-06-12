# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/app01_ScrollView_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/app01_ScrollView_autogen.dir/ParseCache.txt"
  "app01_ScrollView_autogen"
  )
endif()
