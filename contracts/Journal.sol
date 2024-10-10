// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";

/**
 * List of contracts
 *
 * Paper Proxy Contract
 * - this needs to define the interface for the parent Paper Contract(s)
 * - properties:
 * - methods:
 *
 *
 * - Mint Contract, mints instances of a journal, needs
 * - properties:
 *    - owner: address
 *    - mapping: address => Journal[] private journals
 *    -
 * - methods:
 *    - onlyOwner: modifier
 *    - constructor: sets the owner to the sender
 *    - mint: mints an instance of a journal
 * - Journal Contract
 * - defines Journal struct
 * - properties:
 *   - owner: address
 * - methods:
 *   - onlyOwner: modifier
 *   - constructor: sets the owner to the sender
 *   - mint: mints an instance of a journal
 *   - ...
 * - mints instances of entries
 * - Entry Contract
 * - defines Entry struct
 * - properties:
 *    - title: string,
 *    - content: string,
 *    - timestamp: uint256
 *    - other properties?
 * -
 */

contract Journal {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
}
