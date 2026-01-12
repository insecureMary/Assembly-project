// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

interface IHorseStore {
    function updateHorseNumber(uint256 newNumberOfHorses) external;
    function readNumberOfHorses() external view returns (uint256);
}
