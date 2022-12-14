// "SPDX-License-Identifier: UNLICENSED"

/*
    Fallback function is a special function available to a contract. It has following features −

    It is called when a non-existent function is called on the contract.
    ---> It is required to be marked external.
    ---> It has no name.
    ---> It has no arguments
    ---> It can not return any thing.
    ---> It can be defined one per contract.
    ---> If not marked payable, it will throw exception if contract receives plain ether without data.
    Following example shows the concept of a fallback function per contract.


    Use 
    1) to resieve ether
    2) when we call a non-existent function 

    if you want that someone send ether to your fallback function, you need to use --> payable,
    and the opposite not to use this word if you don't want someone sends you ether 
*/

pragma solidity >=0.7.0 <0.9.0;

contract Test {
    uint256 public x;

    //It works in previous version of solidity
    // function() external {
    //     x = 1;
    // }
}

contract FallBackEx {
    event SenderLogger(address);
    event ValueLogger(uint256);
    address private owner;

    fallback() external payable isOwner validValue{
        emit SenderLogger(msg.sender);
        emit ValueLogger(msg.value);
    }

    // fallback () external {

    // }

    receive() external payable {}

    modifier isOwner {
        require(owner == msg.sender);
        _;
    }

    modifier validValue {
        assert(msg.value >= 1 ether);
        _;
    }

    function Transaction() public {
        owner = msg.sender;
    }
}

