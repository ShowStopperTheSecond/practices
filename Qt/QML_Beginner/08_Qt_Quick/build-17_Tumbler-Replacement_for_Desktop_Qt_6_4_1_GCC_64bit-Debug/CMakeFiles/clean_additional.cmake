# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/app17_Tumbler_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/app17_Tumbler_autogen.dir/ParseCache.txt"
  "app17_Tumbler_autogen"
  )
endif()
