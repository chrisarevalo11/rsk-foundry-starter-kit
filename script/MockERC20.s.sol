// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {MockERC20} from "../src/MockERC20.sol";

contract MockERC20Script is Script {
  function setUp() public {}

  function run() public {
    uint privateKey = vm.envUint("PRIVATE_KEY");
    address account = vm.addr(privateKey);

    vm.startBroadcast(privateKey);

    MockERC20 token = new MockERC20("RSKToken", "RSK", account);

    token.mint(account, 500);

    vm.stopBroadcast();
  }
}
