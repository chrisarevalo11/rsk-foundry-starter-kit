// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/**
 * This file was generated with Openzeppelin Wizard and later modified.
 * GO TO: https://wizard.openzeppelin.com/#erc20
 */
contract MockERC20 is ERC20, ERC20Burnable, Ownable {
  constructor(
    string memory name,
    string memory symbol,
    address initialOwner
  ) ERC20(name, symbol) Ownable(initialOwner) {}

  function mint(address to, uint256 amount) external onlyOwner {
    _mint(to, amount);
  }
}
