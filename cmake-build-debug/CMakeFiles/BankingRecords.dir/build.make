# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\projects\ATM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\projects\ATM\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/BankingRecords.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BankingRecords.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BankingRecords.dir/flags.make

CMakeFiles/BankingRecords.dir/main.cpp.obj: CMakeFiles/BankingRecords.dir/flags.make
CMakeFiles/BankingRecords.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\projects\ATM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BankingRecords.dir/main.cpp.obj"
	C:\Users\simil\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\BankingRecords.dir\main.cpp.obj -c C:\projects\ATM\main.cpp

CMakeFiles/BankingRecords.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BankingRecords.dir/main.cpp.i"
	C:\Users\simil\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\projects\ATM\main.cpp > CMakeFiles\BankingRecords.dir\main.cpp.i

CMakeFiles/BankingRecords.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BankingRecords.dir/main.cpp.s"
	C:\Users\simil\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\projects\ATM\main.cpp -o CMakeFiles\BankingRecords.dir\main.cpp.s

# Object files for target BankingRecords
BankingRecords_OBJECTS = \
"CMakeFiles/BankingRecords.dir/main.cpp.obj"

# External object files for target BankingRecords
BankingRecords_EXTERNAL_OBJECTS =

BankingRecords.exe: CMakeFiles/BankingRecords.dir/main.cpp.obj
BankingRecords.exe: CMakeFiles/BankingRecords.dir/build.make
BankingRecords.exe: CMakeFiles/BankingRecords.dir/linklibs.rsp
BankingRecords.exe: CMakeFiles/BankingRecords.dir/objects1.rsp
BankingRecords.exe: CMakeFiles/BankingRecords.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\projects\ATM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BankingRecords.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\BankingRecords.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BankingRecords.dir/build: BankingRecords.exe

.PHONY : CMakeFiles/BankingRecords.dir/build

CMakeFiles/BankingRecords.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\BankingRecords.dir\cmake_clean.cmake
.PHONY : CMakeFiles/BankingRecords.dir/clean

CMakeFiles/BankingRecords.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\projects\ATM C:\projects\ATM C:\projects\ATM\cmake-build-debug C:\projects\ATM\cmake-build-debug C:\projects\ATM\cmake-build-debug\CMakeFiles\BankingRecords.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BankingRecords.dir/depend
