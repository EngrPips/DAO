//SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.18;

import {TimelockController} from "@openzeppelin-contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    //min delay is the minimum amount of time you need to wait before the dao result got effect
    //proposers is the list of address that can propose
    //executors is the list of addresses that can execute
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors)
        TimelockController(minDelay, proposers, executors, msg.sender)
    {}
}
