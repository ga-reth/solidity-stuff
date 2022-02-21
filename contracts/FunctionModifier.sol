// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract FunctionModifier {
    address public owner;
    uint public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    // check caller is owner of contract
    modifier onlyOwner() {
        require(msg.sender == owner, "not owner!!");
        _;
    }

    // check address passed is not the zero address
    modifier validAddress(address _addr) {
        require(_addr != address(0), "not a valid address");
        _;
    }

    // call modififers before function call
    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    // prevent function from being called while executing
    // guards against reentrancy hacks
    modifier noReentrancy() {
        require(!locked, "no reentrancy");

        locked = true;
        _;
        locked = false;
    }

    // will raise due to require func in noReentrancy =] 
    function dec(uint i) public noReentrancy {
        x -= i;
        if(i>1) {
            dec(i-1);
        }
    }
}