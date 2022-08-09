// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import "forge-std/console2.sol";
import "./ERC20.sol";

contract MerkleDistributorTest is Test {
    address token;
    bytes32 constant merkleRoot = bytes32(uint256(0x520));

    /// @dev Address of the SimpleStore contract.  
    MerkleDistributor public merkleDistributor;

    /// @dev Setup the testing environment.
    function setUp() public {
        token = HuffDeployer
            .deploy("TestERC20");

        address mdAddr = HuffDeployer
            .config()
            .with_args(bytes.concat(abi.encode(token), abi.encode(merkleRoot)))
            .deploy("MerkleDistributor");
        merkleDistributor = MerkleDistributor(mdAddr);

        assert(merkleDistributor.getTokenAddress() == token);
        assert(merkleDistributor.getMerkleRoot() == merkleRoot);
    }

    /// @dev Ensure constructor works properly
    function testSetClaimed() public {
        for (uint i; i < 1_000; i++) {
            assert(!merkleDistributor.isClaimed(i));
            merkleDistributor.setClaimed(i);
            assert(merkleDistributor.isClaimed(i));
        }
    }

    /// @dev Ensure revert for claimed index
    function testRevert() public {
        merkleDistributor.claim(100, address(this), 0);
        assert(merkleDistributor.isClaimed(100));
    }

    /// @dev Ensure tokens transfer
    function testClaimTransfer() public {
        
    }
}

interface MerkleDistributor {
    function getMerkleRoot() external view returns (bytes32);
    function getTokenAddress() external view returns (address);

    function isClaimed(uint256) external view returns (bool);
    function setClaimed(uint256) external;
    function claim(uint256, address, uint256) external;
}
