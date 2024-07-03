// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {MockERC20} from "../src/MockERC20.sol";

error Unauthorized();

contract MockERC20Test is Test {
  MockERC20 public token;
  address public owner = address(0x1);
  address public recipient = address(0x2);

  function setUp() public {
    token = new MockERC20("RSKToken", "RSK", owner);
  }

  function testName() external view {
    assertEq("RSKToken", token.name());
  }

  function testSymbol() external view {
    assertEq("RSK", token.symbol());
  }

  function testInitialOwner() public view {
    assertEq(token.owner(), owner);
  }

  function testMint() public {
    vm.prank(owner);
    token.mint(recipient, 500);
    assertEq(token.totalSupply(), token.balanceOf(recipient));
  }
}
