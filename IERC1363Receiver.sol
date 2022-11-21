pragma solidity ^0.8.0;


interface IERC1363Receiver {
    function onTransferReceived(
        address operator,
        address sender,
        uint256 amount,
        bytes calldata data
    ) external returns (bytes4);
}
