# Install script for directory: G:/Projetos/ModernOpenGLSample/deps/assimp/code

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/Assimp")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libassimp5.4.1-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/lib/Debug/assimp-vc143-mtd.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/lib/Release/assimp-vc143-mt.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/lib/MinSizeRel/assimp-vc143-mt.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/lib/RelWithDebInfo/assimp-vc143-mt.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libassimp5.4.1" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/bin/Debug/assimp-vc143-mtd.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/bin/Release/assimp-vc143-mt.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/bin/MinSizeRel/assimp-vc143-mt.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/bin/RelWithDebInfo/assimp-vc143-mt.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp" TYPE FILE FILES
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/anim.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/aabb.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/ai_assert.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/camera.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/color4.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/color4.inl"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/code/../include/assimp/config.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/ColladaMetaData.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/commonMetaData.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/defs.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/cfileio.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/light.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/material.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/material.inl"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/matrix3x3.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/matrix3x3.inl"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/matrix4x4.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/matrix4x4.inl"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/mesh.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/ObjMaterial.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/pbrmaterial.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/GltfMaterial.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/postprocess.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/quaternion.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/quaternion.inl"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/scene.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/metadata.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/texture.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/types.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/vector2.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/vector2.inl"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/vector3.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/vector3.inl"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/version.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/cimport.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/AssertHandler.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/importerdesc.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Importer.hpp"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/DefaultLogger.hpp"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/ProgressHandler.hpp"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/IOStream.hpp"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/IOSystem.hpp"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Logger.hpp"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/LogStream.hpp"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/NullLogger.hpp"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/cexport.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Exporter.hpp"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/DefaultIOStream.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/DefaultIOSystem.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/ZipArchiveIOSystem.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/SceneCombiner.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/fast_atof.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/qnan.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/BaseImporter.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Hash.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/MemoryIOWrapper.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/ParsingUtils.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/StreamReader.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/StreamWriter.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/StringComparison.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/StringUtils.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/SGSpatialSort.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/GenericProperty.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/SpatialSort.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/SkeletonMeshBuilder.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/SmallVector.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/SmoothingGroups.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/SmoothingGroups.inl"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/StandardShapes.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/RemoveComments.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Subdivision.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Vertex.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/LineSplitter.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/TinyFormatter.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Profiler.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/LogAux.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Bitmap.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/XMLTools.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/IOStreamBuffer.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/CreateAnimMesh.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/XmlParser.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/BlobIOSystem.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/MathFunctions.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Exceptional.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/ByteSwapper.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Base64.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp/Compiler" TYPE FILE FILES
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Compiler/pushpack1.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Compiler/poppack1.h"
    "G:/Projetos/ModernOpenGLSample/deps/assimp/code/../include/assimp/Compiler/pstdint.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/bin/Debug/assimp-vc143-mtd.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/bin/Release/assimp-vc143-mt.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/bin/MinSizeRel/assimp-vc143-mt.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "G:/Projetos/ModernOpenGLSample/deps/assimp/build/x64/bin/RelWithDebInfo/assimp-vc143-mt.pdb")
  endif()
endif()

