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

contract Locations{
    // uint stateVar = 11; //storagr

    // function thisFunction() public returns(uint){
    //     uint localVar = 20; // memory
    //     localVar = stateVar;
    //     stateVar = 44;

    //     return localVar;
    // }

    function thisFunction() public pure returns(uint[] memory, uint[] memory){
        // menyediakan array sepanjang 3 data
        uint[] memory localMemory1 = new uint[](3); //jika menggunakan reference type, mendefinisikan memory secara eksplisit 

        localMemory1[0] = 21;
        localMemory1[1] = 22;
        localMemory1[2] = 23;

        uint[] memory localMemory2 = localMemory1; // 21,22,23
        localMemory1[0] = 33; // setelah dilakukan perubahan data di sini maka semua nilai termasuk localMemory2 juga ikut tersalin

        // 33,22,23
        return(localMemory1, localMemory2);
    }
}
