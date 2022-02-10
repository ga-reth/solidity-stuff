// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Hello {

    uint256 totalGreetings;

    function greet(string memory _message) public {
        console.log("%s has greeted us w/ message %s", msg.sender, _message);
        totalGreetings += 1;
    }

}