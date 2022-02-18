// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract DataLocations {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct{
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public {
        _f(arr, myStructs[1]);
    }

    function _f(uint[] storage _arr, MyStruct storage _myStruct) internal {
        //do something
    }
}