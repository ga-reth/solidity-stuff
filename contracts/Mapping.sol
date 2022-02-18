// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Mapping {
    mapping(address => uint) public myMap;

    function get() public view returns (uint) {
        //mapping always returns val
        //default val used if not set
        return myMap[msg.sender];
    }

    function set(uint _i) public {
        // update val at addr
        myMap[msg.sender] = _i;
    }

    function remove() public {
        delete myMap[msg.sender];
    }
}

contract NestedMapping {
    mapping(address => mapping(uint => bool)) public nested;

    function get(uint _i) public view returns (bool) {
        // again get vals despite no init
        return nested[msg.sender][_i];
    }

    function set(uint _i, bool _boo) public {
        nested[msg.sender][_i] = _boo;
    }

    function remove(uint _i) public {
        delete nested[msg.sender][_i];
    }

}