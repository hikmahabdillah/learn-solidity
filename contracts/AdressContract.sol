// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

contract AddressContract{
    // address digunakan mengirimkan ether dari satu akun ke akun yang lain
    // address seperti no rek
    // smart contract memiliki address 

    // dalam solidity, address terdapat 2 tipe(regular address dan payable address)
    // address menyimpan panjang nilai 20byte
    // address payable
    // send dan transfer ether

// cara pertama
    // address public caller;

    // function for get address data
    // function getCallerAddress() public returns(address){
    //     caller = msg.sender; // address of sender (built in solidity)

    //     return caller;
    // }
    
// cara kedua (address dari pengirim atau akun yang dideploy ke smart contract)
    // function getCallerAddress() public view returns(address caller){
    //     caller = msg.sender;
    // }

// cara ketiga(mencari address dari smart contract)
    function getCallerAddress() public view returns (address){
        address myAddress = address(this);
        return myAddress;
    }

// PAYABLE ADDRESS
// address yang bisa digunakan untuk transaksi 
    // function untuk menerima saldo ether
    uint receivedAmount;

    function receivedEther() payable public{
        receivedAmount = msg.value;
    }

    // address payable 
    function transferFund(address payable _address, uint nominal) public{
        _address.transfer(nominal); // akan mencari tahu aaddress yang akan ditransfer dengan nominal yang dibutuhkan
    }

    // menghindari kesalahan misal saldonya kurang dsb
    function sendFund(address payable _address, uint nominal) public returns(bool){
        _address.send(nominal);
    }
}