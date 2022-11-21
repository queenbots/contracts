pragma solidity ^0.8.0;


interface BEP20Metadata is BEP20 {

    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);
}
