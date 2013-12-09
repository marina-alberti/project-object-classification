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
include CMakeFiles/test2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test2.dir/flags.make

CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o: CMakeFiles/test2.dir/flags.make
CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o: TestCases/TestCaseModelTrainedIO/impl/test2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o -c /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/TestCases/TestCaseModelTrainedIO/impl/test2.cpp

CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/TestCases/TestCaseModelTrainedIO/impl/test2.cpp > CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.i

CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/TestCases/TestCaseModelTrainedIO/impl/test2.cpp -o CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.s

CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o.requires:
.PHONY : CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o.requires

CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o.provides: CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o.requires
	$(MAKE) -f CMakeFiles/test2.dir/build.make CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o.provides.build
.PHONY : CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o.provides

CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o.provides.build: CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o

# Object files for target test2
test2_OBJECTS = \
"CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o"

# External object files for target test2
test2_EXTERNAL_OBJECTS =

test2: CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o
test2: libSceneClassification.a
test2: /opt/ros/groovy/lib/libopencv_calib3d.so
test2: /opt/ros/groovy/lib/libopencv_contrib.so
test2: /opt/ros/groovy/lib/libopencv_core.so
test2: /opt/ros/groovy/lib/libopencv_features2d.so
test2: /opt/ros/groovy/lib/libopencv_flann.so
test2: /opt/ros/groovy/lib/libopencv_gpu.so
test2: /opt/ros/groovy/lib/libopencv_highgui.so
test2: /opt/ros/groovy/lib/libopencv_imgproc.so
test2: /opt/ros/groovy/lib/libopencv_legacy.so
test2: /opt/ros/groovy/lib/libopencv_ml.so
test2: /opt/ros/groovy/lib/libopencv_nonfree.so
test2: /opt/ros/groovy/lib/libopencv_objdetect.so
test2: /opt/ros/groovy/lib/libopencv_photo.so
test2: /opt/ros/groovy/lib/libopencv_stitching.so
test2: /opt/ros/groovy/lib/libopencv_superres.so
test2: /opt/ros/groovy/lib/libopencv_ts.so
test2: /opt/ros/groovy/lib/libopencv_video.so
test2: /opt/ros/groovy/lib/libopencv_videostab.so
test2: CMakeFiles/test2.dir/build.make
test2: CMakeFiles/test2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test2.dir/build: test2
.PHONY : CMakeFiles/test2.dir/build

CMakeFiles/test2.dir/requires: CMakeFiles/test2.dir/TestCases/TestCaseModelTrainedIO/impl/test2.cpp.o.requires
.PHONY : CMakeFiles/test2.dir/requires

CMakeFiles/test2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test2.dir/clean

CMakeFiles/test2.dir/depend:
	cd /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification /home/marina/workspace_eclipse_scene_object_classification/Scene_Object_Classification/CMakeFiles/test2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test2.dir/depend
