// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract MyContract {
    struct Coffee {
        address sender;
        string message;
        uint256 timestamp;
    }

    uint256 totalCoffe;
    address payable owner;

    event NewCoffee(address indexed sender, string message, uint256 timestamp);
    constructor() {}
}