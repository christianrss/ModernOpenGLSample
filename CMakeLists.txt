# CMakeList.txt: projeto de CMake para Model, incluir origem e definir
# lógica específica a um projeto aqui.
#
cmake_minimum_required (VERSION 3.8)

# Enable Hot Reload for MSVC compilers if supported.
if (POLICY CMP0141)
  cmake_policy(SET CMP0141 NEW)
  set(CMAKE_MSVC_DEBUG_INFORMATION_FORMAT "$<IF:$<AND:$<C_COMPILER_ID:MSVC>,$<CXX_COMPILER_ID:MSVC>>,$<$<CONFIG:Debug,RelWithDebInfo>:EditAndContinue>,$<$<CONFIG:Debug,RelWithDebInfo>:ProgramDatabase>>")
endif()

project ("Model")

# Adicione a origem ao executável deste projeto.
add_executable (Model "skeletal_animation.cpp" "shader.h"   "filesystem.h" "camera.h" "mesh.h" "animator.h" "animation.h" "assimp_glm_helpers.h" "bone.h" "animdata.h" "model_animation.h")

if (CMAKE_VERSION VERSION_GREATER 3.12)
  set_property(TARGET Model PROPERTY CXX_STANDARD 20)
endif()

set(GLM_VERSION "0.9.9")
project(glm VERSION ${GLM_VERSION} LANGUAGES CXX)
enable_testing()

add_subdirectory(deps/glm/glm)
add_library(glm::glm ALIAS glm)

if(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_CURRENT_SOURCE_DIR})

#add_subdirectory(deps/glm/test)

endif(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_CURRENT_SOURCE_DIR})

target_include_directories(
	Model
		PRIVATE
			deps/glm
			deps/glad/include
			deps/glad/src
			deps/stb
			deps/assimp/include
			deps/assimp/build/include
			deps/glfw/include
)

target_link_directories(
	Model
		PRIVATE
			deps/assimp/build/lib/Debug
			deps/glfw/lib-vc2022
)

add_subdirectory(deps/glad)

target_link_libraries(
	Model
		PRIVATE
			assimp-vc143-mtd.lib
			glad
			glfw3
)

add_custom_command(
	TARGET
		Model
			POST_BUILD
				COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_SOURCE_DIR}/deps/assimp/build/bin/Debug/assimp-vc143-mtd.dll" "${CMAKE_BINARY_DIR}/assimp-vc143-mtd.dll"
				COMMAND ${CMAKE_COMMAND} -E create_symlink "${CMAKE_SOURCE_DIR}/shaders" "${CMAKE_BINARY_DIR}/shaders"
)

configure_file(configuration/root_directory.h.in configuration/root_directory.h)
include_directories(${CMAKE_BINARY_DIR}/configuration)