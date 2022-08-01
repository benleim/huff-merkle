// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract SimpleStoreTest is Test {
    address constant token = address(0x420);
    bytes32 constant merkleRoot = bytes32(uint256(0x520));

    /// @dev Address of the SimpleStore contract.  
    MerkleDistributor public merkleDistributor;

    /// @dev Setup the testing environment.
    function setUp() public {
        address mdAddr = HuffDeployer
            .config()
            .with_args(bytes.concat(abi.encode(token), abi.encode(merkleRoot)))
            .deploy("MerkleDistributor");
        merkleDistributor = MerkleDistributor(mdAddr);

        assert(merkleDistributor.getTokenAddress() == token);
        assert(merkleDistributor.getMerkleRoot() == merkleRoot);
    }

    /// @dev Ensure constructor works properly
    function test() public {
        console.log("Test1");
    }

    /// @dev Ensure constructor works properly
    function testSetClaimed() public {
        merkleDistributor.setClaimed(1);
    }
}

interface MerkleDistributor {
    function getMerkleRoot() external view returns (bytes32);
    function getTokenAddress() external view returns (address);
    function setClaimed(uint256) external;
}
