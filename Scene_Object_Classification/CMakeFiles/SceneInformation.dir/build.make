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
include CMakeFiles/SceneInformation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SceneInformation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SceneInformation.dir/flags.make

CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o: CMakeFiles/SceneInformation.dir/flags.make
CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o: DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o -c /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp

CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp > CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.i

CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp -o CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.s

CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o.requires:
.PHONY : CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o.requires

CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o.provides: CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o.requires
	$(MAKE) -f CMakeFiles/SceneInformation.dir/build.make CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o.provides.build
.PHONY : CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o.provides

CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o.provides.build: CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o

# Object files for target SceneInformation
SceneInformation_OBJECTS = \
"CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o"

# External object files for target SceneInformation
SceneInformation_EXTERNAL_OBJECTS =

libSceneInformation.a: CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o
libSceneInformation.a: CMakeFiles/SceneInformation.dir/build.make
libSceneInformation.a: CMakeFiles/SceneInformation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libSceneInformation.a"
	$(CMAKE_COMMAND) -P CMakeFiles/SceneInformation.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SceneInformation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SceneInformation.dir/build: libSceneInformation.a
.PHONY : CMakeFiles/SceneInformation.dir/build

CMakeFiles/SceneInformation.dir/requires: CMakeFiles/SceneInformation.dir/DatabaseHandlingModule/SceneInformationModule/impl/SceneInformation.cpp.o.requires
.PHONY : CMakeFiles/SceneInformation.dir/requires

CMakeFiles/SceneInformation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SceneInformation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SceneInformation.dir/clean

CMakeFiles/SceneInformation.dir/depend:
	cd /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/CMakeFiles/SceneInformation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SceneInformation.dir/depend

