cmake_minimum_required(VERSION 3.29)
project(..)

set(CMAKE_CXX_STANDARD 17)

add_executable(fractal_mpi main.cpp)

find_package(MPI)

find_package(fmt)

find_package(glfw3)

find_package(FreeGLUT)



if(MPI_FOUND)
    message(STATUS "MPI FOUND")
    message(STATUS "MPI Version: ${MPI_CXX_VERSION}")
    message(STATUS "MPI Include Path: ${MPI_INCLUDE_PATH}")
    message(STATUS "MPI Libraries: ${MPI_LIBRARIES}")
    message(STATUS "MPI Compiler: ${MPI_CXX_COMPILER}")
    message(STATUS "MPI Link Flags: ${MPI_LINK_FLAGS}")
else()
    message(FATAL_ERROR "MPI NOT FOUND")
endif ()

include_directories($MPI_INCLUDE_PATH)

target_link_libraries(fractal_mpi ${MPI_LIBRARIES} fmt::fmt
        glfw  FreeGLUT::freeglut_static )
