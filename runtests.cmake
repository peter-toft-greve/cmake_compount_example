# https://stackoverflow.com/questions/3065220/ctest-with-multiple-commands
macro(EXEC_CHECK CMD)
    execute_process(COMMAND ${CMD} RESULT_VARIABLE CMD_RESULT)
    if(CMD_RESULT)
        message(FATAL_ERROR "Error running ${CMD}")
    endif()
endmacro()
exec_check(${CMD1})
exec_check(${CMD2})
exec_check(${CMD3})

