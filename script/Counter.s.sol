// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
  function setUp() public {}

  function run() public {
    vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

    new Counter();

    vm.stopBroadcast();
  }
}
