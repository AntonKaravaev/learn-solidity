// "SPDX-License-Identifier: UNLICENSED"
/*

https://www.educative.io/answers/what-are-pure-functions-in-solidity
Pure:
    In Solidity, a function that doesn’t read or modify the variables of the state is called a pure function. 
    It can only use local variables that are declared in the function 
    and the arguments that are passed to the function to compute or return a value.

    If the pure function is doing any of the following, the compiler will consider them as reading state 
    variables and will throw a warning:

    - Reading state variables
    - Accessing balance or address
    - Invoking a function that is not pure
    - Accessing a global variable, message, or block
    - Using certain opcodes in inline assembly
    
    If the pure function is doing any of the following, the compiler will consider them 
    as modifying state variables and will throw a warning.

    - Modifying or over-writing state variables
    - Creating new contracts
    - Invoking a function that is not pure or view
    - Emitting events
    - Using certain opcodes in inline assembly
    - Using selfdestruct
    - Using low-level function calls
    - Sending Ether along with function calls
    - Pure functions are allowed to use the revert() and require() functions.


    --> View function declares that no state will be changed. 
    --> Pure function declares that no state variable will be changed or read.
*/