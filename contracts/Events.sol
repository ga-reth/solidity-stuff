// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Event {
    // event dec
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "HALLO WUURLD =]");
        emit Log(msg.sender, "HALLO EVM =]");
        emit AnotherLog();
    }
}