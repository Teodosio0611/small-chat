# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/opt/homebrew/Cellar/cmake/3.24.2/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/opt/homebrew/Cellar/cmake/3.24.2/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/huangfeijie/smallchat/CMakeFiles /Users/huangfeijie/smallchat//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/huangfeijie/smallchat/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named smallchat-server

# Build rule for target.
smallchat-server: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 smallchat-server
.PHONY : smallchat-server

# fast build rule for target.
smallchat-server/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/smallchat-server.dir/build.make CMakeFiles/smallchat-server.dir/build
.PHONY : smallchat-server/fast

chatlib.o: chatlib.cpp.o
.PHONY : chatlib.o

# target to build an object file
chatlib.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/smallchat-server.dir/build.make CMakeFiles/smallchat-server.dir/chatlib.cpp.o
.PHONY : chatlib.cpp.o

chatlib.i: chatlib.cpp.i
.PHONY : chatlib.i

# target to preprocess a source file
chatlib.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/smallchat-server.dir/build.make CMakeFiles/smallchat-server.dir/chatlib.cpp.i
.PHONY : chatlib.cpp.i

chatlib.s: chatlib.cpp.s
.PHONY : chatlib.s

# target to generate assembly for a file
chatlib.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/smallchat-server.dir/build.make CMakeFiles/smallchat-server.dir/chatlib.cpp.s
.PHONY : chatlib.cpp.s

smallchat-server.o: smallchat-server.cpp.o
.PHONY : smallchat-server.o

# target to build an object file
smallchat-server.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/smallchat-server.dir/build.make CMakeFiles/smallchat-server.dir/smallchat-server.cpp.o
.PHONY : smallchat-server.cpp.o

smallchat-server.i: smallchat-server.cpp.i
.PHONY : smallchat-server.i

# target to preprocess a source file
smallchat-server.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/smallchat-server.dir/build.make CMakeFiles/smallchat-server.dir/smallchat-server.cpp.i
.PHONY : smallchat-server.cpp.i

smallchat-server.s: smallchat-server.cpp.s
.PHONY : smallchat-server.s

# target to generate assembly for a file
smallchat-server.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/smallchat-server.dir/build.make CMakeFiles/smallchat-server.dir/smallchat-server.cpp.s
.PHONY : smallchat-server.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... smallchat-server"
	@echo "... chatlib.o"
	@echo "... chatlib.i"
	@echo "... chatlib.s"
	@echo "... smallchat-server.o"
	@echo "... smallchat-server.i"
	@echo "... smallchat-server.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

