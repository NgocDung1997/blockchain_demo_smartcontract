pragma solidity >=0.7.0 <0.9.0;
contract SecondCoin {
    address public miniter; //Người tạo - Address giải thích kĩ hơn sau
    mapping (address => uint) public balances;
    constructor(){
        miniter = msg.sender; // Người gửi -  Gỉai thích kĩ hơn sau
    }
    event sent(address from, address to, uint amount);

    //Chức năng tạo ra lượng coin
    function mint(address receiver, uint amount)public {
        require(msg.sender == miniter ); // Yêu cầu phải là người tạo
        require(amount < 1e60);
        balances[receiver]+= amount;
    }
    //Chức năng chuyển tiền
    function send(address receiver ,  uint amount) public{
        require(amount<= balances[msg.sender],"Khong du tien");
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit sent(msg.sender,receiver,amount);
    }
}