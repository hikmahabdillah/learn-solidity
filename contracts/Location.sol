// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0; // versi 0.6.0 ke atas

// lokasi data
// menentukan dimana nilai variable tersimpan
// gas tergantung pada lokasi data yang digunakan pada smart contract
// smart contract yang baik adalah smart contract yang minimum gas fee nya

// 4 jenis lokasi data
// storage(lokasi yang sifatnya permanent, bisa diakses disemua function yang ada di smart contract) gas fee besar
// memory(hanya bisa diakses di dalam function itu sendiri, menyimpan data secara sementara) gas fee cenderung lebih murah 
// calldata(tidak bisa dimodifikasi dan sifatnya constant, lokasi default parameter)
// stack(data yang tidak persistent yang dikelola oleh vm ethereum langsung, untuk membuat variable selama adanya eksekusi)

contract DataLocation{
    // storage
    uint stateStorage;

// tersimpan di memory(sementara)
    function calculation(uint a, uint b) public pure returns(uint result){
        return a + b;
    }
}

contract Location{
    // storage
    bool isReady;

    function thisFunction() public pure {
        // values (local variable) di memory
        bool isOkay;
        uint num;
        address account;
    }

}

