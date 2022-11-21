pragma solidity ^0.8.0;

interface IERC1363 is BEP20, IERC165 {

    function transferAndCall(address recipient, uint256 amount) external returns (bool);

    function transferAndCall(
        address recipient,
        uint256 amount,
        bytes calldata data
    ) external returns (bool);

    function transferFromAndCall(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);


    function transferFromAndCall(
        address sender,
        address recipient,
        uint256 amount,
        bytes calldata data
    ) external returns (bool);

    function approveAndCall(address spender, uint256 amount) external returns (bool);

    function approveAndCall(
        address spender,
        uint256 amount,
        bytes calldata data
    ) external returns (bool);
}
