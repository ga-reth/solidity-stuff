// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract SimpleStorage {
    // state variable that stores a number
    uint public num;

    // txn are required to write to state variables
    function set(uint _num) public {
        num = _num;
        console.log("num updated to %s", _num);
    }

    // read without txns
    function get() public view returns (uint) {
        return num;
    }

}