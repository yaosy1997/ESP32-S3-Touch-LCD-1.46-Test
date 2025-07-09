# Install script for directory: /Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/yaosiyuan/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32s3-elf-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/block_cipher.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/build_info.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/compat-2.x.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_crypto.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_from_psa.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_from_legacy.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_superset_legacy.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_ssl.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_x509.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/lms.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/mbedtls_config.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs7.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/private_access.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha3.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/build_info.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_auto_enabled.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_dependencies.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_key_pair_types.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_synonyms.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_key_derivation.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_config.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_key_derivation.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_legacy.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_types.h"
    "/Volumes/SSD990/esp-tool/v5.3.2/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Volumes/SSD990/esp/ESP32-S3-Touch-LCD-1.46-Test/build/esp-idf/mbedtls/mbedtls/include/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
