# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jamie/portfolio/Breakout

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jamie/portfolio/Breakout/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Breakout.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Breakout.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Breakout.dir/flags.make

CMakeFiles/Breakout.dir/Source/main.cpp.o: CMakeFiles/Breakout.dir/flags.make
CMakeFiles/Breakout.dir/Source/main.cpp.o: ../Source/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jamie/portfolio/Breakout/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Breakout.dir/Source/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Breakout.dir/Source/main.cpp.o -c /Users/jamie/portfolio/Breakout/Source/main.cpp

CMakeFiles/Breakout.dir/Source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Breakout.dir/Source/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/portfolio/Breakout/Source/main.cpp > CMakeFiles/Breakout.dir/Source/main.cpp.i

CMakeFiles/Breakout.dir/Source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Breakout.dir/Source/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/portfolio/Breakout/Source/main.cpp -o CMakeFiles/Breakout.dir/Source/main.cpp.s

CMakeFiles/Breakout.dir/Source/Game.cpp.o: CMakeFiles/Breakout.dir/flags.make
CMakeFiles/Breakout.dir/Source/Game.cpp.o: ../Source/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jamie/portfolio/Breakout/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Breakout.dir/Source/Game.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Breakout.dir/Source/Game.cpp.o -c /Users/jamie/portfolio/Breakout/Source/Game.cpp

CMakeFiles/Breakout.dir/Source/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Breakout.dir/Source/Game.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/portfolio/Breakout/Source/Game.cpp > CMakeFiles/Breakout.dir/Source/Game.cpp.i

CMakeFiles/Breakout.dir/Source/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Breakout.dir/Source/Game.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/portfolio/Breakout/Source/Game.cpp -o CMakeFiles/Breakout.dir/Source/Game.cpp.s

CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.o: CMakeFiles/Breakout.dir/flags.make
CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.o: ../Source/Components/GameObject.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jamie/portfolio/Breakout/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.o -c /Users/jamie/portfolio/Breakout/Source/Components/GameObject.cpp

CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/portfolio/Breakout/Source/Components/GameObject.cpp > CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.i

CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/portfolio/Breakout/Source/Components/GameObject.cpp -o CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.s

CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.o: CMakeFiles/Breakout.dir/flags.make
CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.o: ../Source/Components/SpriteComponent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jamie/portfolio/Breakout/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.o -c /Users/jamie/portfolio/Breakout/Source/Components/SpriteComponent.cpp

CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/portfolio/Breakout/Source/Components/SpriteComponent.cpp > CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.i

CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/portfolio/Breakout/Source/Components/SpriteComponent.cpp -o CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.s

CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.o: CMakeFiles/Breakout.dir/flags.make
CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.o: ../Source/Utility/Rect.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jamie/portfolio/Breakout/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.o -c /Users/jamie/portfolio/Breakout/Source/Utility/Rect.cpp

CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/portfolio/Breakout/Source/Utility/Rect.cpp > CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.i

CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/portfolio/Breakout/Source/Utility/Rect.cpp -o CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.s

CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.o: CMakeFiles/Breakout.dir/flags.make
CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.o: ../Source/Utility/Vector2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jamie/portfolio/Breakout/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.o -c /Users/jamie/portfolio/Breakout/Source/Utility/Vector2.cpp

CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/portfolio/Breakout/Source/Utility/Vector2.cpp > CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.i

CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/portfolio/Breakout/Source/Utility/Vector2.cpp -o CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.s

# Object files for target Breakout
Breakout_OBJECTS = \
"CMakeFiles/Breakout.dir/Source/main.cpp.o" \
"CMakeFiles/Breakout.dir/Source/Game.cpp.o" \
"CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.o" \
"CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.o" \
"CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.o" \
"CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.o"

# External object files for target Breakout
Breakout_EXTERNAL_OBJECTS =

bin/Breakout: CMakeFiles/Breakout.dir/Source/main.cpp.o
bin/Breakout: CMakeFiles/Breakout.dir/Source/Game.cpp.o
bin/Breakout: CMakeFiles/Breakout.dir/Source/Components/GameObject.cpp.o
bin/Breakout: CMakeFiles/Breakout.dir/Source/Components/SpriteComponent.cpp.o
bin/Breakout: CMakeFiles/Breakout.dir/Source/Utility/Rect.cpp.o
bin/Breakout: CMakeFiles/Breakout.dir/Source/Utility/Vector2.cpp.o
bin/Breakout: CMakeFiles/Breakout.dir/build.make
bin/Breakout: ../Libs/ASGE/lib/osx/libGameEngined.a
bin/Breakout: ../Libs/ASGE/lib/osx/libGLEWd.a
bin/Breakout: ../Libs/ASGE/lib/osx/libglfw3d.a
bin/Breakout: ../Libs/ASGE/lib/osx/libfreetyped.a
bin/Breakout: ../Libs/ASGE/lib/osx/libphysfscppd.a
bin/Breakout: ../Libs/ASGE/lib/osx/libphysfsd.a
bin/Breakout: CMakeFiles/Breakout.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jamie/portfolio/Breakout/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable bin/Breakout"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Breakout.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Breakout.dir/build: bin/Breakout

.PHONY : CMakeFiles/Breakout.dir/build

CMakeFiles/Breakout.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Breakout.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Breakout.dir/clean

CMakeFiles/Breakout.dir/depend:
	cd /Users/jamie/portfolio/Breakout/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jamie/portfolio/Breakout /Users/jamie/portfolio/Breakout /Users/jamie/portfolio/Breakout/cmake-build-debug /Users/jamie/portfolio/Breakout/cmake-build-debug /Users/jamie/portfolio/Breakout/cmake-build-debug/CMakeFiles/Breakout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Breakout.dir/depend

