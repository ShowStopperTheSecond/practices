# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "03_property_binding_autogen"
  "CMakeFiles/03_property_binding_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/03_property_binding_autogen.dir/ParseCache.txt"
  )
endif()
