// "SPDX-License-Identifier: UNLICENSED"

/*
    EVENTS
    https://ethereum.org/en/developers/tutorials/logging-events-smart-contracts/

    In Solidity, events are dispatched signals the smart contracts can fire. 
    Dapps, or anything connected to Ethereum JSON-RPC API, can listen to these events and act 
    accordingly. An event can also be indexed so that the event history is searchable later.

    The most common event on the Ethereum blockchain at the time of writing this article is 
    the Transfer event that is emitted by ERC20 tokens when someone transfers tokens.

*/

pragma solidity >=0.7.0 <0.9.0;

contract Counter {

    event ValueChanged(uint oldValue, uint256 newValue);

    // Private variable of type unsigned int to keep the number of counts
    uint256 private count = 0;

    // Function that increments our counter
    function increment() public {
        count += 1;
        emit ValueChanged(count - 1, count);
    }

    // Getter to get the count value
    function getCount() public view returns (uint256) {
        return count;
    }

}

/*
    If we now deploy the contract and call the increment function, 
    we’ll see that Remix will automatically display it if you click on the new transaction 
    inside an array named logs.
*/
