// "SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 <0.9.0;

contract DataType {

    bool myBool = false;
    
    int myInt;
    int8 myInt8;
    int16 myInt16;
    int64 myInt64;
    int128 myInt128;
    int256 myInt256;

    uint myIntU;
    uint8 myInt8U;
    uint16 myInt16U;
    uint64 myInt64U;
    uint128 myInt128U;
    uint256 myInt256U;

    string myString;
    uint8[] myStringArr;

    // // byte myValue; // tru value of it bytes1
    bytes1 myValueOneByte;
    bytes32 myValue32Byte;

    // fixed myFixed;
    // // fixedMxN, where M represents the number of bits taken by the type 
    // // and N represents how many decimal points are available. 
    // // M must be divisible by 8 and goes from 8 to 256 bits. N must be between 0 and 80, inclusive.
    
    // ufixed8x1 myUnsFixedTest1 = 0.0; // 8x1 --> 8 bits --> 255
    // ufixed8x1 myUnsFixedTest2 = 25.5; // it is not work like 255.0
    // // ufixed8x1 myUnsFixedTest3 = 25.6; // incorrect, only --> 25.5

    // // fixed8x1 myFixedTest1 = -12.9; // incorrect
    // fixed8x1 myFixedTest2 = -12.8; // correct, min value
    // fixed8x1 myFixedTest3 = 0.0;
    // fixed8x1 myFixedTest4 = 12.7; // correct, max value
    // // fixed8x1 myFixedTest5 = 12.8; // incorrect
    
    fixed256x80 miFixedMas;

    enum Action {ADD, REMOVE, UPDATE}
    Action myAction = Action.ADD;

    address payable myAddress;

    function assignAddress(uint num) public {
        myAddress = payable(msg.sender);
        myAddress.balance;
        // myAddress.transfer(10);
    }

    uint [] intArr = [1, 2, 3];
    // // int [] intArr = [1, 2, 3]; can't create arr with type int

    function arrFunc() public {
        intArr.push(1);
        intArr.length;
        // uint num = intArr[0];
    }

    uint[10] myFixedArr;

    struct Account {
        uint balance;
        uint dailyLimit;
    }

    Account myAccount;

    function structFunc() public {
        myAccount.balance = 100;
    }

    mapping (address => Account) _accounts;

    function mappingFunc() public payable{
        _accounts[msg.sender].balance += msg.value;
    }

    function getBalance() public payable returns(uint){
        return _accounts[msg.sender].balance;
    }

}