//SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import "@openzeppelin/contracts/utils/Address.sol";

contract MergeSplitter {
  using Address for address payable;

  constructor() {}

  function splitTransfer(
    address to
  ) external payable {
    if (block.difficulty == 0) {
        payable(msg.sender).sendValue(msg.value);
    } else {
        payable(to).sendValue(msg.value);
    }
  }

  fallback() external {}
}
