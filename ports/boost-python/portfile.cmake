# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/python
    REF boost-1.70.0
    SHA512 0e540f68713460c64f195f56af1cbd00ae4fa98adc91a83a0c1fdb7e60950cf282cab02b772f06e7c268c3cd294566d6abfa1d1aa545c687a256d6863870f72d
    HEAD_REF master
    PATCHES unwind-type.patch
)

# Find Python. Can't use find_package here, but we already know where everything is
file(GLOB PYTHON_INCLUDE_PATH "${CURRENT_INSTALLED_DIR}/include/python[0-9.]*")
set(PYTHONLIBS_RELEASE "${CURRENT_INSTALLED_DIR}/lib")
set(PYTHONLIBS_DEBUG "${CURRENT_INSTALLED_DIR}/debug/lib")
string(REGEX REPLACE ".*python([0-9\.]+)$" "\\1" PYTHON_VERSION "${PYTHON_INCLUDE_PATH}")
include(${CURRENT_INSTALLED_DIR}/share/boost-build/boost-modular-build.cmake)
boost_modular_build(SOURCE_PATH ${SOURCE_PATH})
include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})