cmake_minimum_required(VERSION 3.15)
project(petra LANGUAGES C)

add_executable(a a.c)
add_executable(b b.c)
add_executable(c c.c)

enable_testing()

add_test(NAME test_a_are COMMAND a)
add_test(NAME test_b_are COMMAND b)
add_test(NAME test_c_are COMMAND c)

add_test(NAME test_compound
    COMMAND ${CMAKE_COMMAND}
            -DCMD1=$<TARGET_FILE:a>
            -DCMD2=$<TARGET_FILE:b>
            -DCMD3=$<TARGET_FILE:c>
    -P ${CMAKE_CURRENT_SOURCE_DIR}/runtests.cmake)



