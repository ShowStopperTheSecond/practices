# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/app02_StackViewApplication_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/app02_StackViewApplication_autogen.dir/ParseCache.txt"
  "app02_StackViewApplication_autogen"
  )
endif()
