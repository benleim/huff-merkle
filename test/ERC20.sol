// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestERC20 is ERC20 {
    constructor() ERC20("Test", "TEST") {
        this;
        _mint(msg.sender, 1_000_000 wei);
    }
}