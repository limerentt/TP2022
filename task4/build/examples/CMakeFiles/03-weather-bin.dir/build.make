# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/lex/for_tp/TP2022/task4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lex/for_tp/TP2022/task4/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/03-weather-bin.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/03-weather-bin.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/03-weather-bin.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/03-weather-bin.dir/flags.make

examples/CMakeFiles/03-weather-bin.dir/03-main.cpp.o: examples/CMakeFiles/03-weather-bin.dir/flags.make
examples/CMakeFiles/03-weather-bin.dir/03-main.cpp.o: ../examples/03-main.cpp
examples/CMakeFiles/03-weather-bin.dir/03-main.cpp.o: examples/CMakeFiles/03-weather-bin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lex/for_tp/TP2022/task4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/03-weather-bin.dir/03-main.cpp.o"
	cd /home/lex/for_tp/TP2022/task4/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/03-weather-bin.dir/03-main.cpp.o -MF CMakeFiles/03-weather-bin.dir/03-main.cpp.o.d -o CMakeFiles/03-weather-bin.dir/03-main.cpp.o -c /home/lex/for_tp/TP2022/task4/examples/03-main.cpp

examples/CMakeFiles/03-weather-bin.dir/03-main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/03-weather-bin.dir/03-main.cpp.i"
	cd /home/lex/for_tp/TP2022/task4/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lex/for_tp/TP2022/task4/examples/03-main.cpp > CMakeFiles/03-weather-bin.dir/03-main.cpp.i

examples/CMakeFiles/03-weather-bin.dir/03-main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/03-weather-bin.dir/03-main.cpp.s"
	cd /home/lex/for_tp/TP2022/task4/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lex/for_tp/TP2022/task4/examples/03-main.cpp -o CMakeFiles/03-weather-bin.dir/03-main.cpp.s

# Object files for target 03-weather-bin
03__weather__bin_OBJECTS = \
"CMakeFiles/03-weather-bin.dir/03-main.cpp.o"

# External object files for target 03-weather-bin
03__weather__bin_EXTERNAL_OBJECTS =

../bin/03-weather-bin: examples/CMakeFiles/03-weather-bin.dir/03-main.cpp.o
../bin/03-weather-bin: examples/CMakeFiles/03-weather-bin.dir/build.make
../bin/03-weather-bin: src/03-weather/lib03-weather.so
../bin/03-weather-bin: _deps/cpr_repo-build/cpr/libcpr.so.1.8.1
../bin/03-weather-bin: _deps/curl-build/lib/libcurl-d.so
../bin/03-weather-bin: /usr/lib/libssl.so
../bin/03-weather-bin: /usr/lib/libcrypto.so
../bin/03-weather-bin: /usr/lib/libz.so
../bin/03-weather-bin: /usr/lib/libssh2.so
../bin/03-weather-bin: examples/CMakeFiles/03-weather-bin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lex/for_tp/TP2022/task4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/03-weather-bin"
	cd /home/lex/for_tp/TP2022/task4/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/03-weather-bin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/03-weather-bin.dir/build: ../bin/03-weather-bin
.PHONY : examples/CMakeFiles/03-weather-bin.dir/build

examples/CMakeFiles/03-weather-bin.dir/clean:
	cd /home/lex/for_tp/TP2022/task4/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/03-weather-bin.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/03-weather-bin.dir/clean

examples/CMakeFiles/03-weather-bin.dir/depend:
	cd /home/lex/for_tp/TP2022/task4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lex/for_tp/TP2022/task4 /home/lex/for_tp/TP2022/task4/examples /home/lex/for_tp/TP2022/task4/build /home/lex/for_tp/TP2022/task4/build/examples /home/lex/for_tp/TP2022/task4/build/examples/CMakeFiles/03-weather-bin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/03-weather-bin.dir/depend
