# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification

# Include any dependencies generated for this target.
include CMakeFiles/utils.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/utils.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/utils.dir/flags.make

CMakeFiles/utils.dir/utils/impl/utils.cpp.o: CMakeFiles/utils.dir/flags.make
CMakeFiles/utils.dir/utils/impl/utils.cpp.o: utils/impl/utils.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/utils.dir/utils/impl/utils.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/utils/impl/utils.cpp.o -c /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/utils/impl/utils.cpp

CMakeFiles/utils.dir/utils/impl/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/utils/impl/utils.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/utils/impl/utils.cpp > CMakeFiles/utils.dir/utils/impl/utils.cpp.i

CMakeFiles/utils.dir/utils/impl/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/utils/impl/utils.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/utils/impl/utils.cpp -o CMakeFiles/utils.dir/utils/impl/utils.cpp.s

CMakeFiles/utils.dir/utils/impl/utils.cpp.o.requires:
.PHONY : CMakeFiles/utils.dir/utils/impl/utils.cpp.o.requires

CMakeFiles/utils.dir/utils/impl/utils.cpp.o.provides: CMakeFiles/utils.dir/utils/impl/utils.cpp.o.requires
	$(MAKE) -f CMakeFiles/utils.dir/build.make CMakeFiles/utils.dir/utils/impl/utils.cpp.o.provides.build
.PHONY : CMakeFiles/utils.dir/utils/impl/utils.cpp.o.provides

CMakeFiles/utils.dir/utils/impl/utils.cpp.o.provides.build: CMakeFiles/utils.dir/utils/impl/utils.cpp.o

# Object files for target utils
utils_OBJECTS = \
"CMakeFiles/utils.dir/utils/impl/utils.cpp.o"

# External object files for target utils
utils_EXTERNAL_OBJECTS =

libutils.a: CMakeFiles/utils.dir/utils/impl/utils.cpp.o
libutils.a: CMakeFiles/utils.dir/build.make
libutils.a: CMakeFiles/utils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libutils.a"
	$(CMAKE_COMMAND) -P CMakeFiles/utils.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/utils.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/utils.dir/build: libutils.a
.PHONY : CMakeFiles/utils.dir/build

CMakeFiles/utils.dir/requires: CMakeFiles/utils.dir/utils/impl/utils.cpp.o.requires
.PHONY : CMakeFiles/utils.dir/requires

CMakeFiles/utils.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/utils.dir/cmake_clean.cmake
.PHONY : CMakeFiles/utils.dir/clean

CMakeFiles/utils.dir/depend:
	cd /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/CMakeFiles/utils.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/utils.dir/depend

