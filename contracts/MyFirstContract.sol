pragma solidity >=0.7.0 <0.9.0.0;

// "SPDX-License-Identifier: UNLICENSED"

interface Regulator {
    // in interfaces you have to use only external access modifier
    // function checkValue(uint _amount) internal view returns (bool);
    function loan() external view returns (bool);
}

contract Bank is Regulator {
    uint256 internal value;
    address private owner;
    
    event ValueChanged(uint oldValue, uint256 newValue);

    modifier ownerFunc() {
        require(owner == msg.sender);
        _;
    }

    constructor(uint256 _amount) {
        value = _amount;
        owner = msg.sender;
    }

    function deposit(uint256 _amount) public ownerFunc {
        value += _amount;
        emit ValueChanged(value - _amount, value);
    }

    function withdraw(uint256 _amount) public ownerFunc {
        if (checkValue(_amount)) {
            value -= _amount;
        }
    }

    function balance() public view returns (uint256) {
        return value;
    }

    function checkValue(uint256 _amount) internal view returns (bool) {
        return value >= _amount;
    }

    // don't forget about ovveride when you ovveride a method.
    function loan() external view override returns (bool) {
        return value > 0;
    }
}

contract MyFirstContract is Bank(10) {
    string private name;
    uint256 private age;

    function setName(string memory _newName) public {
        name = _newName;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function setAge(uint256 _newAge) public {
        age = _newAge;
    }

    function getAge() public view returns (uint256) {
        return age;
    }
}
