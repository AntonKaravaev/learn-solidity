// "SPDX-License-Identifier: UNLICENSED"

/*
The return Statement
A Solidity function can have an optional return statement. 
This is required if you want to return a value from a function. 
This statement should be the last statement in a function.

As in above example, we are using uint2str function to return a string.
In Solidity, a function can return multiple values as well. See the example below −
*/

pragma solidity >=0.7.0 <0.9.0;

contract Test {
    function getResult() public pure returns (uint256 product, uint256 sum) {
        uint256 a = 1; // local variable
        uint256 b = 2;
        product = a * b;
        sum = a + b;

        //alternative return statement to return
        //multiple values
        //return(a*b, a+b);
    }
}
