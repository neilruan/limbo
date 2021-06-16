// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
import "../ERC677/ERC677.sol";
import "../facades/BehodlerLike.sol";

contract MockBehodler is ERC677 {
    address addTokenPower;

    function mint(uint256 amount) public {
        require(
            msg.sender == addTokenPower,
            "Only Mock Power can mint on Mock Behodler."
        );
        _mint(msg.sender, amount);
    }

    constructor(
        string memory name,
        string memory symbol,
        address _addTokenPower
    ) ERC677(name, symbol) {
        _mint(msg.sender, 100 ether);
        addTokenPower = _addTokenPower;
    }
    
    address MickyMouseToken = 0xAa645185F79506175917Ae2Fdd3128E4711D4065;

    function config()
        public
        view
        returns (
            uint256 transferFee,
            uint256 burnFee,
            address feeDestination
        )
    {
        transferFee = 15;
        burnFee = 5;
        feeDestination = MickyMouseToken;
    }
}
