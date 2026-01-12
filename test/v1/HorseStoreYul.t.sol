// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {BaseTestV1, IHorseStore} from "./BaseTestV1.t.sol";
import {HorseStoreYul} from "../../src/horsestorev1/HorseStoreYul.sol";

contract HorseStoreYulTest is BaseTestV1 {
    function setUp() public override {
        store = IHorseStore(address(new HorseStoreYul()));
    }
}
