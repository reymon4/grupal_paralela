message(STATUS "Conan: Using CMakeDeps conandeps_legacy.cmake aggregator via include()")
message(STATUS "Conan: It is recommended to use explicit find_package() per dependency instead")

find_package(glad)
find_package(glm)
find_package(FreeGLUT)
find_package(glew)
find_package(glu)
find_package(glfw3)
find_package(opengl_system)
find_package(fmt)

set(CONANDEPS_LEGACY  glad::glad  glm::glm  FreeGLUT::freeglut_static  GLEW::GLEW  glu::glu  glfw  opengl::opengl  fmt::fmt )