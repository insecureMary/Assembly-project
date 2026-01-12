// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {HorseStore} from "../../src/horsestorev1/HorseStore.sol";
import {Test} from "forge-std/Test.sol";
import {IHorseStore} from "../../src/horsestorev1/IHorseStore.sol";

abstract contract BaseTestV1 is Test {
    //HorseStore public store;
    IHorseStore public store;
    // bytes yulCode = 5ff3fe5f3560e01c8063cdfead2e1460245763e026c01714601b575f80fd5b5f545f5260205ff35b602436106030575f8055005b5f80fd

    function setUp() public virtual {
        store = IHorseStore(address(new HorseStore()));
    }

    function testReadValue() public view {
        uint256 initValue = store.readNumberOfHorses();
        assert(initValue == 0);
    }

    function testWriteValue(uint256 newHorseNumber) public {
        store.updateHorseNumber(newHorseNumber);
        assertEq(store.readNumberOfHorses(), newHorseNumber);
    }
}
