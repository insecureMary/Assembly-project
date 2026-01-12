object "HorseStoreYul" {
    code {
        //contract deployment setup
        datacopy(0, dataoffset("runtime"), datasize("runtime"))
        return (0, datasize("runtime"))
    }
    object "runtime" {
        code{
            //function dispatcher
            switch selector()
            
            //updatehorsenumber
            case 0xcdfead2e{
                storeNumber(decodeAsUint(0))
            }

            //read horse numer
            case 0xe026c017{
                returnUint(readNumber())
            }

            //If the given function selector doesnt match what we have, we revert
            default {
                revert(0,0)
            }

            function storeNumber(newNumber){
                sstore(0, newNumber)
            }

            function readNumber () -> storedNumber{
                storedNumber := sload(0)
            }

            //Decoding functions
            function selector() -> s {
                s := div(calldataload(0), 0x100000000000000000000000000000000000000000000000000000000)
            }

            function decodeAsUint(offset) -> v {
                let positionInCalldata := add(4, mul(offset, 0x20))
                if lt(calldatasize(), add(positionInCalldata, 0x20)) {
                    revert(0,0)
                    v := calldataload(positionInCalldata)
                }
            }

            function returnUint(v) {
                mstore(0, v)
                return(0, 0x20)
            }
        }
    }
}
// runtime code 5ff3fe5f3560e01c8063cdfead2e1460245763e026c01714601b575f80fd5b5f545f5260205ff35b602436106030575f8055005b5f80fd