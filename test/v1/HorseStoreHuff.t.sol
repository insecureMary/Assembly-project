// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {BaseTestV1, IHorseStore} from "./BaseTestV1.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract HorseStoreHuff is BaseTestV1 {
    string public constant HORSE_STORE_HUFF_LOCATION = "horsestorev1/HorseStore";

    function setUp() public override {
        /// deploying horsestore in huff
        store = IHorseStore(HuffDeployer.config().deploy(HORSE_STORE_HUFF_LOCATION));
    }
}
