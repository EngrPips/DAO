//SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.18;

import {Ownable} from "@openzeppelin-contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_number;

    event NumberChanged(uint256 number);

    function storeNewNumber(uint256 _newNumber) public onlyOwner {
        s_number = _newNumber;

        emit NumberChanged(_newNumber);
    }

    function readNumber() public view returns (uint256) {
        return s_number;
    }
}
