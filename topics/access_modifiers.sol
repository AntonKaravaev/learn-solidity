// "SPDX-License-Identifier: UNLICENSED"
/*

    Access modifiers.


    ----> State Variable Visibility in Solidity <----
    1) public:
        means that the variable can be accessed by the contract and by other smart contracts. 
        When accessing the variable internally, simply use the variable name (e.g var). 
        When accessing it externally, use the notation this.var.

    2) private:
        means that the variable can only be accessed within the contract it is defined. 
        Trying to access it outside this contract gives a compilation error.

    3) internal:
        means that the variable can only be used with the contract it is defined in and its subclasses.

    
    ----> Function Visibility in Solidity  <----
    There are two types of function calls in Solidity: internal and external.
    The access modifiers in Solidity: 
    1) public:
        function can be called internally or via an EVM message call.
    
    2) private:
        function can only be called from the contract in which it is defined
    
    3) internal:
        function can be accessed in the contract in which it is defined and in its subclasses
    
    4) external:
        function can be accessed from other contracts using transactions. 
        This type of function can be accessed using the this.functionName() notation and not just functionName().

*/