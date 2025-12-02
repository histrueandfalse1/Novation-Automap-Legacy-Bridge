cmake_minimum_required(VERSION 3.15) 
project(AutomapRev CXX C)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_EXTENSIONS False)

add_executable(AutomapRev
    src/main.cpp
)

target_include_directories(AutomapRev PRIVATE 
    include
)

if (APPLE)
    target_link_libraries(AutomapRev PRIVATE 
        "-framework CoreMIDI"
        "-framework CoreFoundation"
    )
endif()