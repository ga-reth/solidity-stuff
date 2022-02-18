// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Variables {
    
    // state variables
    string public text = "hello";
    uint public num = 123;

    // function xyz() public {
    //     // local vars not saved on chain
    //     uint i = 456;

    //     // globals accessed inside a function
    //     uint timestamp = block.timestamp;
    //     address sender = msg.sender;
    // }

}