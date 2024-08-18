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

    constructor() {
        owner = payable(msg.sender);
    }

    function buyMeACoffee(
        string memory _message
        ) public payable {
          require(msg.value > 0, "value must be greater than zero");

          totalCoffe += 1;

          payable(owner).transfer(msg.value);
          emit NewCoffee(msg.sender, _message, block.timestamp);
    }

    function getTotalCoffe() public view returns (uint256) {
        return totalCoffe;
    }

    
}