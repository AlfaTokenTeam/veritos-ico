pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Veritos is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Veritos(address _owner)  UpgradeableToken(_owner) {
    name = "Veritos";
    symbol = "VRT";
    totalSupply = 10000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}