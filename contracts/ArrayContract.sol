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

    uint[] newData;

    function getData() public returns(uint[] memory){
        data = [40,50,60,70]; // inline

        return data;
    }

    function getNewData() public returns(uint[] memory){
        newData = new uint[](3);// mengisi nilai array 
        newData[0] = 129;
        newData[1] = 111; 
        newData[2] = 111; 

        return (newData);
    }
}

contract ArrayLength{
    uint[7] data;

    function arrayExample() public payable returns(uint[7] memory){
        data = [uint(10),20,30,40,50,60,70];

        return data;
    }

    function getArrayLength()public view returns(uint){
        return (data.length);
    }
}

contract PushArray{
    uint[] data;

    function insertData() public returns(uint[] memory){
        data = [1,2,3];

        // menambahkan data baru kedalam array
        data.push(4);
        data.push(45);

        return data;
    }
}

contract PopArray{
     uint[] data;

    function deleteLastData() public returns(uint[] memory){
        data = [1,2,3];

        // menambahkan data baru kedalam array
        data.pop();
        data.pop();

        return data;
    }
}