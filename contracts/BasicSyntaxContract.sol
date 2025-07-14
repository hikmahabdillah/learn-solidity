// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

contract BasicSyntaxContract {
    uint storedData; 

    // set data
    function set(uint x) public {
        storedData = x;
    }

    // menampilkan data
    function get() public view returns (uint){
        return storedData;
    }
}
