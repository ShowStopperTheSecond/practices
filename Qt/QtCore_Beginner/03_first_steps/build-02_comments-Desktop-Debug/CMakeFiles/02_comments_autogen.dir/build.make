# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/javid/Qt_practice/Beginner/Section_03/02_comments

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/javid/Qt_practice/Beginner/Section_03/build-02_comments-Desktop-Debug

# Utility rule file for 02_comments_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/02_comments_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/02_comments_autogen.dir/progress.make

CMakeFiles/02_comments_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/javid/Qt_practice/Beginner/Section_03/build-02_comments-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target 02_comments"
	/usr/bin/cmake -E cmake_autogen /home/javid/Qt_practice/Beginner/Section_03/build-02_comments-Desktop-Debug/CMakeFiles/02_comments_autogen.dir/AutogenInfo.json Debug

02_comments_autogen: CMakeFiles/02_comments_autogen
02_comments_autogen: CMakeFiles/02_comments_autogen.dir/build.make
.PHONY : 02_comments_autogen

# Rule to build all files generated by this target.
CMakeFiles/02_comments_autogen.dir/build: 02_comments_autogen
.PHONY : CMakeFiles/02_comments_autogen.dir/build

CMakeFiles/02_comments_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/02_comments_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/02_comments_autogen.dir/clean

CMakeFiles/02_comments_autogen.dir/depend:
	cd /home/javid/Qt_practice/Beginner/Section_03/build-02_comments-Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/javid/Qt_practice/Beginner/Section_03/02_comments /home/javid/Qt_practice/Beginner/Section_03/02_comments /home/javid/Qt_practice/Beginner/Section_03/build-02_comments-Desktop-Debug /home/javid/Qt_practice/Beginner/Section_03/build-02_comments-Desktop-Debug /home/javid/Qt_practice/Beginner/Section_03/build-02_comments-Desktop-Debug/CMakeFiles/02_comments_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/02_comments_autogen.dir/depend

