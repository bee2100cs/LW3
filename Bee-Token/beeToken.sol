// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.19;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// Specify a new contract and make it an ERC20 instance
contract beeToken is ERC20 {
    // Extend the ERC20 standard contract imported from OpenZeppelin
    // This constructor function avails all the functions and logic built intoERC20 to use by our contract
    // In OOP principles, this is a class extending another class
    // The constructor function is called when the smart contract is fisrt deployed
    // It takes two arguments from the user specifying thename an symbol of cryptocurrency
    // eg name = Ethereum, symbol = ETH
    // The ERC20 bit calls the constructor on the ERC20 contract thus initializing it.
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        // _mint is An internal function with the ERC20 stadnard contract
        // it takes two arguments an address to mint to and the amount of tokens to mint
        // msg.sender is a global variable of the transaction address injected by EVM
        // 10 * 10 **18 specifies you want 10 full tokens to be minted to youe address
        
        _mint(msg.sender, 10 * 10 ** 18);
    }
}