// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

contract ArrayContract{
    // Array
    uint[5] arrayData; // state variable public n permanent

    // fixed array, bisa digunakan untuk merubaha nilai state
    function getDataArray() public returns(uint){
        arrayData = [uint(10),20,30,40,50]; // mendefinisikan tipe data di depan saja

        return (arrayData[0]);
    }
}

contract DynamicArray{
    // inline and keyword new

    uint[] data;

    function getNewData() public returns(uint[] memory){
        data = [40,50,60,70]; // inline

        return data;
    }
}