// "SPDX-License-Identifier: UNLICENSED"
/*
    https://www.tutorialspoint.com/solidity/solidity_constructors.htm

    1) A contract can have only one constructor.
    2) A constructor code is executed once when a contract is created and it is used to initialize contract state.
    3) After a constructor code executed, the final code is deployed to blockchain. 
        This code include public functions and code reachable through public functions. 
        Constructor code or any internal method used only by constructor are not included in final code.
    4) A constructor can be either public or internal.
    5) A internal constructor marks the contract as abstract.
    6) In case, no constructor is defined, a default constructor is present in the contract.
*/