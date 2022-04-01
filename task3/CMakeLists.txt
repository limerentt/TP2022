cmake_minimum_required(VERSION 2.8)

option(ARM_BUILD)
if (ARM_BUILD)
add_definitions(-DARM_BUILD)
endif (ARM_BUILD)

option(TOOLCHAIN)
if (TOOLCHAIN)
add_definitions(-DTOOLCHAIN)
endif (TOOLCHAIN)

set(CMAKE_C_COMPILER ${TOOLCHAIN}/aarch64-linux-gnu-gcc)

set(CMAKE_CXX_COMPILER ${TOOLCHAIN}/aarch64-linux-gnu-g++)

set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")


project(SimpleLibrary)

include_directories(include)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${SimpleLibrary_SOURCE_DIR}/bin)

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${SimpleLibrary_SOURCE_DIR}/lib)

add_subdirectory(src)
add_executable(Main main.cpp)
add_executable(MainLib main_lib.cpp)

install(DIRECTORY ${CMAKE_SOURCE_DIR}/include 
	DESTINATION ${CMAKE_INSTALL_PREFIX})

target_link_libraries(MainLib buffer)

install(TARGETS MainLib Main ${CMAKE_INSTALL_PREFIX}/bin)
