// "SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 < 0.9.0;

import "./library/library.sol";
// we cant use remote library, for ex. from gitHub

contract TestLibraries {
    using IntExtended for uint;
    // using IntExtended for *;

    function testLibrary(uint _base) public pure returns (uint) {
        // we could use like this
        _base.decrement();
        _base.incrementByValue(1);
        _base.decrementByValue(1);

        // or like this
        IntExtended.increment(_base);
        IntExtended.decrementByValue(_base, 4);
        return _base.increment();
    }
}