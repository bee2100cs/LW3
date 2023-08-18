// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Import the openzepplin contracts
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// NFTed is ERC721 signifies that the contract we are creating 
// imports ERC721 and follows ERC721 contract from openzeppelin

contract NFTed is ERC721 {
    constructor() ERC721("NFTed", "ITM") {
        // Minting an NFT to myself
        _mint(msg.sender, 1);
    }
}