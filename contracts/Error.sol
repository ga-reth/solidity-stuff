// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Error {
    function testRequire(uint _i) public pure {
        // require valudates:
        // inputs
        // conditions before execution
        // return values from calls to other funcs
        require(_i < 10, 'Input must be => 10');
    }

    function testRevert(uint _i) public pure {
        // revert is useful when condition check is complex
        if (_i <= 10) {
            revert("Input must be > 10");
        }
    }

    uint public num;

    function testAssert() public view {
        // assert should only be used for internal errors
        assert(num==0);
    }

    //custom errors
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function customError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}