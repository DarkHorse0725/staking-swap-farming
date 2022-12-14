pragma solidity ^0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract USCT is ERC20,Ownable {

    string private _name = "THD";
    string private _symbol = "Thunder";

    constructor() ERC20(_name, _symbol) {
        _mint(msg.sender, 1000000000 * 10**18);
    }

    function mint(address to, uint256 value)  public onlyOwner external {
        _mint(to, value);
    }

    function burn(address to, uint256 value)  public onlyOwner external {
        _burn(to, value);
    }
}