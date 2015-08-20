string(REGEX REPLACE "cmake$" "" opentld_path ${CMAKE_CURRENT_LIST_FILE})

if (NOT TARGET libopentld)
  add_subdirectory(${opentld_path} opentld_build)
endif()
