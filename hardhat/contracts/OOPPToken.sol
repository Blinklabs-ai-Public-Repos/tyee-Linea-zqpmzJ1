// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Importing OpenZeppelin's ERC20 implementation
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Token contract for OOPP
contract OOPPToken is ERC20, Ownable {
    
    // Initializing the constructor with token name and symbol
    constructor(uint256 initialSupply) ERC20("OOPP", "OOPP") {
        // Mint the initial supply to the contract deployer
        _mint(msg.sender, initialSupply);
    }

    // Function to mint new tokens, only callable by the owner
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    // Function to burn tokens, only callable by the owner
    function burn(address from, uint256 amount) external onlyOwner {
        _burn(from, amount);
    }
}