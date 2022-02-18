// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Gas {
    uint public i = 0;

    // exceeding gas limit fails txn
    // state changes undone
    // gas spent not refunded
    function forever() public {
        // infinite loop
        while(true) {
            console.log("I am incrementing");
            i += 1;
        }
    } 


}