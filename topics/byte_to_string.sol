// "SPDX-License-Identifier: UNLICENSED"

/*
    In above example, "test" is a string literal and data is a string variable. 
    More preferred way is to use byte types instead of String as string operation 
    requires more gas as compared to byte operation. Solidity provides inbuilt conversion 
    between bytes to string and vice versa. In Solidity we can assign String literal 
    to a byte32 type variable easily. Solidity considers it as a byte32 literal.
*/

pragma solidity >=0.7.0 <0.9.0;

contract SolidityTest {
   string data = "test";
   bytes32 dataByteStr = "test";
   
   // Bytes can be converted to String using string() constructor.
   bytes bstr = new bytes(10);
   string message = string(bstr);     
}