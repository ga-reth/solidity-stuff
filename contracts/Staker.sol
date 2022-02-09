//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Staker {
    mapping ( address => uint256 ) public balances;
    uint256 public constant threshold = 1 ether;
    
    event NewStake(address from, uint amount);

    // what does the payable keyword indicate?
    function stake() public payable {}

    function withdraw() public {}
    
    // what is this receive special function?
    // why does it need to be external and payable?
    receive() external payable {}
    
    function timeLeft() public {}
    
}
