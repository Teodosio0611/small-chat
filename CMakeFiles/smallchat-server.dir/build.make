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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/huangfeijie/smallchat

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/huangfeijie/smallchat

# Include any dependencies generated for this target.
include CMakeFiles/smallchat-server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/smallchat-server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/smallchat-server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/smallchat-server.dir/flags.make

CMakeFiles/smallchat-server.dir/chatlib.cpp.o: CMakeFiles/smallchat-server.dir/flags.make
CMakeFiles/smallchat-server.dir/chatlib.cpp.o: chatlib.cpp
CMakeFiles/smallchat-server.dir/chatlib.cpp.o: CMakeFiles/smallchat-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huangfeijie/smallchat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/smallchat-server.dir/chatlib.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/smallchat-server.dir/chatlib.cpp.o -MF CMakeFiles/smallchat-server.dir/chatlib.cpp.o.d -o CMakeFiles/smallchat-server.dir/chatlib.cpp.o -c /Users/huangfeijie/smallchat/chatlib.cpp

CMakeFiles/smallchat-server.dir/chatlib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smallchat-server.dir/chatlib.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huangfeijie/smallchat/chatlib.cpp > CMakeFiles/smallchat-server.dir/chatlib.cpp.i

CMakeFiles/smallchat-server.dir/chatlib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smallchat-server.dir/chatlib.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huangfeijie/smallchat/chatlib.cpp -o CMakeFiles/smallchat-server.dir/chatlib.cpp.s

CMakeFiles/smallchat-server.dir/smallchat-server.cpp.o: CMakeFiles/smallchat-server.dir/flags.make
CMakeFiles/smallchat-server.dir/smallchat-server.cpp.o: smallchat-server.cpp
CMakeFiles/smallchat-server.dir/smallchat-server.cpp.o: CMakeFiles/smallchat-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huangfeijie/smallchat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/smallchat-server.dir/smallchat-server.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/smallchat-server.dir/smallchat-server.cpp.o -MF CMakeFiles/smallchat-server.dir/smallchat-server.cpp.o.d -o CMakeFiles/smallchat-server.dir/smallchat-server.cpp.o -c /Users/huangfeijie/smallchat/smallchat-server.cpp

CMakeFiles/smallchat-server.dir/smallchat-server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smallchat-server.dir/smallchat-server.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huangfeijie/smallchat/smallchat-server.cpp > CMakeFiles/smallchat-server.dir/smallchat-server.cpp.i

CMakeFiles/smallchat-server.dir/smallchat-server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smallchat-server.dir/smallchat-server.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huangfeijie/smallchat/smallchat-server.cpp -o CMakeFiles/smallchat-server.dir/smallchat-server.cpp.s

# Object files for target smallchat-server
smallchat__server_OBJECTS = \
"CMakeFiles/smallchat-server.dir/chatlib.cpp.o" \
"CMakeFiles/smallchat-server.dir/smallchat-server.cpp.o"

# External object files for target smallchat-server
smallchat__server_EXTERNAL_OBJECTS =

smallchat-server: CMakeFiles/smallchat-server.dir/chatlib.cpp.o
smallchat-server: CMakeFiles/smallchat-server.dir/smallchat-server.cpp.o
smallchat-server: CMakeFiles/smallchat-server.dir/build.make
smallchat-server: CMakeFiles/smallchat-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/huangfeijie/smallchat/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable smallchat-server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/smallchat-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/smallchat-server.dir/build: smallchat-server
.PHONY : CMakeFiles/smallchat-server.dir/build

CMakeFiles/smallchat-server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/smallchat-server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/smallchat-server.dir/clean

CMakeFiles/smallchat-server.dir/depend:
	cd /Users/huangfeijie/smallchat && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/huangfeijie/smallchat /Users/huangfeijie/smallchat /Users/huangfeijie/smallchat /Users/huangfeijie/smallchat /Users/huangfeijie/smallchat/CMakeFiles/smallchat-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/smallchat-server.dir/depend

