include(GoogleTest)
set(TARGET_NAME "unit_tests")

# Link Google Test dynamically if using MSVC
if(MSVC)
  set(gtest_force_shared_crt
      ON
      CACHE BOOL "" FORCE)
endif()

add_subdirectory(libs/googletest-release-1.12.1 EXCLUDE_FROM_ALL)

aux_source_directory(tests TEST_FILES)
aux_source_directory(tests/parser TEST_FILES)
aux_source_directory(tests/utils TEST_FILES)

add_executable(${TARGET_NAME} EXCLUDE_FROM_ALL tests/main.cpp)
add_dependencies(unit_tests ${TARGET_NAME})

if(${CMAKE_VERSION} VERSION_GREATER_EQUAL "3.13")
  cmake_policy(SET CMP0076 NEW)
endif()

# Build all tests in ${TEST_FILES}
foreach(file ${TEST_FILES})
  target_sources(${TARGET_NAME} PUBLIC ${file})
endforeach()

target_link_libraries(${TARGET_NAME} PUBLIC gmock)
target_link_libraries(${TARGET_NAME} PUBLIC libqasmtools)

gtest_discover_tests(${TARGET_NAME})
