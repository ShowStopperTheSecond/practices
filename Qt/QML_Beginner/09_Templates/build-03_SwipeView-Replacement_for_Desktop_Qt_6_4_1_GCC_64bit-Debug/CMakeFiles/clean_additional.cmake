# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/app03_SwipeView_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/app03_SwipeView_autogen.dir/ParseCache.txt"
  "app03_SwipeView_autogen"
  )
endif()
