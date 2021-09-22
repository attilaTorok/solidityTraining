// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    
    SimpleStorage[] public simpleStorages;
    
    function createSimpleContract() public {
        simpleStorages.push(new SimpleStorage());
    }
    
    function sfStore(uint256 _storageIndex, uint256 _favouriteNumber) public {
        simpleStorages[_storageIndex].store(_favouriteNumber);
    }
    
    function sfGet(uint256 _storageIndex) public view returns(uint256) {
        return simpleStorages[_storageIndex].retrieve();
    }
    
}