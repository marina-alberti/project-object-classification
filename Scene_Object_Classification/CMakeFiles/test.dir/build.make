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
include CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.dir/flags.make

CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o: TestCases/TestCase1/impl/test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o -c /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/TestCases/TestCase1/impl/test.cpp

CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/TestCases/TestCase1/impl/test.cpp > CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.i

CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/TestCases/TestCase1/impl/test.cpp -o CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.s

CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o.requires:
.PHONY : CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o.requires

CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o.provides: CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o.provides.build
.PHONY : CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o.provides

CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o.provides.build: CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test: CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o
test: libSceneClassification.a
test: /opt/ros/groovy/lib/libopencv_calib3d.so
test: /opt/ros/groovy/lib/libopencv_contrib.so
test: /opt/ros/groovy/lib/libopencv_core.so
test: /opt/ros/groovy/lib/libopencv_features2d.so
test: /opt/ros/groovy/lib/libopencv_flann.so
test: /opt/ros/groovy/lib/libopencv_gpu.so
test: /opt/ros/groovy/lib/libopencv_highgui.so
test: /opt/ros/groovy/lib/libopencv_imgproc.so
test: /opt/ros/groovy/lib/libopencv_legacy.so
test: /opt/ros/groovy/lib/libopencv_ml.so
test: /opt/ros/groovy/lib/libopencv_nonfree.so
test: /opt/ros/groovy/lib/libopencv_objdetect.so
test: /opt/ros/groovy/lib/libopencv_photo.so
test: /opt/ros/groovy/lib/libopencv_stitching.so
test: /opt/ros/groovy/lib/libopencv_superres.so
test: /opt/ros/groovy/lib/libopencv_ts.so
test: /opt/ros/groovy/lib/libopencv_video.so
test: /opt/ros/groovy/lib/libopencv_videostab.so
test: CMakeFiles/test.dir/build.make
test: CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.dir/build: test
.PHONY : CMakeFiles/test.dir/build

CMakeFiles/test.dir/requires: CMakeFiles/test.dir/TestCases/TestCase1/impl/test.cpp.o.requires
.PHONY : CMakeFiles/test.dir/requires

CMakeFiles/test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.dir/clean

CMakeFiles/test.dir/depend:
	cd /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.dir/depend

