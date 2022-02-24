// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }   
}

contract B is A {
    // override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";        
    }
}
contract C is A {
    // override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";        
    }
}

// multi inheritance is supported
// parents searched from right to left
contract D is B, C {
    //d.foo() returns "C" - right to left
    function foo() public pure override(B,C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    //d.foo() returns "B" - right to left
    function foo() public pure override(B,C) returns (string memory) {
        return super.foo();
    }
}

// inheritance ordered 'most base-like' to 'most derived'
// swapping will throw compilation error
contract F is A, B {
    function foo() public pure override(A,B) returns (string memory) {
        return super.foo();
    }    
}