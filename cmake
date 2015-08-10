string(REGEX REPLACE "cmake$" "" opentld_path ${CMAKE_CURRENT_LIST_FILE})

include_directories(${opentld_path}/src)

if (NOT TARGET libopentld)
  add_subdirectory(${opentld_path} opentld_build)
endif()
