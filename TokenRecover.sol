pragma solidity ^0.8.0;

contract TokenRecover is Ownable {
   
    function recoverERC20(address tokenAddress, uint256 tokenAmount) public virtual onlyOwner {
        BEP20(tokenAddress).transfer(owner(), tokenAmount);
    }
}
