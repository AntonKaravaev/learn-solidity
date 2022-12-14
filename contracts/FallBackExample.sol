// "SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 <0.9.0;

/*
    only one fallback function is allowed
*/
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
