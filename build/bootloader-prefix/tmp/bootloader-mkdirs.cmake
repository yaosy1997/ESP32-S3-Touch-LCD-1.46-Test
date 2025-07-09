# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/bootloader/subproject")
  file(MAKE_DIRECTORY "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/bootloader/subproject")
endif()
file(MAKE_DIRECTORY
  "/Volumes/SSD990/esp/ESP32-S3-Touch-LCD-1.46-Test/build/bootloader"
  "/Volumes/SSD990/esp/ESP32-S3-Touch-LCD-1.46-Test/build/bootloader-prefix"
  "/Volumes/SSD990/esp/ESP32-S3-Touch-LCD-1.46-Test/build/bootloader-prefix/tmp"
  "/Volumes/SSD990/esp/ESP32-S3-Touch-LCD-1.46-Test/build/bootloader-prefix/src/bootloader-stamp"
  "/Volumes/SSD990/esp/ESP32-S3-Touch-LCD-1.46-Test/build/bootloader-prefix/src"
  "/Volumes/SSD990/esp/ESP32-S3-Touch-LCD-1.46-Test/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Volumes/SSD990/esp/ESP32-S3-Touch-LCD-1.46-Test/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Volumes/SSD990/esp/ESP32-S3-Touch-LCD-1.46-Test/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
