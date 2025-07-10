// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.4; // versi 0.6.0 ke atas sampai 0.8.3 

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
