// "SPDX-License-Identifier: UNLICENSED"
/*
    calldata vs memory
    memory:
        the compiler inserts extra code to decode the values from calldata and copy them to a new location in memory, 
        which adds some extra cost so it's only necessary if you want to modify the value in place.
    calldata:
        calldata stores also in memory but it's not the memory belonging to contract.
        It does not have an address that you could use with the MLOAD/MSTORE opcodes to reach it.
        When the caller is another contract, calldata is mapped from the memory space of that contract and only it can reach it.
        --> calldata is that it's read-only
    
    storage :
        A storage parametfer does not really mean your data is copied into storage
        a pointer/reference
        uses for like arrays or structs:
        reference on the stack, he actual content is elsewhere

    ----> Possible uses for storage parameters <----
    here are two main use cases for storage parameters:

    1) Giving libraries access to storage variables. A library function can potentially could be called 
        by many different contracts having different storage variables and, if it's an external call, 
        these contracts are not known at compilation time. It cannot refer to their variables by their names. 
        Solidity solves this problem by making it possible to pass a reference to a storage variable 
        into a function via a parameter.

    2) Making your functions generic in regards to storage. Say, your contract stores several instances of a struct 
        and you want to have a function that validates them. You obviously do not want to have to write one function 
        per instance and you can avoid it by having the function accept the struct as a parameter. 
        But if you declare the parameter as memory, each call will involve allocating a new instance in memory 
        and copying its data from storage which is costly. A better solution is to declare the parameter as storage 
        so that your function can accept a reference to it, which is potentially much lighter.


    Summarize:
        1) use calldata when you only need read-only data, avoiding the cost of allocating memory or storage.
        2) use memory if you want your parameter itself to be mutable.
        3) use storage if your argument passed in will already exist in storage, 
            to prevent copying something into storage over into memory unnecessarily.
*/