// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract HorseStore {
    uint256 numberOfHorses;

    function updateHorseNumber(uint256 newNumberOfHorses) external {
        numberOfHorses = newNumberOfHorses;
        //0xcdfead2e
    }

    function readNumberOfHorses() external view returns (uint256) {
        return numberOfHorses;
        //0xe026c017
    }
}
