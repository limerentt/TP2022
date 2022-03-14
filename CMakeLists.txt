cmake_minimum_required( VERSION 3.8 )

project( nammme VERSION 0.0.1 )

execute_process(COMMAND python3 preparing.py WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/A)

add_subdirectory( B )

add_executable( C ${CMAKE_CURRENT_SOURCE_DIR}/C/main.cpp )

set( EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin )

set( LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/lib )

include_directories( ${CMAKE_CURRENT_SOURCE_DIR} )

target_link_libraries( C MainLibrary )
