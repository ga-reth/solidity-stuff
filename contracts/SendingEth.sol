// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ReceiveEther {
    // to receive eth, msg.data must be empty
    receive() external payable {}

    // called if msg.data not empty
    fallback() external payable {}
}

contract SendEther {
    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}