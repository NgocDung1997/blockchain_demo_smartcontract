pragma solidity >=0.7.0 <0.9.0;

///khai báo trình biên dịch version 0.7.0 < x < 0.9.0

contract firstContract{
    uint saveData; ///uint : Một số không âm
    ///Nhập dữ liệu
    function set(uint x) public{
        saveData = x;
    }
    ///Lấy giá trị
    function get() public view returns(uint x){
        return saveData;
    }
}