#include <stdio.h>

#include "native.h"

/*
    Don't really get why I cannot import e.g. main/main.h
*/
#include <platform/linuxbsd/platform_config.h>

UNIFEX_TERM init(UnifexEnv *env) {
    /*
        Some example CNode state that can be stored between different function
        invocations
    */
    State *state = unifex_alloc_state(env);
    state->test_int = 10;

    printf("Hello from Godot wrapper\n");
    fflush(stdout);

    /*
        Try to invoke some Godot function here
    */

    return init_result_ok(env, state);
}

void handle_destroy_state(UnifexEnv *env, State *state) {
    /*
        If we declare state in `*.spec.exs` we have to derive function
        that will destroy it
    */

    // free state here if needed

    UNIFEX_UNUSED(env);
    UNIFEX_UNUSED(state);
}