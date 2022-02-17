// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint public count;
    
    // get count
    function get() public view returns (uint) {
        return count;
    }

    // increment count
    function inc() public {
        count += 1;
    }

    // decrement count
    function dec() public {
        count -= 1;
    }
}