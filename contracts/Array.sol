// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

// !! need to pop to reduce arr size !! //

contract Array {
    // init arr
    uint[] public arr;
    uint[] public arr2 = [1,2,3];
    // fixed size, all init to 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // solidity can return entire arr 
    // but avoid as arrs can be infinite length
    function getArr() public view returns(uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // append
        arr.push(i);
    }

    function pop() public {
        // remove last ele
        // decrease size by 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // delete doesn't change arr len
        // resets val at index to default value
        delete arr[index];
    }

    // function examples() external {
    //     // create array in memory, only fixed size can be created
    //     uint[] memory a = new uint[](5);
    // }

}

