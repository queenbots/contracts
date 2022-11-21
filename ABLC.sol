pragma solidity ^0.8.0;

contract ABLC is ERC20Decimals, ERC20Mintable, ERC20Burnable, ERC1363, TokenRecover {
     using SafeMath for uint256;
    constructor(
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        uint256 initialBalance_,
        address tokenOwner
    ) payable ERC20(name_, symbol_) ERC20Decimals(decimals_)  {
        _owner  = tokenOwner;
        _mint(tokenOwner, initialBalance_*10**uint256(decimals_));
        
    }

       //admin functions
            function addUserToBlacklist(address account) external onlyOwner {
                require(!_isBlackListedBot[account], "Account is already blacklisted");
                _isBlackListedBot[account] = true;

                emit botAddedToBlacklist(account);
            }

            function removeUserFromBlacklist(address account) external onlyOwner {
                require(_isBlackListedBot[account], "Account is not blacklisted");
                _isBlackListedBot[account] = false;
                emit botRemovedFromBlacklist(account);
            }
            
    function decimals() public view virtual override(ERC20, ERC20Decimals) returns (uint8) {
        return super.decimals();
    }

    function _mint(address account, uint256 amount) internal override onlyOwner{
        super._mint(account, amount);
    }

    function _finishMinting() internal override onlyOwner{
        super._finishMinting();
    }
}
