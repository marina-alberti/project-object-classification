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
include CMakeFiles/ApiConvertKTHDB.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ApiConvertKTHDB.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ApiConvertKTHDB.dir/flags.make

CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o: CMakeFiles/ApiConvertKTHDB.dir/flags.make
CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o: DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o -c /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp

CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp > CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.i

CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp -o CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.s

CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o.requires:
.PHONY : CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o.requires

CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o.provides: CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o.requires
	$(MAKE) -f CMakeFiles/ApiConvertKTHDB.dir/build.make CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o.provides.build
.PHONY : CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o.provides

CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o.provides.build: CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o

# Object files for target ApiConvertKTHDB
ApiConvertKTHDB_OBJECTS = \
"CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o"

# External object files for target ApiConvertKTHDB
ApiConvertKTHDB_EXTERNAL_OBJECTS =

libApiConvertKTHDB.a: CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o
libApiConvertKTHDB.a: CMakeFiles/ApiConvertKTHDB.dir/build.make
libApiConvertKTHDB.a: CMakeFiles/ApiConvertKTHDB.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libApiConvertKTHDB.a"
	$(CMAKE_COMMAND) -P CMakeFiles/ApiConvertKTHDB.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ApiConvertKTHDB.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ApiConvertKTHDB.dir/build: libApiConvertKTHDB.a
.PHONY : CMakeFiles/ApiConvertKTHDB.dir/build

CMakeFiles/ApiConvertKTHDB.dir/requires: CMakeFiles/ApiConvertKTHDB.dir/DatabaseHandlingModule/ApisConvertionModule/ApiConvertKTHDBModule/impl/ApiConvertKTHDB.cpp.o.requires
.PHONY : CMakeFiles/ApiConvertKTHDB.dir/requires

CMakeFiles/ApiConvertKTHDB.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ApiConvertKTHDB.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ApiConvertKTHDB.dir/clean

CMakeFiles/ApiConvertKTHDB.dir/depend:
	cd /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/CMakeFiles/ApiConvertKTHDB.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ApiConvertKTHDB.dir/depend
