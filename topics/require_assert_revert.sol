// "SPDX-License-Identifier: UNLICENSED"

/*
    Solidity provides various functions for error handling. Generally when an error occurs, 
    the state is reverted back to its original state. Other checks are to prevent unauthorized code access. 
    Following are some of the important methods used in error handling:

    assert(bool condition) − In case condition is not met, this method call causes an invalid opcode 
        and any changes done to state got reverted. This method is to be used for internal errors.

    require(bool condition) − In case condition is not met, this method call reverts to original state. 
        - This method is to be used for errors in inputs or external components.

    require(bool condition, string memory message) 
        − In case condition is not met, this method call reverts to original state. 
        - This method is to be used for errors in inputs or external components. 
        It provides an option to provide a custom message.

    revert()
        − This method aborts the execution and revert any changes done to the state.

    revert(string memory reason) 
        − This method aborts the execution and revert any changes done to the state. 
        It provides an option to provide a custom message.
*/


pragma solidity >=0.7.0 <0.9.0;

contract ErrorEx {
    function testRequire (uint _i) public pure {
        require (_i < 10, "_i > 10");
    }

    function testRevert(uint _i) public pure {
        if (_i < 10) {
            if (_i == 1) {
                revert("_i == 1");
            }
        }
    }

    uint public num = 100;

    function toAsser() public view {
        assert(num == 100);
    }

    error MyError(address caller, uint _i);
    
    function customError(uint _i) public view {
        if (_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
    
}